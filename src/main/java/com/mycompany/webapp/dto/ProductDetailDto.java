package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data

public class ProductDetailDto {
	private String productFilename;//장비 파일명
	private ProductDto modelNumber;//모델명(외래키)
	private MultipartFile productDetailImage;//장비 상세 사진 BLOB
}
