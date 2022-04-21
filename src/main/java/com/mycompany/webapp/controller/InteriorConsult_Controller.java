package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class InteriorConsult_Controller {
	
	@GetMapping("/interior_consult/detail_consultation")
	public String detailConsultaion() {
		return "/interior_consult/detail_consultation";
	}
	
	@GetMapping("/interior_consult/quick_consultation")
	public String quickConsultation() {
		return "/interior_consult/quick_consultation";
	}

	@GetMapping("/interior_consult/quipment_buy_request_consult")
	public String quipmentBuyRequestConsult() {
		return "/interior_consult/quipment_buy_request_consult";
	}

	@GetMapping("/interior_consult/remodeling_price")
	public String remodelingPrice() {
		return "/interior_consult/remodeling_price";
	}

}
