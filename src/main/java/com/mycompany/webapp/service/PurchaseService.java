package com.mycompany.webapp.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.webapp.dao.mybatis.ProductDao;
import com.mycompany.webapp.dao.mybatis.PurchaseDao;
import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.product.AfterServiceDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.dto.product.PurchaseDetailDto;
import com.mycompany.webapp.dto.product.PurchaseDto;
import com.mycompany.webapp.exception.ProductExceptionHandler;

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
	public int insertPurchaseDetailInfo(PurchaseDetailDto purchaseDetail) {
		return purchaseDao.insertPurchaseDetailInfo(purchaseDetail);

	}
	public int updateProductInfo(ProductDto product) {
		return purchaseDao.updateProductInfo(product);
	}
	
	/*	//as에서 불러오는 구매내역
		public ProductDto asVerifyProduct(String email) {
			return purchaseDao.asVerifyProduct(email);
		}
		*/
	//as db insert
	public void insertAS(AfterServiceDto after) {
		
		purchaseDao.insertAS(after);
					
	}
	//장바구니에서 구매 하는 트랜잭션 서비스
	@Transactional
	public void PurchaseRequest(List<ProductDto> cartList, PurchaseDto purchaseDto) {
		
		int pResult = purchaseDao.insertPurchaseInfo(purchaseDto);
		if(pResult == 0) {
			//구매 저장이 안되었을 경우
			throw new ProductExceptionHandler("구매 저장 실패");
		}
		
		//purchasedetail insert
		for(ProductDto pro :cartList) {
			PurchaseDetailDto pd = new PurchaseDetailDto();
			pd.setIntPurchaseNumber(purchaseDto.getPurchaseNumber());
			pd.setStringModelNumber(pro.getModelNumber());
			pd.setModelPurchaseQuantity(pro.getCartQua());
			int pdResult =  purchaseDao.insertPurchaseDetailInfo(pd);
			if(pdResult == 0) {
				//구매 디테일저장 실패
				throw new ProductExceptionHandler("구매 저장 실패");
			}
			
			int rest = pro.getProductQuantity() - Integer.parseInt(pro.getCartQua());
			pro.setProductQuantity(rest);
			int proAdd = pro.getProductSalesVolume() + Integer.parseInt(pro.getCartQua());
			pro.setProductSalesVolume(proAdd);
			int proResult =  purchaseDao.updateProductInfo(pro);
			if(proResult == 0) {
				//구매에 대한 제품 개수 반영 실패
				throw new ProductExceptionHandler("구매에 대한 제품 개수 반영 실패");
			}
			log.info("실행 횟수만큼");
			
		}
			//sessionStatus.setComplete();
		
	}
	
	public List<PurchaseDto> selectPurchaseInfo(String stringEmail) {
		return purchaseDao.selectPurchaseInfo(stringEmail);
	}
	public List<PurchaseDetailDto> selectpurchaseDetailInfo(int purchaseNumber) {
		// TODO Auto-generated method stub
		return purchaseDao.selectpurchaseDetailInfo(purchaseNumber);
	}
	public ProductDto selectProductInfo(String modelNumber) {
		return purchaseDao.selectProductInfo(modelNumber);
	}

}
