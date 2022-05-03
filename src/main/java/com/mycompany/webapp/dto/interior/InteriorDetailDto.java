package com.mycompany.webapp.dto.interior;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class InteriorDetailDto {
	//private InteriorDto interior; //InteriorDto에서 ino(게시글 번호) 가져옴
	private String idImgPath; //파일명(시퀀스아님, 중복안되게 하기 위해서 뒤에 날짜 붙일예정)
	private int ino; //인테리어&포폴 게시글 번호
	private String cname; //글 제목
	private String dcontent; //이미지 설명
	
	private MultipartFile iImg; //이미지
}
