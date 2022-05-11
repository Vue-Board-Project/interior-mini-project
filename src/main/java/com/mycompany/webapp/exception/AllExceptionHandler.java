package com.mycompany.webapp.exception;



import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;
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
		return "error/500";
	}
	
	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)//자바 스크립트에서 return을 하면 200 으로 정상 상태로 전송하니 에러 상태로 변경하여 전송
	public String NoHandlerFoundException(NoHandlerFoundException e) {	
		log.info("실행 " + e.getMessage());
		return "error/404";
	}
	@ExceptionHandler(NullPointerException.class)
	public String handleNullPointerException(NullPointerException e) {	
		log.info("실행 " + e.getMessage());
		return "error/null";
	}
	//장비 상담 신청 실패
	@ExceptionHandler(ConsultExceptionHandler.class)
	public String handleCh10SoldOutException(ConsultExceptionHandler  e) {	
		log.info("실행 " + e.getMessage());
		return "error/500";
	}
}
