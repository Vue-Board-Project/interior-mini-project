package com.mycompany.webapp.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.mypage.ReviewDto;
import com.mycompany.webapp.dto.product.AfterServiceDto;
import com.mycompany.webapp.dto.product.PurchaseDetailDto;
import com.mycompany.webapp.dto.product.PurchaseDto;
import com.mycompany.webapp.service.MypageService;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/mypage")
@Log4j2
public class MyPageController {
	
	/****첫 창 상담창 *****/
	 @RequestMapping("/mypage_counseling") 
	 public String mypageCounseling(){ 
		 log.info("구매내역");
		 return "mypage/mypage_counseling";
	 }
	 
	 @Resource private MypageService mypageService;
	 
	 @GetMapping("/mypage_counseling") 
	 public String mypageCounselingFront(String email, Model model){ 
		 email = "gvhv@dgfv.sad";
		 UsersDto user = mypageService.getUserName(email);
		 model.addAttribute("user", user);
		 return "mypage/mypage_counseling";
	 }
	
	
	@RequestMapping("/mypage_infosetting")
	public String mypageInfosetting() {
		
		return "mypage/mypage_infosetting";
	}

	/*	구매내역 창	 */
	@RequestMapping("/mypage_orderlist")
	public String mypageOrderList() {
		
		return "mypage/mypage_orderlist";
	}
	
	 @GetMapping("/mypage_orderlist") 
	 public String mypageOrderListFront(String email, 
			 							@RequestParam(defaultValue = "1") int pageNo, Model model){ 
		 email = "gvhv@dgfv.sad";
		 int totalOrderNum = mypageService.getTotalOrderListNum(email);
		 
		 Pager pager = new Pager(4, 4, totalOrderNum, pageNo, email);
		 model.addAttribute("pager", pager);
		 
		 List<PurchaseDto> orderList = mypageService.getPurchaseList(pager);

		 model.addAttribute("orderList", orderList);
		 return "mypage/mypage_orderlist";
	 }
	 
	//구매내역 상세 창
	 
	@GetMapping("/mypage_orderlist/detail")
	public String mypageOrderListDetail(int purchaseNumber,
			@RequestParam(defaultValue = "1") int pageNo, Model model) {
		
		
		 int totalOrderDetailNum = mypageService.getTotalOrderDetailNum(purchaseNumber);
		 log.info("totalOrderDetailNum : " + totalOrderDetailNum);
		 
		
		 Pager pager = new Pager(4, 4, totalOrderDetailNum, pageNo, purchaseNumber);
		 model.addAttribute("pager", pager);
		 
		 List<PurchaseDetailDto> orderDetail = mypageService.getOrderDetailList(pager);
		 log.info("purchase Number : "  + purchaseNumber);
		 log.info("111111111000011111111111111 : " + orderDetail);
		 model.addAttribute("orderDetail", orderDetail);

		return "/mypage/mypage_orderlist_detail";
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
	
	//@GetMapping("/mypageReview") 
	@RequestMapping(value = "/mypageReview", method = {RequestMethod.GET, RequestMethod.POST})
	public String mypageReviewSelectReviews(String email,
			@RequestParam(defaultValue = "1") int pageNo, Model model){
		email = "gvhv@dgfv.sad";
		//리뷰 작성 전
		int totalReviewBeforeNum = mypageService.getTotalReviewBeforeNum(email);
		log.info("노래 추천 받습니다 : " + totalReviewBeforeNum);
		
		Pager pager = new Pager(4, 4, totalReviewBeforeNum, pageNo, email);
		model.addAttribute("pager", pager);
		
		List<ReviewDto> reviewBefore = mypageService.getReviewBeforeList(pager);
		log.info("babazooka! : " + reviewBefore);
		model.addAttribute("reviewBefore", reviewBefore);
		
		
		//리뷰 작성 후
		int totalReviewAfterNum = mypageService.getTotalReviewAfterNum(email);
		log.info("아이돌 추천 받습니다 : " + totalReviewAfterNum);
		pager = new Pager(4, 4, totalReviewAfterNum, pageNo, email);
		model.addAttribute("pager", pager);
		
		List<ReviewDto> reviewAfter = mypageService.getReviewAfterList(pager);
		model.addAttribute("reviewAfter", reviewAfter);
		log.info("AfterReview : " + reviewAfter);
		return "/mypage/mypage_review";
	}
	
	@RequestMapping(value = "/mypageReview/insertReview", method = RequestMethod.POST)
	public String mypageReview(ReviewDto review){
		log.info("작동확인");
		log.info(review.getReviewTitle());
		log.info(review.getReviewContent());
		review.setEmail("'gvhv@dgfv.sad'");
		review.setPurchaseNumber(1);
		review.setModelNumber("uc0001gre");
		mypageService.insertReview(review);
			
		return "redirect:/";
	}
	
	@RequestMapping("/popupSample")
	public String mypagePopupSample() {
		return "/mypage/mypage_popup_practice";
	}
	
	/* 장비 AS 창 */
	@RequestMapping("/device_AS")
	public String mypageDeviceAS() {
		return "/mypage/mypage_device_AS";
	}
	
	
	@GetMapping("/device_AS")
	   public String mypageDeviceASList(
			   @RequestParam(defaultValue = "1") int pageNo, 
			   @RequestParam(defaultValue = "10") int receiptNo, Model model) {
		
		   int totalAsNum = mypageService.getTotalDeviceAsListNum();
		   Pager pager = new Pager(5, 5, totalAsNum, pageNo);
		   model.addAttribute("pager", pager);
		   log.info("as 내역 : " + totalAsNum);
		   log.info("pageNo 입력 : "  + pageNo);
		   
		   List<AfterServiceDto> asList = mypageService.getASList(pager);
		   model.addAttribute("asList", asList);
		   
		   log.info("receiptNo 입력 : "  + receiptNo);
		   AfterServiceDto asInfo = mypageService.getAsInfoDetail(receiptNo);
		   model.addAttribute("asInfo", asInfo);
			 
		   return "/mypage/mypage_device_AS";
		   //내용 출력
		   
		   
		   /*
		    * 가장 최근의 일을 출력하도록 설계했으나 현재 null 오류가 계속 나서 클릭 이전엔 빈칸으로 남겨두도록 함.
		    * 수정시 최근의 값을 가져오도록 코드 짜기.
		    */
		  
		   //디바이스 AS 내용 
		   /*
		   if(receiptNo == 0) {
			   log.info("AS 창 내 확인");
			   receiptNo = mypageService.getLatestAsNumber();
		   }*/
		   
	   }
	
	
}
