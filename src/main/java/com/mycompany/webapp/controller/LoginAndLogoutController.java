package com.mycompany.webapp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.service.UsersService;
import com.mycompany.webapp.service.UsersService.LoginResult;

import lombok.extern.log4j.Log4j2;

//이거 사용안함 시큐리티에서 로그인 로그아웃 함
@Controller
@Log4j2
public class LoginAndLogoutController {

	@Resource
	private UsersService usersService;
	
	/*//로그인
	@PostMapping("/login")
	public String login(UsersDto users, HttpSession session, Model model) {
		LoginResult result = usersService.login(users);
		if(result == LoginResult.SUCCESS) {
			log.info("로그인 성공");
			session.setAttribute("sessionEmail", users.getEmail());
			return "redirect:/";
		} else if(result == LoginResult.FAIL_EMAIL) {
			model.addAttribute("error", "이메일이 존재하지 않습니다.");
			return "redirect:/";
		} else {
			model.addAttribute("error", "패스워드가 틀립니다.");
			return "redirect:/";
		}
	}
	
	//로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("sessionEmail");
		return "redirect:/";
	}*/
	
}
