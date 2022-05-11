package com.mycompany.webapp.dto.product;

import java.util.Date;

import lombok.Data;

@Data
public class PurchaseDetailDto {
	private PurchaseDto purchaseNumber;// 구매번호 (외래키)
	private ProductDto modelNumber;// 모델명 (외래키)
	private int modelPurchaseQuantity;// 개수
	private ProductDto product;

	private int intPurchaseNumber;
	private String stringModelNumber;

	private String stringEmail;
	private Date datePurchaseDate;
	private String stringProductName;
	private String stringPatchoName;

	private PurchaseDto purchase;

}
