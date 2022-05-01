package com.mycompany.webapp.dao.mybatis;


import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.product.ProductDto;


@Mapper
public interface ProductConsultDao {
	public ProductDto selectProduct(String modelNumber);
	
}
