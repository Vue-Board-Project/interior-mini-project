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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.dao.mybatis.ConsultDao;
import com.mycompany.webapp.dao.mybatis.ProductConsultDao;
import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.interior.ConsultRemodelingDto;
import com.mycompany.webapp.dto.interior.MainConsultDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.service.ConsultService;
import com.mycompany.webapp.service.ProductService;

import lombok.extern.log4j.Log4j2;
import oracle.net.aso.h;

@Controller
@RequestMapping("/interior_consult")
@Log4j2
public class InteriorConsultController {

	@Resource // 상담 서비스 객체
	private ConsultService consultService;
	
	@Resource
	private ProductService productService;

	// 인테리어 빠른 상담 페이지 이동
	@GetMapping("/quick_consultation")
	public String quickConsultation() {
		return "/interior_consult/quick_consultation";
	}

	// 빠른 상담만 table에 저장
	@PostMapping("/quickConsultRequest")
	public String quickConsultForm(MainConsultDto mainConsultDto) {

		log.info(mainConsultDto);
		mainConsultDto.setEmail("gvhv@dgfv.sad");

		// 기본 상담 서비스
		int consultNum = consultService.requstQuickConsult(mainConsultDto);

		if (mainConsultDto.getConsultType().equals("2")) {
			consultService.requestConsultRemodeling(mainConsultDto, consultNum);
		}

		return "redirect:/interior_consult/quick_consultation";
	}

	// 인테리어 상세 상담 페이지 이동
	@GetMapping("/detail_consultation")
	public String detailConsultaion() {
		return "/interior_consult/detail_consultation";
	}

	// 리모델링 견적 창 이동
	@GetMapping("/remodeling_price")
	public String remodelingPrice() {
		return "/interior_consult/remodeling_price";
	}
	
	/*//장비 이미지 타입 변환 페이지
	@GetMapping("/imageInsert")
	public String goImages() {
		return "/interior_consult/imageInsert";
	}
	//장비 이미지 업데이트
	@PostMapping("/saveProductImage")
	public String saveImage(Vo vo) {
	    try {
	        Map<String, Object> hmap = new HashMap<String, Object>();
	        hmap.put("img", vo.getImgFile().getBytes());
	        productService.saveImage(hmap);  
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	
		return "redirect:/";
	}*/
	

	// 장비상담 페이지 이동
	@GetMapping("/quipment_buy_request_consult")
	public String quipmentBuyRequestConsult(String modelNumber1,String modelNumber2, Model model) {
		log.info("modelNumber1 : " + modelNumber1);
		log.info("modelNumber2 : " + modelNumber2);
		List<ProductDto> products = new ArrayList<ProductDto>();
		ProductDto productDto1 = consultService.getProduct(modelNumber1);
		log.info("modelNumberResult : " + productDto1.getPattachoname());
		products.add(productDto1);
		ProductDto productDto2 = consultService.getProduct(modelNumber2);
		products.add(productDto2);
		model.addAttribute("products", products);
		
		
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
