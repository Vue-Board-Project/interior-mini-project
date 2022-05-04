package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.interior.InteriorDto;
import com.mycompany.webapp.dto.interior.MainConsultDto;
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
		 return "/mypage/mypage_counseling";
	 }
	 
	 @Resource private MypageService mypageService;
	 
	 @GetMapping("/mypage_counseling") 
	 public String mypageCounselingFront(@RequestParam(defaultValue = "1") int pageNo,
			 							Authentication authentication, Model model){ 
		 
		 String email = authentication.getName();
		 UsersDto user = mypageService.getUserName(email);
		 model.addAttribute("user", user);
		 
		 
		 //인테리어 상담 내역 부분
		 int totalInteriorCounseling = mypageService.getTotalInteriorCounseling(email);
		 model.addAttribute("interiorChk", totalInteriorCounseling); //0이면 화면에 안 띄움
	
		 if(totalInteriorCounseling != 0) {
			 MainConsultDto mainConList = mypageService.getMpInteriorList(email); 
			 model.addAttribute("mainConList", mainConList);
		 }
		 
		 
		 //리모델링 상담 내역 부분
		 int totalRemodelingCounseling = mypageService.getTotalRemodelingCounseling(email);
		 model.addAttribute("remodelingChk", totalRemodelingCounseling);
		 
		 if(totalRemodelingCounseling != 0) {
			 MainConsultDto remodelCon = mypageService.getMpRemodeling(email);
			 model.addAttribute("remodelCon", remodelCon);
		 }
		 
		 //AS 진행 내역
		 int totalASCounseling = mypageService.getTotalASCounseling(email);
		 model.addAttribute("asChk", totalASCounseling);
		 
		 return "mypage/mypage_counseling";
	 }
	 /*	 
	 @GetMapping("/mypage_counseling/selectInteriorInfo") 
	 public String mypageCounselingEInterior(
			 @RequestParam(defaultValue = "1") int pageNo, Authentication authentication, Model model){ 
		 
		 //String email = authentication.getName();
		 String email = "gvhv@dgfv.sad";
		 Pager pager = new Pager(1, 1, mpinterior, pageNo, email);
		 model.addAttribute("pager", pager);
		 
		 List<MainConsultDto> mainConList = mypageService.getMpInteriorList(pager); 
		 model.addAttribute("mainConList", mainConList);
		 log.info("111111111111111111111111111111111111mainConList11111111111111111111111111111111111111");
	
		 return "mypage/mypage_counseling";
	 }
	*/
 
/* 현재 해야 할 것 : 프론트에서 json 추출*/
	 /*
	 @GetMapping(value = "/readInteriorList", produces = "application/json; charset=UTF-8")
	 @ResponseBody
	public String InteriorInfoList(@RequestParam(defaultValue = "1") int pageNo, Authentication authentication,
			HttpServletResponse response) throws Exception {
			
			log.info("실행");
			String email = authentication.getName();
			Pager pager = new Pager(1, 1, mpinterior, pageNo, email);
			
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("pager", pager);
			
			List<MainConsultDto> mainConList = mypageService.getMpInteriorList(pager); 
			
			log.info("mypage Interior List : " + mainConList);
			jsonObject.put("mainConList", mainConList);
			
			String json = jsonObject.toString();
			log.info("json TTTTTTTTTTTest : " + json);
		      
		    return json;		
		}*/
	 
	 
	 
	 /***** 		개인정보 수정 창			*******/
	 /*개인정보 수정 처음 데이터 읽어오는 코드*/
	@RequestMapping("/mypage_infosetting")
	public String mypageInfosetting(Authentication authentication, Model model) {
		String email = authentication.getName();
		UsersDto user = mypageService.getMpUserInfo(email);
		
		model.addAttribute("user", user);
		return "mypage/mypage_infosetting";
	}
	
	@PostMapping("/mypage_infosetting")
	public String mypageInfoUpdate(UsersDto users, Model model, Authentication authentication) {
		users.setEmail(authentication.getName());
		//users.setEmail("gvhv@dgfv.sad");	//sad 오류 시 복구를 위한 코드
		log.info(users.getPassword());
		log.info(users.getPostcode());
		log.info(users.getAddress());
		log.info(users.getAddressDetail());
		log.info(users.getEmail());
		
		int result = mypageService.updateUserInfo(users);
		if (result == 0) {
			model.addAttribute("error", "개인정보 수정에 실패했습니다. 다시 시도해 주세요.");
			return "redirect:/mypage/mypage_infosetting";
		}else {
			return "redirect:/mypage/mypage_infosetting";
		}
	}
	
	@PostMapping("/mypage_infosetting/delete")
	public String mypageInfoDelete(Authentication authentication, RedirectAttributes redirectAttr) {
		log.info("삭제합니다~");
		String email = authentication.getName();
		int result = mypageService.deleteUserInfo(email);
		
		if(result>0) {
			redirectAttr.addFlashAttribute("msg", "성공적으로 회원정보를 삭제했습니다.");
			SecurityContextHolder.clearContext();
			return "redirect:/";
		}else {
			redirectAttr.addFlashAttribute("msg", "회원정보삭제에 실패했습니다.");
			return "redirect:/";
		}
		
	}
	
	/*	구매내역 창	 */
	@RequestMapping("/mypage_orderlist")
	public String mypageOrderList() {
		
		return "mypage/mypage_orderlist";
	}
	
	 @GetMapping("/mypage_orderlist") 
	 public String mypageOrderListFront(String email, Authentication authentication,
			 							@RequestParam(defaultValue = "1") int pageNo, Model model){ 
		 email = "gvhv@dgfv.sad";
		 //이메일 주소 가져오는 코드
		 
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
