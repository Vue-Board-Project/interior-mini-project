package com.mycompany.webapp.exception;

public class ConsultExceptionHandler  extends RuntimeException{
	public ConsultExceptionHandler () {
		
	}
	public ConsultExceptionHandler (String message) {
		super(message);
	}
}
