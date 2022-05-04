package com.mycompany.webapp.dto.product;

import lombok.Data;

@Data
public class ProductConsultDetailDto {
	private int pcNo;//장비상담접수번호
	private int pcMcount;//수량
	private String modelNumber;//장비모델명
	
	private String count;//수량 전송 용 dto
}
