package com.mycompany.webapp.dto.product;

import java.sql.Date;

import com.mycompany.webapp.dto.UsersDto;

import lombok.Data;

@Data
public class ProductConsultDto {
	private int pcNo;//장비상담접수번호
	private String pcPurpose;//상담목적
	
	private boolean pc_product_remove;//장비제거
	private boolean pcProduct_install;//장비설치
	private boolean pcElectrical;//전기공사
	private boolean pcNetwork;//네트워크공사
	private boolean pcPipe;//배관공사
	
	private Date pcDate;//상담날짜
	private String pcTime;
	
	private String pcRequest;//세부요청사항
	private String email;//이메일
	
	//체크 여부
	private String[] wantService;
	
}
