package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class MyPageController {
	
	@RequestMapping("/mypage/mypage_counseling")
	public String mypageCounseling() {
		log.info("구매내역");
		
		return "mypage/mypage_counseling";//view 이름만 전달
	}
	
	@RequestMapping("/mypage/myinfo_counsel_popup")
	public String mypagePopup() {
		
		return "mypage/myinfo_counsel_popup";
	}
	
	@RequestMapping("/mypage/mypage_infosetting")
	public String mypageInfosetting() {
		
		return "mypage/mypage_infosetting";
	}

	@RequestMapping("/mypage/mypage_orderlist")
	public String mypageOrderList() {
		
		return "mypage/mypage_orderlist";
	}
	
	@RequestMapping("/mypage/mypage_interior_report")
	public String mypageInteriorReport() {
		
		return "/mypage/mypage_interior_report";
	}

}
