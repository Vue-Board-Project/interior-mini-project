package com.mycompany.webapp.dto.interior;

import lombok.Data;
//리모델링 공간 TABLE
@Data
public class ConsultRemodelingDto {
	private String consultRoom;// 리모델링 공간
	private int consultNo;//접수번호 가져오기 위함
}
