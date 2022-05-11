package com.mycompany.webapp.aspect;

import java.io.IOException;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j2;

@Component
@Aspect
@Log4j2
public class aspectInterior {
	
	@AfterThrowing(
			pointcut="execution(public * com.mycompany.webapp.controller.*.getImage*(..))",
		    throwing = "e")
	public void getImageException(Throwable e) {
		//log.fatal("실행");
		//log.fatal(e.getMessage());
		log.fatal("DB에서 불러올 이미지가 없습니다.");
		//발생한 예외 변환해서 던지기
		//throw new IOException("Temp파일에 해당 이미지가 없습니다.", e);
	}
	
}
