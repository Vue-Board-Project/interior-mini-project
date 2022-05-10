package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.interior.InteriorDetailDto;
import com.mycompany.webapp.dto.interior.InteriorDto;
import com.mycompany.webapp.service.InteriorDetailService;
import com.mycompany.webapp.service.InteriorService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class ModelDentalController {
	
	@Resource // 인테리어 서비스 객체
	private InteriorService interiorService;
	
	@Resource// 상세창 서비스
	private InteriorDetailService interiorDetailService;
	
	@RequestMapping("/model_dental")
	public String modelDental() {
		log.info("실행");
		return "model_dental/model_dental";
	}
	
	//ajax에서 값 받아와서 다시 넣어주기
	@RequestMapping(value = "/goModelDental", produces = "application/json; charset=UTF-8")
	public String goModelDental(Model model, @RequestParam(value = "sort", required = false) String sort,
			@RequestParam(value = "styleArr[]", required = false) List<String> styleArr,
			@RequestParam(value = "colorArr[]", required = false) List<String> colorArr,
			@RequestParam(value = "field", required = false) String field, HttpServletResponse response)
					throws IOException {
		log.info("실행");
		Map<String, Object> param = new HashMap<>();
		param.put("sort", sort);
		param.put("istyle", styleArr);
		param.put("all_color", colorArr);
		param.put("field", field);
		if (sort == null) {
			List<InteriorDto> modelList = interiorService.modelList();
			model.addAttribute("modelList", modelList);			
		} else {
			List<InteriorDto> paramList = interiorService.modelFilter(param);
			JSONArray jsonArray = new JSONArray();
			for(InteriorDto s : paramList) {
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("ino",s.getIno());
				jsonObject.put("ihits",s.getIhits());
				jsonObject.put("istyle",s.getIstyle());
				jsonObject.put("allColor",s.getAllColor());
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
		return "model_dental/model_dental";
	}
	
	//모델 상세창 가는 거 디비에서 데이터 넣어줌
	@RequestMapping("/model_dental/model_dental_detail")
	public String modelDentalDetail(@RequestParam("ino") int ino, Model model) {
		log.info("실행");
		InteriorDto interiorDetail2 = interiorService.detailPortfolio(ino);
		model.addAttribute("interiorDetail2", interiorDetail2);
		log.info(interiorDetail2);
		
		List<InteriorDetailDto> interiorDList2 = interiorDetailService.selectPortfolio(interiorDetail2.getIno());
		for (InteriorDetailDto s : interiorDList2) {
			log.info("interiorDList2 : " + s);
		}
		model.addAttribute("interiorDList2", interiorDList2);
		interiorService.updateCnt(ino);
		return "model_dental/model_dental_detail2";
	}
	
	/*@RequestMapping("/modelDentalDetail1")
	public String modelDentalDetail1() {
		log.info("실행");
		return "model_dental/model_dental_detail1";
	}*/
	
	//파일 불러오기
	@GetMapping("/model_dental/display")
	public ResponseEntity<byte[]> getImage(String fileName) throws IOException {
		// log.info(" getImage()..........");
		File file = new File("c:\\Temp\\portfolio\\" + fileName);
		ResponseEntity<byte[]> result = null;

		/*try {*/

			HttpHeaders header = new HttpHeaders();
			header.add("Content-type", Files.probeContentType(file.toPath()));// 대상 파일의 MIME TYPE을 부여
			// 대상 이미지 파일, header 객체, 상태 코드를 인자 값으로 부여한 생성자를 통해 ResponseEntity 객체를 생성하여 앞서
			// 선언한 ResponseEntity 참조 변수에 대입
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			// 대상 파일을 복사하여 Byte 배열로 반환해주는 클래스

		/*} catch (IOException e) {
			e.printStackTrace();
		}*/
		return result;
	}
}
