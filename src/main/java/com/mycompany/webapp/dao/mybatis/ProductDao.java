package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.product.ProductDto;

@Mapper
public interface ProductDao {
	public int insertproduct(ProductDto product);
	public List<ProductDto> selectchairlist();
}
