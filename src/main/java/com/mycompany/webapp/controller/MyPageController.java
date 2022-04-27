package com.mycompany.webapp.controller;

import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.webapp.dto.mypage.ReviewDto;
import com.mycompany.webapp.service.MypageService;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/mypage")
@Log4j2
public class MyPageController {
	
	
	 @RequestMapping("/mypage_counseling") 
	 public String mypageCounseling(){ 
		 log.info("구매내역");
		 return "mypage/mypage_counseling";
	 }
	 
	 @Resource private MypageService mypageService;
	 
	/*
	 * @Resource private MypageService mypageService;
	 * 
	 * @GetMapping("/mypage/mypage_counseling") public String
	 * mypageCounseling(String email) { log.info("구매내역");
	 * 
	 * return "mypage/mypage_counseling";//view 이름만 전달 }
	 */
	
	@RequestMapping("/myinfo_counsel_popup")
	public String mypagePopup() {
		
		return "mypage/myinfo_counsel_popup";
	}
	
	@RequestMapping("/mypage_infosetting")
	public String mypageInfosetting() {
		
		return "mypage/mypage_infosetting";
	}

	@RequestMapping("/mypage_orderlist")
	public String mypageOrderList() {
		
		return "mypage/mypage_orderlist";
	}
	
	@RequestMapping("/mypage_interior_report")
	public String mypageInteriorReport() {
		
		return "/mypage/mypage_interior_report";
	}

	
	@RequestMapping("/mypage_interior_progress")
	public String mypageInteriorProgress() {
		return "/mypage/mypage_interior_progress";
	}
	@RequestMapping("/mypageReview")
	public String mypageReviewPage() {
		
		return "/mypage/mypage_review";
	}
	
	//@PostMapping("/mypage/mypage_review")
	//@RequestMapping(value = "/mypage/mypage_review", method = RequestMethod.POST)
	@PostMapping("/mypageReview")
	public String mypageReview(ReviewDto review){
		log.info("작동확인");
		log.info(review.getReviewTitle());
		log.info(review.getReviewContent());
		return "redirect:/";
	}
	
	@RequestMapping("/popupSample")
	public String mypagePopupSample() {
		return "/mypage/mypage_popup_practice";
	}
	
	
	@RequestMapping("/device_AS")
	public String mypageDeviceAS() {
		return "/mypage/mypage_device_AS";
	}
}
