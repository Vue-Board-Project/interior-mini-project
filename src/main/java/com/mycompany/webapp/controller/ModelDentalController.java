package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class ModelDentalController {
	@RequestMapping("/model_dental")
	public String modelDental() {
		log.info("실행");
		return "model_dental/model_dental";
	}
	
	@RequestMapping("/goModelDental")
	public String goModelDental() {
		log.info("실행");
		return "model_dental/model_dental";
	}
	
	@RequestMapping("/modelDentalDetail2")
	public String modelDentalDetail2() {
		log.info("실행");
		return "model_dental/model_dental_detail2";
	}
}
