package com.mycompany.webapp.dto.product;

import lombok.Data;

@Data
public class PurchaseDetailDto {
	
	private int intPurchaseNumber;
	private String stringModelNumber;
	private String modelPurchaseQuantity;//개수
	
	private PurchaseDto purchaseNumber;//구매번호 (외래키)
	private ProductDto modelNumber;//모델명 (외래키)
	private ProductDto product;	
	
	
}
