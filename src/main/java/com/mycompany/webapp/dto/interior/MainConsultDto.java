package com.mycompany.webapp.dto.interior;

import java.sql.Date;

import com.mycompany.webapp.dto.UsersDto;

import lombok.Data;
//기본 상담 테이블
@Data
public class MainConsultDto {
	private int consultNo;//접수번호
	private String consultAcreage;//평수
	private String consultInteriorStyle;//스타일
	private String consultRequest;//요청사항
	private Date consultDate;//상담일자
	private String consultAddress;//주소
	private String email;//유저 이메일
	private int ino;//인테리어 번호
	
	private UsersDto usersDto;
	private InteriorDto interiorDto;
	
	//추가 DTO
	private String constructionDate;//시공일자
	private String consultTime;//상담시간
	private String consultAddressDetail;//상세주소
	private String consultType;//신규 인테리어 : 1 / 리모델링 : 2
	
<<<<<<< HEAD
	
	private String[] consultRoomList;//종합 리모델링 상담 체크박스 저장용 or 디테일 상담 
	private String[] allSideRoom;//원하는 상세 공간
	
	/*//디테일 상담 저장용 필드 설정
	private String consultEstimation;//전체견적
	
	private String acreage;//평수
	private String wallpaperTone;//벽색
	private String floorTone;//바닥색
	private String allRoomTone;//전체색
	private String  waitingRoom;//대기실 CLOB
	private String treatmentRoom;//진료실 CLOB
	private String disinfectionRoom;//소독실 CLOB
	private String machineRoom;//기계실 CLOB
	*/	
=======
	private String[] consultRoomList;//종합 리모델링 상탐 체크박스 저장용
	
>>>>>>> refs/remotes/origin/mypage
}