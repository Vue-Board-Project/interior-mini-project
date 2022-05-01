package com.mycompany.webapp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.webapp.dto.interior.InteriorDto;
import com.mycompany.webapp.service.InteriorService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class PortfolioDentalControll {
	
	@Resource // 인테리어 서비스 객체
	private InteriorService interiorService;
	
	@RequestMapping("/portfolio_dental")
	public String modelDental() {
		log.info("실행");
		return "portfolio_dental/portfolio_dental";
	}
	
	@RequestMapping("/portfolio_dental/portfolio_dental")
	public String goPortfolioDental(Model model) {
		log.info("interiorListDownload 실행");
		
		List<InteriorDto> interiorList=interiorService.interiorList();
		/*for(InteriorDto s : interiorList) {
			log.info(s.getIsummary());
		}*/
		int cnt = interiorService.interiorCnt();
		model.addAttribute("interiorList",interiorList) ;
		model.addAttribute("cnt",cnt);
		return "portfolio_dental/portfolio_dental";
	}
	@RequestMapping("/portfolioDentalDeatail3")
	public String portfolioDentalDeatail3() {
		log.info("실행");
		return "portfolio_dental/portfolio_dental_detail3";
	}
}
