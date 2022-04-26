package com.mycompany.webapp.dto.mypage;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MyPageInteriorProgressDto {
	/*
	 *  P : plan, 설계
	 *  C : construction, 공사
	 *  E : Engagement, 계약
	 */
	//private int consultNo; //PK(FK)
	//private String email; //FK
	private Date pExpectedFinDate;	//설계 완료 예정 날짜 
	private String pFeedback;	//설계 피드백 clob 형태이므로 
	private Date eExpectedDate;		//계약 예정 날짜
	private String eUserRequest;		//계약유저요청사항
	private String cMiddleFeedback;	//공사 진행 피드백
	private String cFinishFeedback;	//공사완료 피드백
	private MultipartFile dentalDrawing;	//현장상담도면
	private Date cStartDate;		//공사 진행 시작
	private Date cEndDate;		//공사 진행 끝
	//private int ino; 		//FK완성 포폴 게시글 번호

}
