package com.mycompany.webapp.dto.mypage;

import lombok.Data;

@Data
public class MyPageSolutionDto {
	private int sno; // 솔루션 시퀀스
	private String scontent;	//솔루션 내용
	//private int consult_no;	접수번호(FK)
}
