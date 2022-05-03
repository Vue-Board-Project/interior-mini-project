package com.mycompany.webapp.dto.product;

import lombok.Data;

@Data
public class ProductConsultDetailDto {
	private int pcNo;//장비상담접수번호
	private String count;//수량
	private String modelNumber;//장비모델명
}
