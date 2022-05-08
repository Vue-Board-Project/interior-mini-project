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
		logger.info("실행");
		
		request.getParameter(email);
		request.setAttribute(email, email);
		
		//log.info(request.getParameter(email));
		
		if(exception instanceof BadCredentialsException) {
			log.info("email: "+request.getParameter(email));
			UsersDto dbUsers = usersService.selectByEmail(request.getParameter(email));
			if(dbUsers != null) {
				loginFailureCount(request.getParameter(email));				
				log.info("되냐~?");
			} else {
				log.info("안뇽ㅎㅎ");
			}
		}
		log.info(exception);
		/*exception.printStackTrace();*/
		super.onAuthenticationFailure(request, response, exception);
	}
	private void loginFailureCount(String email) {
		log.info("되냐고~~~?");
		usersService.countFailure(email);
		int cnt = usersService.checkFailureCount(email);
		if(cnt==3) {
			usersService.disabledUsername(email);
		}
	}
}


