package com.mycompany.webapp.dto;

import lombok.Data;

@Data
public class UsersDto {
	private String email; //이메일, 로그인할때 id로 사용
	private String password; //비밀번호
	private String name; //이름
	private String phone; //대표번호
	private String postcode; //우편번호
	private String address; //주소
	private String addressDetail; //상세주소
	private String crn; //사업자등록번호
	private String role; //권한
	private int failureCnt; //로그인 실패 횟수
	private String isEnabled; //잠긴계정 
	
}
