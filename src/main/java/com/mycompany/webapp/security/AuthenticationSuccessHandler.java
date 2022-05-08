package com.mycompany.webapp.security;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import com.mycompany.webapp.service.UsersService;

import lombok.extern.log4j.Log4j2;


/*
SimpleUrlAuthenticationSuccessHandler
	로그인 성공후에 무조건 defaultTartUrl으로 이동
SavedRequestAwareAuthenticationSuccessHandler
	로그인 성공후에 사용자가 접근하고자 했던 페이지로 이동
*/
//로그인 성공하면 특정 페이지로 이동
//public class Ch17AuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler  {
//로그인 성공하면 사용자가 접근하고 싶은 페이지로 이동
@Log4j2
public class AuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
	private static final Logger logger = LoggerFactory.getLogger(AuthenticationSuccessHandler.class);
    
	@Resource
	private UsersService usersService;
	
	public void onAuthenticationSuccess(
			HttpServletRequest request, 
			HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		logger.info("실행");
		
		// IS_ENABLED = 0 일때 예외 발생
		if(usersService.getIsEnabled(authentication.getName())==0) {
			log.info(authentication.getName());
			throw new DisabledException(authentication.getName());
		}
		
		// 로그인 성공시 실패 카운트 초기화 
		usersService.clearFailureCount(authentication.getName());
		
		
		super.onAuthenticationSuccess(request, response, authentication);
	}
}
