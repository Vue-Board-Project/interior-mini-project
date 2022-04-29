package com.mycompany.webapp.service;

import java.util.List;
import java.util.Map;

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
	public void saveImage(Map<String, Object> hmap) {
		productDao.saveImage(hmap);
	}
	public List<ProductDto> selectchairlist() {
		return productDao.selectchairlist();
	}
	public String sort() {
		return productDao.sort();
	}
	/*public Map<String, Object> getByteImage(){
		return productDao.getByteImage();
	}*/
	
	
}
