package com.mycompany.webapp.dto;

import lombok.Data;

@Data
public class PurchaseDetailDto {
	private PurchaseDetailDto purchaseNumber;//구매번호 (외래키)
	private ProductDto modelNumber;//모델명 (외래키)
	private int modelPurchaseQuantity;//개수
	private int detailPrice;//금액
}
