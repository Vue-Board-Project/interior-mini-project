package com.mycompany.webapp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@Resource
	private UsersService usersService;
	
	//회원가입 인풋 데이터 디비에 저장
	@PostMapping("/join")
	public String join(UsersDto users, Model model) {
		log.info(users.getPassword());
		log.info(users.getEmail());
		log.info(users.getPhone());
		log.info("join running");
		
		//활성화 설정
		users.setEnabled(true);
		
		//회원 가입 처리
		JoinResult jr = usersService.join(users);
		if(jr == JoinResult.SUCCESS) {
			return "redirect:/home";
		} else if(jr ==JoinResult.DUPLICATED) {
			model.addAttribute("error", "중복된 이메일이 있습니다.");
			return "redirect:/signUp";
		} else {
			model.addAttribute("error", "회원 가입이 실패되었습니다. 다시 시도해 주세요.");
			return "redirect:/signUp";
		}
	}
}
