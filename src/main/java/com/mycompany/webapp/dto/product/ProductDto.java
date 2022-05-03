package com.mycompany.webapp.dto.product;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

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
	//장비 상담을 위한 수량
	private String consultCount;
	//카트에 담을 개수
	private String cartQua;
}
