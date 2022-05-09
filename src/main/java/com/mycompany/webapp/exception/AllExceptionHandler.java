package com.mycompany.webapp.exception;



import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;

import lombok.extern.log4j.Log4j2;

@Component
@ControllerAdvice
@Log4j2
public class AllExceptionHandler {
	
	@ExceptionHandler(Exception.class)//에러가 구체적이지 않고, 500 에러가 떳을 경우
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)//응답의 staus 번호를 변경해줌, 상황에 따라 자바스크립트에서 다르게 처리해줄 필요가 있음
	public String handleExcepion(Exception e) {
		log.info("실행:"+e.getMessage());
		e.printStackTrace();
		return "/equipment/CustomerService";
	}

}
