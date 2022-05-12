package com.mycompany.webapp.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.interior.InteriorDto;
import com.mycompany.webapp.dto.interior.MainConsultDto;
import com.mycompany.webapp.dto.mypage.InteriorProgressDto;
import com.mycompany.webapp.dto.mypage.InteriorProgressFileDto;
import com.mycompany.webapp.dto.mypage.ReferenceModelDto;
import com.mycompany.webapp.dto.mypage.ReviewDto;
import com.mycompany.webapp.dto.mypage.SolutionDto;
import com.mycompany.webapp.dto.product.AfterServiceDto;
import com.mycompany.webapp.dto.product.PurchaseDetailDto;
import com.mycompany.webapp.dto.product.PurchaseDto;
import com.mycompany.webapp.service.MypageService;
import com.mycompany.webapp.test.AttachImageDto;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/mypage")
@Log4j2
public class MyPageController {

	
	/****첫 창 상담창 *****/
	 @RequestMapping("/mypage_counseling") 
	 public String mypageCounseling(){ 
		 return "/mypage/mypage_counseling";
	 }
	 
	 @Resource private MypageService mypageService;
	 /* 마이페이지 상담내역창 */
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
		 
		 
		 return "mypage/counseling/mypage_counseling";
	 }
	 
	 @GetMapping("/recentAs")
	 public String recentAs(Authentication authentication, Model model) {
		 
		 String email = authentication.getName();
		 
		 AfterServiceDto asCon = mypageService.getAfterService(email);
		 model.addAttribute("asCon", asCon);
		 
		 return "mypage/counseling/mypage_As_recent_detail";
		 
	 }
	 
	 /* 마이페이지 상담 내 인테리어 목록창*/
	 @GetMapping("/mypage_interior_list") 
	 public String mypageCounselingList(@RequestParam(defaultValue = "1") int pageNo,
			 							Authentication authentication, Model model){ 
		 
		 String email = authentication.getName();
		 
		 UsersDto user = mypageService.getUserName(email);
		 model.addAttribute("user", user);
		 
		 int totalUserInteriorList = mypageService.getTotalUserInteriorList(email);
		 
		 Pager pager = new Pager(8, 4, totalUserInteriorList, pageNo, email);
		 model.addAttribute("pager", pager);
		 
		 List<MainConsultDto> userInteriorList = mypageService.getUserInteriorList(pager);
		 model.addAttribute("userInteriorList", userInteriorList);
		 
		 
		 return "mypage/counseling/mypage_counsel_detailList";
	 }
	 
	 /* 마이페이지 상담 내 리모델링 목록창*/
	 @GetMapping("/mypage_remodeling_list") 
	 public String mypageRemodelingList(@RequestParam(defaultValue = "1") int pageNo,
			 							Authentication authentication, Model model){ 
		 
		 String email = authentication.getName();
		 
		 UsersDto user = mypageService.getUserName(email);
		 model.addAttribute("user", user);
		 
		 int totalUserRemodelingList = mypageService.getTotalUserRemodelingList(email);
		 log.info("숫자 읽어오는지 확인22 : " + totalUserRemodelingList);
		 
			
		 Pager pager = new Pager(8, 4, totalUserRemodelingList, pageNo, email);
		 model.addAttribute("pager", pager);
		 
		 List<MainConsultDto> userRemodelingList = mypageService.getUserRemodelingList(pager);
		 model.addAttribute("userRemodelingList", userRemodelingList);
		 log.info("데이터 읽어오는지 확인: " + userRemodelingList);	 
		 
		 
		 return "mypage/counseling/mypage_remodeling_detailList";
	 }
	 
	 
 
	 /*인테리어 각 요소(팝업창으로) 읽어오기 */
		 @GetMapping(value = "/readInteriorList")
		public String InteriorInfoList(int selNum, Model model) throws Exception {

			MainConsultDto mainCon = mypageService.getMainConElement(selNum); 

			
			model.addAttribute("mainCon", mainCon);
		      
		    return "/mypage/counseling/myinfo_counsel_detail_popup";		
		}
	 
		 /*리모델링 각 요소(팝업창으로) 읽어오기 */
		 @GetMapping(value = "/readRemodelingList")
		public String selectRemodelingDetail(int selNum, Model model) throws Exception {

			MainConsultDto remodelingCon = mypageService.getremodelingElement(selNum); 

			model.addAttribute("remodelingCon", remodelingCon);
		      
		    return "/mypage/counseling/mypage_remodeling_popup_detail";		
		}
	 
		 
		 
		 
		 
		 /* 인테리어 진행 내역 */
		@RequestMapping("/mypage_interior_progress")
		public String mypageInteriorProgress(@RequestParam(defaultValue = "0") int consultNo, Authentication authentication, Model model){
			
			String email = authentication.getName();
			if (consultNo == 0) {
				int chkNull = mypageService.getCheckNull(email);
				if(chkNull == 0) {
					
					return "/mypage/interiorProgress/mypage_interior_progress";
				}
			}	
			
			consultNo = mypageService.getLatestInteriorNo(email);
			
			InteriorProgressDto progress = mypageService.getProgressStep(consultNo);
			model.addAttribute("progress", progress);
			
			List<InteriorProgressFileDto> step1File =  mypageService.getStep1Files(consultNo);
			model.addAttribute("step1File", step1File);
			
			
			List<SolutionDto> solution = mypageService.getSolutionList(consultNo);
			model.addAttribute("solution", solution);
			 
			return "/mypage/interiorProgress/mypage_interior_progress";
			
			
		}
		
		 /* 마이페이지 내 이미지 출력 창 */
		@GetMapping("/showImage")
		   public ResponseEntity<byte[]> getImage(String fileName) {
		      
		    
		      File file = new File("C:/Temp/mypage/"+ fileName);
		      ResponseEntity<byte[]> result = null;

		      try {

		         HttpHeaders header = new HttpHeaders();
		         header.add("Content-type", Files.probeContentType(file.toPath()));
		         result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		         

		      } catch (IOException e) {
		         e.printStackTrace();
		      }
		      return result;
		   }
		
		   
		   /* 마이페이지 내 인테리어 진행 내역 창(Step2) */
		@GetMapping("/step2")
		public String ajaxInteriorProgressStep2(int conNum, Model model){
			
			InteriorProgressDto step2 = mypageService.getProgressStep2(conNum);
			model.addAttribute("step2", step2);
			
			List<InteriorProgressFileDto> step2File =  mypageService.getStep2Files(conNum);
			model.addAttribute("step2File", step2File);
			
			
			return "mypage/interiorProgress/interiorProgressStep2";
		}
		
		/* 마이페이지 내 인테리어 진행 내역 창(Step3) */
		@GetMapping("/step3")
		public String ajaxInteriorProgressStep3(int conNum, Model model){


			InteriorProgressDto step3 = mypageService.getProgressStep3(conNum);
			model.addAttribute("step3", step3);
			
			
			List<InteriorProgressFileDto> step3File =  mypageService.getStep3Files(conNum);
			model.addAttribute("step3File", step3File);
			
			List<ReferenceModelDto> portfolioList = mypageService.getPortfolioList(conNum);
			model.addAttribute("portfolioList", portfolioList);
			
			return "mypage/interiorProgress/interiorProgressStep3";
		}
		
		/* 마이페이지 내 인테리어 진행 내역 창(Step4) */
		@GetMapping("/step4")
		public String ajaxInteriorProgressStep4(int conNum, Model model){

			InteriorProgressDto step4 = mypageService.getProgressStep4(conNum);
			model.addAttribute("step4", step4);
	
			List<InteriorProgressFileDto> step4File =  mypageService.getStep4Files(conNum);
			model.addAttribute("step4File", step4File);
			
			return "mypage/interiorProgress/interiorProgressStep4";
		}
		
		/* 마이페이지 내 인테리어 진행 내역 창(Step5) */
		@GetMapping("/step5")
		public String ajaxInteriorProgressStep5(int conNum, Model model){

			InteriorProgressDto step5 = mypageService.getProgressStep5(conNum);
			model.addAttribute("step5", step5);
	
			List<InteriorProgressFileDto> step5File =  mypageService.getStep5Files(conNum);
			model.addAttribute("step5File", step5File);
			
			return "mypage/interiorProgress/interiorProgressStep5";
		}
		
		/* 마이페이지 내 인테리어 진행 내역 창(Step6) */
		@RequestMapping("/step6")
		public String ajaxInteriorProgressStep6(int conNum, Model model){
			
			int ino6 = mypageService.getIno6(conNum);
			ReferenceModelDto step6 =  mypageService.getProgressStep6(ino6);
			model.addAttribute("step6", step6);
			
			
			return "mypage/interiorProgress/interiorProgressStep6";
		}
			
		 
		/* 마이페이지 내 인테리어 진행 내역 창 내 이미지 보이기 */
		@RequestMapping("/mypage_interior_progress/fileList")
		public String fileList() {
			
			return "mypageFileListView";
		}
		
		/* 마이페이지 내 인테리어 진행 내역 창 내 이미지 보이기 */
		@RequestMapping("/filedownload")
		public void filedownload(String fileName, HttpServletResponse response, @RequestHeader("User-Agent") String userAgent) throws Exception {
			//DB에서 가져올 정보
			String contentType = "application/pdf";
			String originalFilename = fileName;
			String saveFilename = fileName;
			
			//응답 내용의 데이터 타입을 응답 헤더에 추가
			response.setContentType(contentType);
			
			//다운로드할 파일명을 헤더에 추가
			if(userAgent.contains("Trident") || userAgent.contains("MSIE")) {
				//IE 브라우저일 경우
				originalFilename = URLEncoder.encode(originalFilename, "UTF-8");
			}else {
				//크롬, 엣지, 사파리인 경우
				originalFilename = new String(originalFilename.getBytes("UTF-8"), "ISO-8859-1");
			}
			response.setHeader("Content-Disposition", "attachment; filename = \"" + originalFilename + "\"");
			
			//파일 데이터를 응답 본문에 실기
			File file = new File("C:/Temp/mypage/" + saveFilename);
			if(file.exists()) {
				FileCopyUtils.copy(new FileInputStream(file), response.getOutputStream());
			}
		}
		
		
		 
	 /***** 		개인정보 수정 창			*******/
	 /*개인정보 수정 처음 데이터 읽어오는 코드*/
	@RequestMapping("/mypage_infosetting")
	public String mypageInfosetting(Authentication authentication, Model model) {
		String email = authentication.getName();
		UsersDto user = mypageService.getMpUserInfo(email);
		
		model.addAttribute("user", user);
		return "mypage/mypage_infosetting";
	}
	
	/* 개인정보 수정 이미지 값 대로 */
	@PostMapping("/mypage_infosetting")
	public String mypageInfoUpdate(UsersDto users, Model model, Authentication authentication) {
		users.setEmail(authentication.getName());
	
		int result = mypageService.updateUserInfo(users);
		if (result == 0) {
			model.addAttribute("error", "개인정보 수정에 실패했습니다. 다시 시도해 주세요.");
			return "redirect:/mypage/mypage_infosetting";
		}else {
			return "redirect:/mypage/mypage_infosetting";
		}
	}
	
	
	/*개인정보 삭제 창 */
	@PostMapping("/mypage_infosetting/delete")
	public String mypageInfoDelete(Authentication authentication, RedirectAttributes redirectAttr) {
		
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
	
	/*	****	구매내역 창		******	 */
	@RequestMapping("/mypage_orderlist")
	public String mypageOrderList() {
		
		return "mypage/mypage_orderlist";
	}
	
	
	 @GetMapping("/mypage_orderlist") 
	 public String mypageOrderListFront(Authentication authentication,
			 							@RequestParam(defaultValue = "1") int pageNo, Model model){ 
		 
		 String email = authentication.getName();
		 //이메일 주소 가져오는 코드
		 
		 int totalOrderNum = mypageService.getTotalOrderListNum(email);
		
		 
		 Pager pager = new Pager(8, 4, totalOrderNum, pageNo, email);
		 model.addAttribute("pager", pager);
		 
		 List<PurchaseDto> orderList = mypageService.getPurchaseList(pager);
	

		 model.addAttribute("orderList", orderList);
		 return "mypage/mypage_orderlist";
	 }
	 
	//구매내역 상세 창
	@GetMapping("/mypage_orderlist/detail")
	public String mypageOrderListDetail(int purchaseNumber,
			@RequestParam(defaultValue = "1") int pageNo, Model model) {
		
		 List<PurchaseDetailDto> orderDetail = mypageService.getOrderDetailList(purchaseNumber);
		 model.addAttribute("purchaseNumber", purchaseNumber);
		 model.addAttribute("orderDetail", orderDetail);

		return "/mypage/mypage_orderlist_detail";
	}
	 
	 
	//인테리어 보고 창
	@RequestMapping("/mypage_interior_report")
	public String mypageInteriorReport() {
		
		return "/mypage/mypage_interior_report";
	}

	
	//마이페이지 리뷰 창
	@RequestMapping("/mypageReview")
	public String mypageReviewSelectReviews(Authentication authentication, Model model,
												@RequestParam(defaultValue = "1") int pageNo){
		
		String email = authentication.getName();
		
		int totalOrderReviewList = mypageService.getTotalOrderReviewList(email);
		Pager pager = new Pager(3, 4, totalOrderReviewList, pageNo, email);
	    model.addAttribute("pager", pager);
		
		List<PurchaseDetailDto> orderReview = mypageService.getOrderReview(pager);
		
		model.addAttribute("orderReview", orderReview);
		
		int chkFin = mypageService.getTotalReviewFin(email);
		model.addAttribute("chkFin", chkFin);
		log.fatal("chkFin : " + chkFin);
		
		
		int totalReviewAfterNum = mypageService.getTotalReviewFin(email);
		
		Pager pager1 = new Pager(4, 4, totalReviewAfterNum, pageNo, email);
		model.addAttribute("pager1", pager1);
		
		
		 List<ReviewDto> reviewFin = mypageService.getOrderReviewFinList(pager1);
		 model.addAttribute("reviewFin", reviewFin);
		
		return "/mypage/mypage_review";
	}
	
	@RequestMapping("/mypageReviewFin")
	public String mypageReviewSelectReviewsFin(Authentication authentication, Model model,
												@RequestParam(defaultValue = "1") int pageNo){
		
		String email = authentication.getName();
		
		int totalReviewAfterNum = mypageService.getTotalReviewFin(email);
		
		Pager pager1 = new Pager(4, 4, totalReviewAfterNum, pageNo, email);
		model.addAttribute("pager1", pager1);
		
		
		 List<ReviewDto> reviewFin = mypageService.getOrderReviewFinList(pager1);
		 model.addAttribute("reviewFin", reviewFin);
		
		return "/mypage/mypage_review_fin";
	}
	
	/*   리뷰 입력   */
	@PostMapping("/insertReview")
	public String mypageReview(ReviewDto review, Authentication authentication){
		
		review.setEmail(authentication.getName());
	
		mypageService.insertReview(review);
		mypageService.updateReviewList(review);
		
		return "redirect:/mypage/mypageReview";
	}
	
	/*   이미지 서버에 올리는 코드   */
	@PostMapping(value = "/insertImage", produces = "application/json; charset=UTF-8;")
	public ResponseEntity<List<AttachImageDto>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {

		/*  전달 받은 파일이 이미지 인지 아닌지 체크 */
		for (MultipartFile multipartFile : uploadFile) {
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;
			try {
				type = Files.probeContentType(checkfile.toPath());
			
			} catch (IOException e) {
				e.printStackTrace();
			}
			if (!type.startsWith("image")) {// 이미지가 이닌 경우 400에러 생성
				List<AttachImageDto> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);

			}
		}


		String uploadFolder = "C:/Temp/mypage/";

		

		/* 이미저 정보 담는 객체 */
		List<AttachImageDto> list = new ArrayList<AttachImageDto>();

		for (MultipartFile multipartFile : uploadFile) {

			AttachImageDto dto = new AttachImageDto();
			String uploadFileName = multipartFile.getOriginalFilename();
			dto.setFileName(uploadFileName);
			dto.setUploadPath(uploadFolder);
			
			File saveFile = new File(uploadFolder, uploadFileName);

			/* 파일 저장 */
			try {
				multipartFile.transferTo(saveFile);

				
				File thumbnailFile = new File(uploadFolder, "s_" + uploadFileName);

				
				BufferedImage bo_image = ImageIO.read(saveFile);
				
				double ratio = 3;
				
				int width = (int) (bo_image.getWidth() / ratio);
				int height = (int) (bo_image.getHeight() / ratio);
				BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);// 개변수로 '넓이',
																										// '높이', '생성될
																										// 이미지의 타입'을 작성
				// 2. 도화지에 그림그리기
				Graphics2D graphic = bt_image.createGraphics();
				graphic.drawImage(bo_image, 0, 0, width, height, null);
				ImageIO.write(bt_image, "jpg", thumbnailFile);

			} catch (Exception e) {
				e.printStackTrace();
			}
			list.add(dto);

		} 
		
		ResponseEntity<List<AttachImageDto>> result = new ResponseEntity<List<AttachImageDto>>(list, HttpStatus.OK);
		return result;

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
		   @RequestParam(defaultValue = "1") int pageNo, Model model, Authentication authentication) {
	
		String email = authentication.getName();
		
	   int totalAsNum = mypageService.getTotalDeviceAsListNum();
	   Pager pager = new Pager(5, 5, totalAsNum, pageNo, email);
	   model.addAttribute("pager", pager);
	   
	   List<AfterServiceDto> asList = mypageService.getASList(pager);
	   model.addAttribute("asList", asList);
	   
	   return "/mypage/mypage_device_AS";
		   
	 }
		
		@GetMapping("/device_AS/asDetail")
		public String mypageAsDetail(int receiptNo, Model model) {
				
		 AfterServiceDto asInfo = mypageService.getAsInfoDetail(receiptNo);
		 model.addAttribute("asInfo", asInfo);
				
		return "/mypage/mypage_As_Detail";
		}
		 
		   
	   
	
	
}
