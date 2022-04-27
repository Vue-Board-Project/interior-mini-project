package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class InteriorController {
	
	@RequestMapping("/interior")
	public String interior() {
		return "interior/interior";
	}
}
