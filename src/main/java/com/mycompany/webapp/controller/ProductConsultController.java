package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.mycompany.webapp.dto.product.ProductConsultDetailDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.service.ConsultService;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/productConsult")//장비 상담 컨트롤러 세션 위해 구분하는 url
@SessionAttributes("productConsultForm")
@Log4j2
public class ProductConsultController {
	
	@Resource // 상담 서비스 객체
	private ConsultService consultService;
	
	
	//장비 세션을 위한 세션 생성 메소드
	@ModelAttribute("productConsultForm")
	public List<ProductConsultDetailDto> getProductConsultForm(){
		log.info("장비 상담 세션 생성");
		List<ProductConsultDetailDto> productConsultForm = new ArrayList<ProductConsultDetailDto>();
		return productConsultForm;
	}
	
	//장비 구매 상담 세션에 장비 추가 메소드 -> 아마 ajax
	@PostMapping(value = "/productSessionAdd", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String addProductConsultForm(
			@ModelAttribute("productConsultForm") List<ProductConsultDetailDto> pcdList, String mNum, String cot, Model model) {
		String result  = null;
		//추가하려는 장비가 세션에 있는지 확인
		for(ProductConsultDetailDto dto : pcdList) {
			if(dto.getModelNumber().equals(mNum)) {
				//있으면 wrong
				result = "wrong";
			}
		}
		
		//없으면 세션에 추가
		if(result == null) {
			ProductConsultDetailDto pdcDto = new ProductConsultDetailDto();
			pdcDto.setModelNumber(mNum);
			pdcDto.setCount(cot);
			pcdList.add(pdcDto);
			model.addAttribute("productConsultForm", pcdList);
			result = "success";
		}
		
		//result  전송
		JSONObject jsonobject = new JSONObject();
		jsonobject.put("result", result);
		String json = jsonobject.toString();
		return json;

			
		
	}
	
	//장비 구매 상담 창으로 이동
	@GetMapping("/product_buy_request_consult")
	public String productBuyRequestConsult(
			@ModelAttribute("productConsultForm") List<ProductConsultDetailDto> pcdList,
			Model model, Authentication authentication  ) {
		
		String email = authentication.getName(); 
		log.info(pcdList);
		//장비 상담 창에 전송해줄 모델들 
		List<ProductDto> products = new ArrayList<ProductDto>();
		if(pcdList.size() != 0) {
			for(ProductConsultDetailDto dto : pcdList) {
				ProductDto productDto = consultService.getProduct(dto.getModelNumber());
				productDto.setConsultCount(dto.getCount());
				products.add(productDto);
			}
			model.addAttribute("products", products);
			
		}
		
		
		return "/interior_consult/quipment_buy_request_consult";
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
