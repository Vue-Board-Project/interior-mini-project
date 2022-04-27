package com.mycompany.webapp.dao.mybatis;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.mypage.ReviewDto;

@Mapper
public interface MypageReviewDao {

	public int insertReview(ReviewDto review);
}
