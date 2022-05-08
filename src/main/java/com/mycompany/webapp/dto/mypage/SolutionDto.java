package com.mycompany.webapp.dto.mypage;

import com.mycompany.webapp.dto.interior.MainConsultDto;

import lombok.Data;

@Data
public class SolutionDto {
	private int sno; // 솔루션 시퀀스
	private String scontent;	//솔루션 내용
	private MainConsultDto consult_no;	//접수번호(FK)
}
