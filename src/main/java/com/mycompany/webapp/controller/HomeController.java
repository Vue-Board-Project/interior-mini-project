package com.mycompany.webapp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
}
