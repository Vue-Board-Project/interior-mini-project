package com.mycompany.webapp.dto.mypage;

import com.mycompany.webapp.dto.interior.InteriorDto;
import com.mycompany.webapp.dto.interior.MainConsultDto;

import lombok.Data;

@Data
public class ReferenceModelDto {
	private MainConsultDto consultN;	//접수번호(FK, PK)
	private InteriorDto ino;		//게시글번호(FK, PK)\
	
	private int intIno;
	private String stringISummary;
	private String stringImImgPath;
}
