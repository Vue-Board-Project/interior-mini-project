package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.MypageDao;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.mypage.ReviewDto;
import com.mycompany.webapp.dto.product.AfterServiceDto;

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

	
}
