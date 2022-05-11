package com.mycompany.webapp.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import lombok.extern.log4j.Log4j2;

@Component
@Aspect
@Log4j2
public class aspectTransaction {
	@Around("@annotation(com.mycompany.webapp.aspect.aspectTransactionChk)")
	public Object method(ProceedingJoinPoint joinPoint) throws Throwable {
		//전처리(핵심 코드 이전에 실행할 코드)
		log.fatal("트랜잭션 실행");
		Object result = joinPoint.proceed();//핵심코드 실행
		//전처리(핵심 코드 이후에 실행할 코드)
		log.fatal("트랜잭션 종료");
		return result;
	}
	
	@AfterThrowing(      
			pointcut="@annotation(com.mycompany.webapp.aspect.aspectTransactionChk)",
		    throwing = "e" )
	public void method(Throwable e) {
		log.fatal("리턴값: "+ e.getMessage());
	}
}
