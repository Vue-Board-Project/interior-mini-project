package com.mycompany.webapp.dto.product;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.controller.CartBean;

import lombok.Data;

@Data
public class ProductDto {
	private String modelNumber;//모델명
	private String productName;//제품명
	private int price;//가격
	private Date registrationDate;//제품 등록일자
	private int productQuantity;//수량
	private int productHits;//조회수
	private int productSalesVolume;//판매량
	private String productColor;//색상
	private int reviewCount;//리뷰수
	private String category;//카테고리
	private String productIntro;
	private String pattachoname;
	private String pattachsname;
	private String pattachtype;
	private MultipartFile mainimage;//메인 이미지 파일 BLOB
	private String sort;//상품 정렬
	private CartBean cart;
	public CartBean getCart() {
		// 카트가 없을 때 새로운 카트 생성
		if (cart == null)
			cart = new CartBean();
		// 카트가 있을 때는 기존 cart 리턴
		return cart;
	}
	
}
