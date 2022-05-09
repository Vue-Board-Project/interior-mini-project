package com.mycompany.webapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.service.UsersService;
import com.mycompany.webapp.service.UsersService.FindPWResult;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class FindPasswordController {
	
	@Resource
	private UsersService usersService;
	
	//비번찾기 인풋값 post
	@PostMapping("/findPassword")
	public String findPassword(UsersDto users, HttpServletResponse response, Model model) {
		log.info("실행");
		log.info(users.getEmail());
		log.info(users.getName());
		try {
			FindPWResult fr = usersService.findPW(response, users);
			if(fr == FindPWResult.FAIL) {
				model.addAttribute("errorPW", "등록되지 않은 이메일입니다.");
				return "home";
			} else {
				/*response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('이메일로 임시 비밀번호를 발송하였습니다.'); location.href=''; </script>");
				out.flush();
				out.close();*/
				model.addAttribute("successPW", "이메일로 임시 비밀번호를 발송하였습니다.");
				return "home";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return "home";
		}
	}
	/*@GetMapping("/findPassword")
	public String redirectHome() {
		return "redirect:/";
	}*/
}
