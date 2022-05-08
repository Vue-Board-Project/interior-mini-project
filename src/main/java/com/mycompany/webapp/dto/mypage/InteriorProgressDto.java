package com.mycompany.webapp.dto.mypage;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.interior.InteriorDto;
import com.mycompany.webapp.dto.interior.MainConsultDto;

import lombok.Data;

@Data
public class InteriorProgressDto {
	/*
	 *  P : plan, 설계
	 *  C : construction, 공사
	 *  E : Engagement, 계약
	 */
	private MainConsultDto consultNo; //PK(FK)
	private UsersDto email; //FK
	private Date pexpectedDate;	//설계 완료 예정 날짜 
	private String puserFeedback;	//설계 피드백 
	private Date eexpectedDate;		//계약 예정 날짜
	private String euserRequest;		//계약유저요청사항
	private String cmiddleFeedback;	//공사 진행 피드백
	private String cfinishFeedback;	//공사완료 피드백
	private String dentalDrawing;	//현장상담도면
	private Date cstartDate;		//공사 진행 시작
	private Date cendDate;		//공사 진행 끝
	private InteriorDto ino; 		//FK완성 포폴 게시글 번호
	
	//데이터 읽어오기 위해 추가한 항목
	private int intConsultNo;
	private String stringEmail;
	private int intIno;
	private int acreage;
	private String style;
	private String request;
	private Date eexpectedFinDate;	//예상 완료기간
	private Date asEndDate;	//AS 끝나는 기간

}
