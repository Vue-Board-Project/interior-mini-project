package com.mycompany.webapp.service;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.sql.rowset.serial.SerialException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dao.mybatis.ProductConsultDao;
import com.mycompany.webapp.dto.product.ProductDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class ProductConsultService {
	
	@Resource
	private ProductConsultDao consultDao;
	
	public ProductDto getProduct(String modelNumber) {
		
		return consultDao.selectProduct(modelNumber);
	}
	
	/*public Map<String, Object>  blobTest(MultipartFile file, String oname) {
		Map<String, Object> param = new HashMap<String, Object>();
		
		String fileName = file.getOriginalFilename();
		
		byte[] bytes;
		
		try {
			bytes = file.getBytes();
			
			try {
				Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
				param.put("file", blob);
				param.put("file_name",oname);
				param.put("file_size", blob.length());
				
				}catch (SerialException e1) {
				e1.printStackTrace();
				}catch (SQLException e2) {
					e2.printStackTrace();
				}
		}catch (Exception e) {
			// TODO: handle exception
		}
		return param;
	}*/




}
