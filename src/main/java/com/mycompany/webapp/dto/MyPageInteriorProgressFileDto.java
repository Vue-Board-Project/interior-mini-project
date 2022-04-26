package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MyPageInteriorProgressFileDto {
	private int fno; 	//PK, 파일번호
	//private int consultNo;		//PK(FK), 접수번호
	private int interiorStep;	//인테리어 순서
	private String battachoname; //파일 다운로드를 위함.
	private String battachsname;
	private String battachtype;
	private MultipartFile fcontent;	//파일 내용
}
