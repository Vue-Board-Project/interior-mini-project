package com.mycompany.webapp.dao.mybatis;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.product.ProductConsultDetailDto;
import com.mycompany.webapp.dto.product.ProductConsultDto;
import com.mycompany.webapp.dto.product.ProductDto;

@Mapper
public interface ProductConsultDao {
	public ProductDto selectProduct(String modelNumber);
	
	
	//여기부터 장비 브랜치임 유저랑 머지할 때 충돌 날듯
	public int insertProductConsult(ProductConsultDto productConsultDto);
	public int insertProductConsultModel(ProductConsultDetailDto productConsultDetailDto);
	
}
