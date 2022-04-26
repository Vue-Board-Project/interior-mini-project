package com.mycompany.webapp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.service.UsersService;
import com.mycompany.webapp.service.UsersService.JoinResult;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class SignUpController {
	@RequestMapping("/signUp")
	public String signup() {
		return "signUp";
	}
	
	@RequestMapping("/mainSignUp")
	public String mainSignUp() {
		return "signUp";
	}
	
	@RequestMapping("/loginSignUp")
	public String loginSignUp() {
		return "signUp";
	}
	
	@PostMapping("/join")
	public String join(HttpServletRequest request) {
		log.info(request);
		return "home";
	}
	
	@Resource
	private UsersService usersService;
	
	//회원가입
	@RequestMapping("/join")
	public String join(UsersDto users, Model model) {
		log.info("join running");
		
		//회원 가입 처리
		JoinResult jr = usersService.join(users);
		if(jr == JoinResult.SUCCESS) {
			return "redirect:/";
		} else if(jr ==JoinResult.DUPLICATED) {
			model.addAttribute("error", "중복된 아이디가 있습니다.");
			return "signUp";
		} else {
			model.addAttribute("error", "회원 가입이 실패되었습니다. 다시 시도해 주세요.");
			return "signUp";
		}
	}
}
