package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class PortfolioDentalControll {
	@RequestMapping("/portfolio_dental")
	public String modelDental() {
		log.info("실행");
		return "portfolio_dental/portfolio_dental";
	}
	
	@RequestMapping("/goPortfolioDental")
	public String goPortfolioDental() {
		log.info("실행");
		return "portfolio_dental/portfolio_dental";
	}
	@RequestMapping("/portfolioDentalDeatail3")
	public String portfolioDentalDeatail3() {
		log.info("실행");
		return "portfolio_dental/portfolio_dental_detail3";
	}
}
