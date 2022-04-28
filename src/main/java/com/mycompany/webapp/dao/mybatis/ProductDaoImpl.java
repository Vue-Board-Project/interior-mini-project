package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mycompany.webapp.dto.product.ProductDto;

@Mapper
public class ProductDaoImpl implements ProductDao{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<ProductDto> selectchairlist() {
		
		return sqlSessionTemplate.selectList("product.selectchairlist");
	}

	@Override
	public int insertproduct(ProductDto product) {
		// TODO Auto-generated method stub
		return 0;
	}
}
