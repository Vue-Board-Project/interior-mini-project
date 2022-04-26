package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class InteriorDetailDto {
	private InteriorDto interior; //InteriorDto에서 ino(게시글 번호) 가져옴
	private String iImgName; //파일명(시퀀스아님, 중복안되게 하기 위해서 뒤에 날짜 붙일예정)
	private MultipartFile iImg; //이미지
	private String iImgContent; //이미지 설명, CLOB 추후 mybatis에서 resultmap 처리
	
}
