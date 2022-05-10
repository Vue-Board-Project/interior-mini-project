package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.product.AfterServiceDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.dto.product.PurchaseDetailDto;
import com.mycompany.webapp.dto.product.PurchaseDto;


@Mapper
public interface PurchaseDao {
	//public PurchaseDto selectPay(String modelNumber);
	public List<PurchaseDto> selectPay(String modelNum);
	public List<ProductDto> asVerifyProduct(String email);
	//구매 버튼 클릭 시
	//purchase db에 insert
	public int insertPurchaseInfo(PurchaseDto purchase);
	//purchaseDetail db에 추가
	public int insertPurchaseDetailInfo(PurchaseDetailDto purchaseDetail);
	//product db의 판매량과 재고 수 업데이트
	public int updateProductInfo(ProductDto product);
	public int insertAS(AfterServiceDto after);
}
