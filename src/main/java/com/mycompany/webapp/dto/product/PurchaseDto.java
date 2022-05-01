package com.mycompany.webapp.dto.product;

import java.util.Date;

import com.mycompany.webapp.dto.UsersDto;

import lombok.Data;
@Data
public class PurchaseDto {
	private int purchaseNumber;//구매번호
	private Date purchaseDate;//구매날짜
	private int paymentAmount;//결제금액
	private String paymentMethod;//결제방법
	private int purchaseQuantity;//개수
	private String deliveryManagement;//배송관리
	private UsersDto email;//이메일 (외래키)
	private String stringEmail;
}
