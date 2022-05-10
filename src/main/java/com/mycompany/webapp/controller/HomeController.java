package com.mycompany.webapp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping("/")
	public String home() {
		logger.info("실행");
		
		return "home";//view 이름만 전달
	}
	@RequestMapping("/home")
	public String goHome() {
		logger.info("실행");
		
		return "home";//view 이름만 전달
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
