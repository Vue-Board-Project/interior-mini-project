package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.MypageDao;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.mypage.ReviewDto;
import com.mycompany.webapp.dto.product.AfterServiceDto;
import com.mycompany.webapp.dto.product.PurchaseDetailDto;
import com.mycompany.webapp.dto.product.PurchaseDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class MypageService {
	
	@Resource
	private MypageDao mypageDao;
	
	public void insertReview(ReviewDto review){
		log.info("hhhhh " + review);
		mypageDao.insertReview(review);
	}

	public UsersDto getUserName(String email) {
		log.info("read user's name info : " + email);
		return mypageDao.selectUserName(email);
	}

	public List<AfterServiceDto> getASList(Pager pager) {
		
		return mypageDao.selectByAsPage(pager);
	}

	public int getTotalDeviceAsListNum() {
		
		return mypageDao.deviceCount();
	}

	public int getLatestAsNumber() {
		log.info("no null : " + mypageDao.latestAsNumber());
		return mypageDao.latestAsNumber();
	}

	public AfterServiceDto getAsInfoDetail(int receiptNo) {
		// TODO Auto-generated method stub
		return mypageDao.getAsInfoDetail(receiptNo);
	}
	
	public int getTotalOrderListNum(String email) {
		// TODO Auto-generated method stub
		return mypageDao.getTotalOrderListNum(email);
	}


	public List<PurchaseDto> getPurchaseList(Pager pager) {
		// TODO Auto-generated method stub
		return mypageDao.getPurchaseList(pager);
	}

	public int getTotalOrderDetailNum(int purchaseNumber) {
		return mypageDao.getTotalOrderDetailNum(purchaseNumber);
		
	}

	
	 public List<PurchaseDetailDto> getOrderDetailList(Pager pager) { 
	
		 log.info("serviceIntPurchaseNumber : " + pager.getIntPurchaseNumber());
		 return mypageDao.getOrderDetailList(pager);
	 }

	public int getTotalReviewBeforeNum(String email) {
		
		return mypageDao.getTotalReviewBeforeNum(email);
	}

	public List<ReviewDto> getReviewBeforeList(Pager pager) {
		// TODO Auto-generated method stub
		return mypageDao.getReviewBeforeList(pager);
	}

	public int getTotalReviewAfterNum(String email) {
		// TODO Auto-generated method stub
		return mypageDao.getTotalReviewAfterNum(email);
	}

	public List<ReviewDto> getReviewAfterList(Pager pager) {
		// TODO Auto-generated method stub
		return mypageDao.getReviewAfterList(pager);
	}
	 

	
	
}
