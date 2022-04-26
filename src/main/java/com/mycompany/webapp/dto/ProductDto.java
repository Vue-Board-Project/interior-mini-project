package com.mycompany.webapp.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductDto {
	private String modelNumber;//모델명
	private String productName;//제품명
	private int price;//가격
	private Date registrationDate;//as 등록일자
	private int productQuantity;//수량
	private int productHits;//조회수
	private int productSalesBolume;//판매량
	private String productColor;//색상
	private int reviewCount;//리뷰수
	private String category;//카테고리
	private MultipartFile mainImage;//메인 이미지 파일 BLOB
}
