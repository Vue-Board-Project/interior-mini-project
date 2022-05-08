package com.mycompany.webapp.dto.mypage;

import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.interior.MainConsultDto;

import lombok.Data;

@Data
public class InteriorProgressFileDto {
	private int fno; 	//PK, 파일번호
	private MainConsultDto consultNo;		//PK(FK), 접수번호
	private int interiorStep;	//인테리어 순서
	private String battachoname; //파일 다운로드를 위함.
	private String battachsname;
	private String battachtype;
	private String filename;	//파일 제목
}
