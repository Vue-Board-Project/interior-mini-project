package com.mycompany.webapp.dto;

import lombok.Data;

@Data
public class ConsultDetailDto {
	private MainConsultDto mainConsultDto;//접수번호 가져오기
	private String consultEstimation;//전체견적
	private String wallColor;//벽색
	private String floorColor;//바닥색
	private String allRoomColor;//전체색
	private String  waiting_room;//대기실 CLOB
	private String treatmentRoom;//진료실 CLOB
	private String disinfectionRoom;//소독실 CLOB
	private String machineRoom;//기계실 CLOB
	
}
