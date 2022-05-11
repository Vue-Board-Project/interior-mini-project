package com.mycompany.webapp.dto.mypage;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.dto.product.PurchaseDto;

import lombok.Data;

@Data
public class ReviewDto {
	private String email;
	private String stringemail;
	private int purchaseNumber;
	private String modelNumber;
	private String reviewTitle;
	private String reviewContent;
	private Date reviewWriteDate;
	private MultipartFile reviewFile;
	
	private PurchaseDto purchase;
	private ProductDto product;
	private UsersDto users;
	
	private int intPurchaseNumber;
	private String uploadPath;
	private String fileName;
	private String stringProductName;
	private String stringModelNumber;

}
