package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.product.AfterServiceDto;
import com.mycompany.webapp.dto.product.ProductDto;
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
	@RequestMapping("/equipment/AfterService")
	public String afterService(Authentication authentication, Model model
			) {
		String email=authentication.getName();
		UsersDto udt=usersDao.selectByEmail(email);
		model.addAttribute("udt", udt);
		List<ProductDto> myList = new ArrayList<ProductDto>();
		//ProductDto productDto=purchaseService.asVerifyProduct(email);
		//log.info(productDto);
		model.addAttribute("myList", myList);
		return "/equipment/AfterService";// view 이름만 전달
	}
	
	@PostMapping(value="/equipment/ReservationAS")
	public String ReservationAS(Authentication authentication, AfterServiceDto as
			, MultipartFile pattachoname, String modelNum, String simpleSym, 
			String detailSym, String inputPurchaseDate, String inputwantASDate,
			String timeorder) {
		log.info(modelNum);

		String email=authentication.getName();
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
}
