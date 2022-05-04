package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.ProductConsultDao;
import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.product.ProductConsultDetailDto;
import com.mycompany.webapp.dto.product.ProductConsultDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class ProductConsultService {
	
	public enum ProductConsultResult{
		SUCCESS, FAIL_MODEL , FAIL
	}
	
	@Resource//유저 dao 객체
	private UsersDao usersDao;
	
	@Resource//장비 상담 dao 객체
	private ProductConsultDao productConsultDao;
	
	//유저 얻기
	public UsersDto getUser(String email) {
		return usersDao.selectByEmail(email);
	}
	
	//장비 상담 신청
	public ProductConsultResult productConsultRequest(
			ProductConsultDto productConsultDto, 
			List<ProductConsultDetailDto> pcdList) {
		
		//ProductCounsult에 insert
		int pcInsert = productConsultDao.insertProductConsult(productConsultDto);
		if(pcInsert == 0) {
			return ProductConsultResult.FAIL;
		}else {
			//ProductConsultDetail에 insert
			int pcdInsert = 0;
			for(ProductConsultDetailDto pcd : pcdList) {
				pcd.setPcNo(productConsultDto.getPcNo());
				pcd.setPcMcount(Integer.parseInt(pcd.getCount()));
				pcdInsert = productConsultDao.insertProductConsultModel(pcd);
				if(pcdInsert == 0) {
					return ProductConsultResult.FAIL_MODEL;
				}
			}
			
		}
		return ProductConsultResult.SUCCESS;
		
	}
}
