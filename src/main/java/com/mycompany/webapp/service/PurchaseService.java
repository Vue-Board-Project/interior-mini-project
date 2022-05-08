package com.mycompany.webapp.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.webapp.dao.mybatis.ProductDao;
import com.mycompany.webapp.dao.mybatis.PurchaseDao;
import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.dto.product.PurchaseDetailDto;
import com.mycompany.webapp.dto.product.PurchaseDto;

import lombok.extern.log4j.Log4j2;
@Service
@Log4j2
public class PurchaseService {
	@Resource
	private PurchaseDao purchaseDao;
	@Resource
	private ProductDao productDao;
	@Resource
	private UsersDao usersDao;
	public enum PurchaseResult{
		SUCCESS, FAIL
	}
	//트랜잭션 도오저언
	public List<ProductDto> transferPurchase(List<ProductDto> cartList,
			String email) {
		log.info("저는 트랜잭션입니다!");
		List<ProductDto> productList=new ArrayList<ProductDto>();
		if(cartList.size()!=0) {
			for(ProductDto dto:cartList) {
				ProductDto productDto=productDao.selectDetailProduct(dto.getModelNumber());
				productDto.setCartQua(dto.getCartQua());
				productList.add(productDto);
			}	
		}
		return productList;
	}
	//purchaseDto insert
	public void insertPurchaseInfo(PurchaseDto purchase) {
		purchaseDao.insertPurchaseInfo(purchase);
	}
	/*@Transactional
	public PurchaseResult PurchaseRequest(List<ProductDto> cartList, PurchaseDto purchase,
			Authentication authentication) {
		//유저 정보
		String email=authentication.getName();
		UsersDto user=usersDao.selectByEmail(email);
		
		//구매할 제품 정보
		List<ProductDto> productList=new ArrayList<ProductDto>();
		if(cartList.size()!=0) {
			for(ProductDto dto:cartList) {
				ProductDto productDto=productDao.selectDetailProduct(dto.getModelNumber());
				productDto.setCartQua(dto.getCartQua());
				productList.add(productDto);
			}	
		}
		
		
		//purchaseDetail db insesrt
		int purchseDetialInsert=0;
		List<PurchaseDetailDto> dpurList=new ArrayList<PurchaseDetailDto>();
		purchseDetialInsert=purchaseDao.insertPurchaseDetailInfo(null);
		for(PurchaseDetailDto puddto:dpurList) {
			PurchaseDetailDto purchaseDetailDto=null;
			purchaseDetailDto.setPurchaseNumber(null);
			purchaseDetailDto.setModelNumber(null);
			purchaseDetailDto.setModelNumber(null);
			purchaseDetailDto.setDetailPrice(null);
		}
		//product db update(재고 빼기, 판매량 증가 시키기)
		int updateProduct=purchaseDao.updateProductInfo(null);
		for(ProductDto prdto:cartList) {
			//prdto.set
		}
		if(purchseInsert==0 || purchseDetialInsert==0||updateProduct==0) {
			return PurchaseResult.FAIL;
		}
		return PurchaseResult.SUCCESS;
	}*/
}
