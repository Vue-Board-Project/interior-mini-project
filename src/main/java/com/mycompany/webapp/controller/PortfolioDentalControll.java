package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.webapp.dto.interior.InteriorDetailDto;
import com.mycompany.webapp.dto.interior.InteriorDto;
import com.mycompany.webapp.service.InteriorDetailService;
import com.mycompany.webapp.service.InteriorService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class PortfolioDentalControll {

	@Resource // 인테리어 서비스 객체
	private InteriorService interiorService;

	@Resource
	private InteriorDetailService interiorDetailService;

	@RequestMapping("/portfolio_dental")
	public String modelDental(InteriorDto interiors, Model model) {
		log.info("실행");
		return "portfolio_dental/portfolio_dental";
	}

	@GetMapping(value = "/goPortfolioDental", produces = "application/json; charset=UTF-8")
	public String goPortfolioDental(Model model, @RequestParam(value = "sort", required = false) String sort,
			@RequestParam(value = "styleArr[]", required = false) List<String> styleArr,
			@RequestParam(value = "colorArr[]", required = false) List<String> colorArr,
			@RequestParam(value = "field", required = false) String field, HttpServletResponse response)
			throws IOException {
		log.info("interiorListDownload 실행");
		log.info(sort);
		log.info(styleArr);
		log.info(colorArr);
		log.info(field);
		Map<String, Object> param = new HashMap<>();
		param.put("sort", sort);
		param.put("istyle", styleArr);
		param.put("all_color", colorArr);
		param.put("field", field);
		log.info(param);
		
		if (sort == null) {
			log.info("null~~~~~~~~~~~~~~~~~~~");
			List<InteriorDto> interiorList = interiorService.interiorList();
			model.addAttribute("interiorList", interiorList);
			int cnt = interiorService.interiorCnt();
			model.addAttribute("cnt", cnt);
		} else {
			List<InteriorDto> paramList = interiorService.interiorFilter(param);
			JSONArray jsonArray = new JSONArray();
			for(InteriorDto s : paramList) {
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("ino",s.getIno());
				jsonObject.put("isummary",s.getIsummary());
				jsonObject.put("imImgPath",s.getImImgPath());
				jsonArray.put(jsonObject);
			}
			log.info(jsonArray);
			String json = jsonArray.toString();
			response.setContentType("application/json; charset=UTF-8");
			//출력스트림 얻어냄
			PrintWriter pw = response.getWriter();
			pw.write(json);
			pw.flush();
			pw.close();	
		}
	
		return "portfolio_dental/portfolio_dental";
	}

	@RequestMapping("/portfolioDentalDeatail3")
	public String portfolioDentalDeatail3() {
		log.info("실행");
		return "portfolio_dental/portfolio_dental_detail3";
	}

	@GetMapping("/portfolio_dental/portfolioDisplay")
	public ResponseEntity<byte[]> getImage22(String fileName) {
		// log.info(" getImage()..........");
		File file = new File("c:\\Temp\\portfolio\\" + fileName);
		ResponseEntity<byte[]> result = null;

		try {

			HttpHeaders header = new HttpHeaders();
			header.add("Content-type", Files.probeContentType(file.toPath()));// 대상 파일의 MIME TYPE을 부여
			// 대상 이미지 파일, header 객체, 상태 코드를 인자 값으로 부여한 생성자를 통해 ResponseEntity 객체를 생성하여 앞서
			// 선언한 ResponseEntity 참조 변수에 대입
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			// 대상 파일을 복사하여 Byte 배열로 반환해주는 클래스

		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

	@GetMapping("/portfolio_dental/portfolio_dental_detail")
	public String portfolioDentalDetail(@RequestParam("ino") int ino, Model model) {
		log.info("디테일 가보자고~~~~~~~~~~~~~~~~");
		log.info(ino);
		InteriorDto interiorDetail = interiorService.detailPortfolio(ino);
		model.addAttribute("interiorDetail", interiorDetail);

		List<InteriorDetailDto> interiorDList = interiorDetailService.selectPortfolio(interiorDetail.getIno());
		for (InteriorDetailDto s : interiorDList) {
			log.info("interiorDList : " + s);
		}
		model.addAttribute("interiorDList", interiorDList);

		log.info(interiorDetail.getIno());
		log.info(interiorDetail.getIstyle());
		log.info(interiorDetail.getDarea());
		List<InteriorDto> recommandStyleList = interiorService.recommendStyle(ino, interiorDetail.getIstyle());
		model.addAttribute("recommandStyleList", recommandStyleList);
		for (InteriorDto s : recommandStyleList) {
			log.info("recommandStyleList : " + s);
		}

		List<InteriorDto> recommandAreaList = interiorService.recommendArea(ino, interiorDetail.getDarea());
		model.addAttribute("recommandAreaList", recommandAreaList);
		for (InteriorDto s : recommandAreaList) {
			log.info("recommandAreaList : " + s);
		}

		interiorService.updateCnt(ino);
		return "portfolio_dental/portfolio_dental_detail3";
	}

}
