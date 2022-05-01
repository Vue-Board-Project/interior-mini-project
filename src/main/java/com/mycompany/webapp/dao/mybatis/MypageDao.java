package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.mypage.ReviewDto;
import com.mycompany.webapp.dto.product.AfterServiceDto;
import com.mycompany.webapp.dto.product.PurchaseDetailDto;
import com.mycompany.webapp.dto.product.PurchaseDto;

@Mapper
public interface MypageDao {

	

	public int insertReview(ReviewDto review);

	public UsersDto selectUserName(String email);

	public int deviceCount();

	public List<AfterServiceDto> selectByAsPage(Pager pager);

	public int latestAsNumber();

	public AfterServiceDto getAsInfoDetail(int receiptNo);

	public int getTotalOrderListNum(String email);
	
	public List<PurchaseDto> getPurchaseList(Pager pager);

	public int getTotalOrderDetailNum(int purchaseNumber);

	public List<PurchaseDetailDto> getOrderDetailList(Pager pager);

	public int getTotalReviewBeforeNum(String email);

	public List<ReviewDto> getReviewBeforeList(Pager pager);

	public int getTotalReviewAfterNum(String email);

	public List<ReviewDto> getReviewAfterList(Pager pager);

}
