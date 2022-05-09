package com.mycompany.webapp.dto.product;

import java.util.Date;

import com.mycompany.webapp.dto.UsersDto;

import lombok.Data;
@Data
public class PurchaseDto{
	private int purchaseNumber;//구매번호
	private Date purchaseDate;//구매날짜
	private String paymentAmount;//결제금액
	private String purchaseQuantity;//개수
	private String deliveryManagement;//배송관리
	private UsersDto email;//이메일 (외래키)
	private String stringEmail;
	private String deliveryMessage;//배송 시 전달 메시지
	
	private PurchaseDetailDto pDetail;
	private ProductDto product;
	
	private String bank;//카드사 또는은행
	private String cardnumber;
	private String carddate;
}
