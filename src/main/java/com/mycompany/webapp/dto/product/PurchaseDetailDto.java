package com.mycompany.webapp.dto.product;

import lombok.Data;

@Data
public class PurchaseDetailDto {
	private PurchaseDto purchaseNumber;//구매번호 (외래키)
	private ProductDto modelNumber;//모델명 (외래키)
	private String modelPurchaseQuantity;//개수
	private String detailPrice;//금액
	private ProductDto product;
	
	private String stringPurchaseNumber;
	private String stringModelNumber;
	
	
}
