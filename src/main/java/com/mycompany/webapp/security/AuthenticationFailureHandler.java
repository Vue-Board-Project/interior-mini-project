package com.mycompany.webapp.security;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.service.UsersService;

import lombok.extern.log4j.Log4j2;

@Log4j2
public class AuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler  {
	private static final Logger logger = 
			LoggerFactory.getLogger(AuthenticationFailureHandler.class);
	
	@Resource
	private UsersService usersService;

	private String email;

	public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }

	@Override
	public void onAuthenticationFailure(
			HttpServletRequest request, 
			HttpServletResponse response,
			AuthenticationException exception) 
			throws IOException, ServletException {
		
		request.getParameter(email);
		request.setAttribute(email, email);
		
		if(exception instanceof BadCredentialsException) {
			UsersDto dbUsers = usersService.selectByEmail(request.getParameter(email));
			//제대로된 이메일을 입력했을때만 실행
			if(dbUsers != null) {
				loginFailureCount(request.getParameter(email));				
			} else {
			}
		}

		super.onAuthenticationFailure(request, response, exception);
	}
	//로그인 실패 카운트
	private void loginFailureCount(String email) {
		usersService.countFailure(email);
		int cnt = usersService.checkFailureCount(email);
		if(cnt==3) {
			usersService.disabledUsername(email);
		}
	}
}


