package com.mycompany.webapp.dto.interior;

import lombok.Data;
//상세 인테리어 TABLE
@Data
public class ConsultDetailDto {
	private int consultNo;//접수번호 가져오기
	private String allSideRoom;
	private String consultEstimation;//전체견적
	private String acreage;//평수
	private String wallpaperTone;//벽색
	private String floorTone;//바닥색
	private String allRoomTone;//전체색
	private String  waitingRoom;//대기실 CLOB
	private String treatmentRoom;//진료실 CLOB
	private String disinfectionRoom;//소독실 CLOB
	private String machineRoom;//기계실 CLOB
	
}
