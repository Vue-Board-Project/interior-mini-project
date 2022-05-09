package com.mycompany.webapp.exception;



public class ProductExceptionHandler  extends RuntimeException{
	public ProductExceptionHandler() {
		
	}
	
	public ProductExceptionHandler(String message) {
		super(message);
	}
	
}
