package com.mycompany.webapp.dto.interior;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class InteriorDto {
	private int ino; //인테리어&포폴 게시글 번호
	private String itype; //인테리어인지 포폴인지 종류
	private int ihits; //조회수
	private String istyle; //스타일
	private String allColor; //전체 컬러
	private String wcolor; //벽컬러
	private String fcolor; //바닥 컬러
	private String dtype; //치과 유형(소아치과, 종합치과, ...)
	private String darea; //평수
	private String isummary; //인테리어&포폴 게시글 제목(요약)
	private String imImgPath; //인테리어 전체창 메인 이미지 파일 path
	/*private String pattachsname;
	private String pattachtype;*/
	private MultipartFile iMainImg;//인테리어 전체창 메인 이미지 파일 BLOB
}
