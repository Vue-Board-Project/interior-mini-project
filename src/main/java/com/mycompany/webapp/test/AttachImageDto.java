package com.mycompany.webapp.test;

import lombok.Data;

@Data
public class AttachImageDto {
	// 데이터들을 클래스에 정의하여서 해당 클래스의 객체를 뷰에 전송할 것
	
	/* 경로 */
	private String uploadPath;
	/* uuid */
	//private String uuid;
	/* 파일 이름 */
	private String fileName;
	/* 상품 id */
	private int bookId;

}
