package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.print.attribute.HashAttributeSet;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.mycompany.webapp.dao.mybatis.ConsultDao;
import com.mycompany.webapp.dao.mybatis.ProductConsultDao;
import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.interior.ConsultDetailDto;
import com.mycompany.webapp.dto.interior.ConsultRemodelingDto;
import com.mycompany.webapp.dto.interior.MainConsultDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.exception.ConsultExceptionHandler;
import com.mycompany.webapp.service.ConsultService;
import com.mycompany.webapp.service.ConsultService.ConsultResult;
import com.mycompany.webapp.service.ProductService;

import lombok.extern.log4j.Log4j2;
import oracle.net.aso.h;
 
@Controller
@RequestMapping("/interior_consult")
@Log4j2
@SessionAttributes("mainConsult")
public class InteriorConsultController {
	

	@Resource // 상담 서비스 객체
	private ConsultService consultService;
	 
	@Resource //장비 서비스 객체 
	private ProductService productService;
	
	//새로운 새션 저장소 객체 생성
	@ModelAttribute("mainConsult")
	public MainConsultDto getConsultForm() {
		log.info("새로운 세션 생성");
		MainConsultDto mainConsult = new MainConsultDto();
		return mainConsult;
	}
	

	// 인테리어 빠른 상담 페이지 이동
	@GetMapping("/quick_consultation")
	public String quickConsultation(Authentication authentication, Model  model) {
		
		//기본 유저 정보
		String email = authentication.getName();
		log.info("현재 로그인 유저 : " + email);
		
		if(email != null) {
			UsersDto userDto = consultService.loginUser(email);
			model.addAttribute("user", userDto);
		}
		return "/interior_consult/quick_consultation";
	}

	// 빠른 상담만 table에 저장
	@PostMapping("/quickConsultRequest")
	public String quickConsultForm(Authentication authentication,MainConsultDto mainConsultDto) {
		String email = authentication.getName();
		log.info(mainConsultDto);
		mainConsultDto.setEmail(email);

		// 기본 상담 서비스
		int consultNum = consultService.requstQuickConsult(mainConsultDto);

		if (mainConsultDto.getConsultType().equals("2")) {
			consultService.requestConsultRemodeling(mainConsultDto, consultNum);
		}

		return "redirect:/";
	}

	// 인테리어 상세 상담 페이지 이동
	@PostMapping("/detail_consultation")
	public String detailConsultaion(@ModelAttribute("mainConsult") MainConsultDto mainConsult) {
		
		log.info("상담일자 : " + mainConsult.getConsultDate());
		return "/interior_consult/detail_consultation";
	}
	
	//디테일 상담 전송
	@PostMapping("/detailConsultRequest")
	public String detailConsultRequest(Authentication authentication,
			@ModelAttribute("mainConsult") MainConsultDto mainConsult,
			ConsultDetailDto consultDetailDto, SessionStatus sessionStatus) {
		//사용자 정보 넣기
		String email = authentication.getName();
		mainConsult.setEmail(email);
		
		//종합 세부 공간 배열 스트링 처리
		log.info("디테일 상담 실행");
		String allsideList = String.join(", ", mainConsult.getAllSideRoom());
		consultDetailDto.setAllSideRoom(allsideList);
		log.info(consultDetailDto.getConsultEstimation());
		
		
		ConsultResult cr = consultService.detailConsultTrans(mainConsult, consultDetailDto);
		if(cr == ConsultResult.FAST_FAIL) {
			throw new ConsultExceptionHandler("빠른 상담 전송 실패 ");
		}else if(cr == ConsultResult.DETAIL_FAIL) {
			throw new ConsultExceptionHandler("디테일 상담 전송 실패");
		}else{
			return "redirect:/interior_consult/consult_result";
		}
		
	}
	
	//디테일 상담 완료 창 
	@GetMapping("/consult_result")
	public String consultResult() {
		return "/interior_consult/consult_result";
	}
	
	
	// 리모델링 견적 창 이동
	@GetMapping("/remodeling_price")
	public String remodelingPrice() {
		return "/interior_consult/remodeling_price";
	}
	
	
	
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName) {
		// 반환 타입 : ResponseEntity 객체를 통해 body에 byte [] 데이터를 보내 / 파라미터 : '파일 경로' + '파일
		// 이름'을 전달받아
		log.info(" getImage()..........");
		File file = new File("c:\\Temp\\product\\"+ fileName);
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


	
	

}
