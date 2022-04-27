package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.ProductDao;
import com.mycompany.webapp.dto.product.ProductDto;

import lombok.extern.log4j.Log4j2;


@Service
@Log4j2
public class ProductService {
	@Resource
	private ProductDao productDao;
	
	public void insertproduct(ProductDto product){

		productDao.insertproduct(product);
	}
}
