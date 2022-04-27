package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.MypageReviewDao;
import com.mycompany.webapp.dto.mypage.ReviewDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class MypageService {
	
	@Resource
	private MypageReviewDao mypageReviewDao;
	
	public void insertReview(ReviewDto review){
		log.info("hhhhh " + review);
		mypageReviewDao.insertReview(review);
	}

}
