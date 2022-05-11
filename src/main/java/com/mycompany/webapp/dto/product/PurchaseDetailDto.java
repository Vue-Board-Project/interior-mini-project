package com.mycompany.webapp.dto.product;

import java.util.Date;

import lombok.Data;

@Data
public class PurchaseDetailDto {
	
	private String modelPurchaseQuantity;// 개수

	private int intPurchaseNumber;
	private String stringModelNumber;

	private String stringEmail;
	private Date datePurchaseDate;
	private String stringProductName;
	private String stringPatchoName;

	private PurchaseDto purchase;
	private ProductDto product;
	private PurchaseDto purchaseNumber;// 구매번호 (외래키)
	private ProductDto modelNumber;// 모델명 (외래키)

}
