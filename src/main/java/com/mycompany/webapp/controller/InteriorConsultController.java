package com.mycompany.webapp.controller;

import java.util.Arrays;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dao.mybatis.ConsultDao;
import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.interior.ConsultRemodelingDto;
import com.mycompany.webapp.dto.interior.MainConsultDto;
import com.mycompany.webapp.service.ConsultService;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/interior_consult")
@Log4j2
public class InteriorConsultController {

	@Resource // 상담 서비스 객체
	private ConsultService consultService;

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

	// 장비상담 페이지 이동
	@GetMapping("/quipment_buy_request_consult")
	public String quipmentBuyRequestConsult() {
		return "/interior_consult/quipment_buy_request_consult";
	}

	// 리모델링 견적 창 이동
	@GetMapping("/remodeling_price")
	public String remodelingPrice() {
		return "/interior_consult/remodeling_price";
	}

}
