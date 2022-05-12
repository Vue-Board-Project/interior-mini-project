package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.product.AfterServiceDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.dto.product.PurchaseDetailDto;
import com.mycompany.webapp.dto.product.PurchaseDto;
import com.mycompany.webapp.service.ProductService;
import com.mycompany.webapp.service.PurchaseService;
import com.mycompany.webapp.service.UsersService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class AfterServiceController {
	@Resource
	UsersService userService;
	@Resource
	PurchaseService purchaseService;
	@Resource
	UsersDao usersDao;

	@Resource
	ProductService productService;
	
	//as에 사용할 정보들을 불러옵니다 PurchaseDto, PurchaseDetailDto, ProductDto 사용
	@RequestMapping("/equipment/AfterService")
	public String afterService(Authentication authentication, Model model) {
		String email = authentication.getName();
		log.info(email);
		UsersDto udt = usersDao.selectByEmail(email);
		log.info(udt);
		model.addAttribute("udt", udt);
		// List<ProductDto> myList = new ArrayList<ProductDto>();
		// ProductDto productDto=purchaseService.asVerifyProduct(email);
		// log.info(productDto);

		List<PurchaseDto> purdtoList = purchaseService.selectPurchaseInfo("bleeker10@naver.com");
		List<PurchaseDto> purchaseDate = new ArrayList<PurchaseDto>();// 구매 날짜
		List<PurchaseDetailDto> modelList = new ArrayList<PurchaseDetailDto>();

		log.info(purdtoList);
		if(purdtoList!=null) {
			for(PurchaseDto puDto:purdtoList) {
				PurchaseDto purchaseDto=new PurchaseDto();
				purchaseDto.setPurchaseDate(puDto.getPurchaseDate());
				purchaseDate.add(purchaseDto);

				//구매 번호로부터 구매 상세의 모델명을 획득했다! 야호!
				for(PurchaseDetailDto pud:puDto.getPurchaseInfo()) {
					PurchaseDetailDto purchaseDetailDto=new PurchaseDetailDto();
					purchaseDetailDto.setStringModelNumber(pud.getStringModelNumber());
					modelList.add(purchaseDetailDto);
					model.addAttribute("modelList", modelList);
					
					//모델명으로부터 제품의 정보 획득
					ProductDto prd=pud.getProduct();
					ProductDto productDto=new ProductDto();
					productDto.setModelNumber(prd.getModelNumber());
					productDto.setProductName(prd.getProductName());
					productDto.setPattachoname(prd.getPattachoname());
					model.addAttribute("productDto", productDto);
					log.info(productDto);
				}					
			}
			model.addAttribute("purchaseDate", purchaseDate);
		}

		// List<PurchaseDetailDto>
		// pudDto=purchaseService.selectpurchaseDetailInfo(purdtoList.getPurchaseNumber());
		// System.out.println(pudDto);
		// model.addAttribute("myList", myList);
		return "/equipment/AfterService";// view 이름만 전달
	}
	//as 신청 완료
	@PostMapping(value = "/equipment/ReservationAS")
	public String ReservationAS(Authentication authentication, AfterServiceDto as, MultipartFile pattachoname,
			String modelNum, String simpleSym, String detailSym, String inputPurchaseDate, String inputwantASDate,
			String timeorder, Model model) {
		
		String email = authentication.getName();
		as.setStringModelNumber(modelNum);
		as.setBasicSymptoms(simpleSym);
		as.setDetailedSymptoms(detailSym);
		as.setApplicationDate(inputPurchaseDate);
		as.setScheduledServiceDate(inputwantASDate);
		as.setTimeorder(timeorder);
		as.setEmail(email);
		purchaseService.insertAS(as);
		
		return "redirect:/";
		
	}
	
	@PostMapping(value="/equipment/modelCheck", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String modelCheck(String modelNum) {
		
		ProductDto pro = productService.detailProduct(modelNum);
		String result = null;
		if(pro == null) {
			result = "wrong";
		}else {
			
			result = "success";
		}
		JSONObject jsonobject = new JSONObject();
		jsonobject.put("result", result);
		String json = jsonobject.toString();
		return json;
	}
		
	
}
