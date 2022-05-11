package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model; 
import org.springframework.util.FileCopyUtils;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.webapp.dto.interior.InteriorDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.service.InteriorService;
import com.mycompany.webapp.service.ProductService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Resource // 인테리어 서비스 
	private InteriorService interiorService;
	
	@Resource //장비 서비스
	private ProductService productService;

	@RequestMapping("/")
	public String home(Model model) {
		logger.info("실행");
		List<InteriorDto> homeInteriorList = interiorService.interiorBestList();
		model.addAttribute("homeInteriorList", homeInteriorList);
		
		List<ProductDto> homeProductList=productService.selectbestlist();
		model.addAttribute("homeProductList", homeProductList);
		return "home";//view 이름만 전달
	}
	
	@GetMapping("/mainHome/productDisplay")
	public ResponseEntity<byte[]> getImage22(String fileName) {
		// log.info(" getImage()..........");
		File file = new File("C:\\Temp\\product\\" + fileName);
		ResponseEntity<byte[]> result = null;

		try {

			HttpHeaders header = new HttpHeaders();
			header.add("Content-type", Files.probeContentType(file.toPath()));// 대상 파일의 MIME TYPE을 부여
			// 대상 이미지 파일, header 객체, 상태 코드를 인자 값으로 부여한 생성자를 통해 ResponseEntity 객체를 생성하여 앞서
			// 선언한 ResponseEntity 참조 변수에 대입
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			// 대상 파일을 복사하여 Byte 배열로 반환해주는 클래스

		} catch (IOException e) {
			/*e.printStackTrace();*/
		}
		return result;
	}
	

	@GetMapping("/")
	public String reLogin(String reLogin, Model model) {
		logger.info("실행");
		logger.info(reLogin);
		if(reLogin != null) {
			logger.info("!!!!!!!!!!!!!!!");
			model.addAttribute("errorMSG", "로그인을 해주세요.");
			return "home";
		} else {
			logger.info("????????????????");
			return "home";//view 이름만 전달
		}
		
	}
	
}
