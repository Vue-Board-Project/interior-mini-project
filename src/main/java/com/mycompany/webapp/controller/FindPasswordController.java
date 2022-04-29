package com.mycompany.webapp.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.service.UsersService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class FindPasswordController {
	
	@Resource
	private UsersService usersService;
	
	@PostMapping("/findPassword")
	public String findPassword(UsersDto users, HttpServletResponse response) {
		log.info("실행");
		log.info(users.getEmail());
		log.info(users.getName());
		try {
			usersService.findPW(response, users);
			return "home";
		} catch (Exception e) {
			e.printStackTrace();
			return "home";
		}
	}
}
