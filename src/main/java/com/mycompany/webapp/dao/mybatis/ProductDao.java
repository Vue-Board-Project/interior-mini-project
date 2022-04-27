package com.mycompany.webapp.dao.mybatis;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.SqlSessionTemplate;

import com.mycompany.webapp.dto.product.ProductDto;

@Mapper
public interface ProductDao {
	public int insertproduct(ProductDto product);
}
