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
		 
		 return "mypage/counseling/mypage_counseling";
	 }
	 
	 @GetMapping("/mypage_interior_list") 
	 public String mypageCounselingList(@RequestParam(defaultValue = "1") int pageNo,
			 							Authentication authentication, Model model){ 
		 
		 String email = authentication.getName();
		 
		 UsersDto user = mypageService.getUserName(email);
		 model.addAttribute("user", user);
		 
		 int totalUserInteriorList = mypageService.getTotalUserInteriorList(email);
		 log.info("숫자 읽어오는지 확인 : " + totalUserInteriorList);
		 
		 Pager pager = new Pager(8, 4, totalUserInteriorList, pageNo, email);
		 model.addAttribute("pager", pager);
		 
		 List<MainConsultDto> userInteriorList = mypageService.getUserInteriorList(pager);
		 model.addAttribute("userInteriorList", userInteriorList);
		 
		 
		 return "mypage/counseling/mypage_counsel_detailList";
	 }
	 
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
 
	 /*인테리어 각 요소(팝업창으로) 읽어오기 */
		 @GetMapping(value = "/readInteriorList")
		public String InteriorInfoList(int selNum, Model model) throws Exception {

			MainConsultDto mainCon = mypageService.getMainConElement(selNum); 

			log.info("mypage Interior List : " + mainCon);
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
		public String mypageInteriorProgress(@RequestParam(defaultValue = "0") int consultNo,
				Authentication authentication, Model model){
		
			if (consultNo == 0) {
				String email = authentication.getName();
				consultNo = mypageService.getLatestInteriorNo(email);
			}
			
			log.info("no data Number : " + consultNo);
			
			InteriorProgressDto progress = mypageService.getProgressStep(consultNo);
			model.addAttribute("progress", progress);
			
			List<InteriorProgressFileDto> step1File =  mypageService.getStep1Files(consultNo);
			model.addAttribute("step1File", step1File);
			log.info("step1 file : " + step1File);
			
			List<SolutionDto> solution = mypageService.getSolutionList(consultNo);
			model.addAttribute("solution", solution);
			 
			return "/mypage/interiorProgress/mypage_interior_progress";
		}
		
		
		@GetMapping("/showImage")
		   public ResponseEntity<byte[]> getImage(String fileName) {
		      
		      log.info(" getImage()..........");
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
		
		@GetMapping("/step2")
		public String ajaxInteriorProgressStep2(int conNum, Model model){
			
			InteriorProgressDto step2 = mypageService.getProgressStep2(conNum);
			model.addAttribute("step2", step2);
			
			List<InteriorProgressFileDto> step2File =  mypageService.getStep2Files(conNum);
			model.addAttribute("step2File", step2File);
			
			
			return "mypage/interiorProgress/interiorProgressStep2";
		}
		
		@GetMapping("/step3")
		public String ajaxInteriorProgressStep3(int conNum, Model model){


			InteriorProgressDto step3 = mypageService.getProgressStep3(conNum);
			model.addAttribute("step3", step3);
			log.info("step3 : " + step3);
			
			List<InteriorProgressFileDto> step3File =  mypageService.getStep3Files(conNum);
			model.addAttribute("step3File", step3File);
			
			List<ReferenceModelDto> portfolioList = mypageService.getPortfolioList(conNum);
			model.addAttribute("portfolioList", portfolioList);
			
			return "mypage/interiorProgress/interiorProgressStep3";
		}
		
		@GetMapping("/step4")
		public String ajaxInteriorProgressStep4(int conNum, Model model){

			InteriorProgressDto step4 = mypageService.getProgressStep4(conNum);
			model.addAttribute("step4", step4);
	
			List<InteriorProgressFileDto> step4File =  mypageService.getStep4Files(conNum);
			model.addAttribute("step4File", step4File);
			
			return "mypage/interiorProgress/interiorProgressStep4";
		}
		
		@GetMapping("/step5")
		public String ajaxInteriorProgressStep5(int conNum, Model model){

			InteriorProgressDto step5 = mypageService.getProgressStep5(conNum);
			model.addAttribute("step5", step5);
	
			List<InteriorProgressFileDto> step5File =  mypageService.getStep5Files(conNum);
			model.addAttribute("step5File", step5File);
			
			return "mypage/interiorProgress/interiorProgressStep5";
		}
		
		@RequestMapping("/step6")
		public String ajaxInteriorProgressStep6(int conNum, Model model){

			int step6 =  mypageService.getProgressStep6(conNum);
			model.addAttribute("step6", step6);
			log.info("step 6 is ... " + step6);
			
			return "mypage/interiorProgress/interiorProgressStep6";
		}
			
		 
		//이전 방식
		@RequestMapping("/mypage_interior_progress/fileList")
		public String fileList() {
			
			log.info("파일을 읽어와야 합니다ㅠㅠ");
			return "mypageFileListView";
		}
		
		
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
		 log.info("구매내역 확인중 : " + totalOrderNum);
		 
		 Pager pager = new Pager(4, 4, totalOrderNum, pageNo, email);
		 model.addAttribute("pager", pager);
		 
		 List<PurchaseDto> orderList = mypageService.getPurchaseList(pager);
		 log.info("prob : " + orderList);

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

	
	
	@RequestMapping("/mypageReview")
	public String mypageReviewSelectReviews(Authentication authentication, Model model){
		
			String email = authentication.getName();
			
			List<PurchaseDetailDto> orderReview = mypageService.getOrderReview(email);
			log.info("write review : " + orderReview);
			model.addAttribute("orderReview", orderReview);
		/*
		 * String email = authentication.getName(); //리뷰 작성 전 int totalReviewBeforeNum =
		 * mypageService.getTotalReviewBeforeNum(email);
		 * 
		 * Pager pager = new Pager(4, 4, totalReviewBeforeNum, pageNo, email);
		 * model.addAttribute("pager", pager);
		 * 
		 * List<ReviewDto> reviewBefore = mypageService.getReviewBeforeList(pager);
		 * model.addAttribute("reviewBefore", reviewBefore);
		 * 
		 * 
		 * //리뷰 작성 후 int totalReviewAfterNum =
		 * mypageService.getTotalReviewAfterNum(email); pager = new Pager(4, 4,
		 * totalReviewAfterNum, pageNo, email); model.addAttribute("pager", pager);
		 * 
		 * List<ReviewDto> reviewAfter = mypageService.getReviewAfterList(pager);
		 * log.info("Eroor fix  :  " + reviewAfter); model.addAttribute("reviewAfter",
		 * reviewAfter);
		 */
		
		return "/mypage/mypage_review";
	}
	
	@RequestMapping("/mypageReviewAfter")
	public String mypageReviewSelectAfter(Authentication authentication, Model model){
		String email = authentication.getName();
		
		List<PurchaseDetailDto> reviewFin = mypageService.getOrderReviewFin(email);
		model.addAttribute("reviewFin", reviewFin);
		return "mypage/mypage_review_list";
	}
	
	
	@PostMapping("/insertReview")
	public String mypageReview(ReviewDto review, Authentication authentication){

		mypageService.insertReview(review);
		return "redirect:/mypage/mypageReview";
	}
	
	@PostMapping(value = "/insertImage", produces = "application/json; charset=UTF-8;")
	public ResponseEntity<List<ReviewDto>> insertImage(MultipartFile[] uploadFile) {
		
		log.info("uploadAjaxActionPOST..........");
		/*  전달 받은 파일이 이미지 인지 아닌지 체크 */
		for (MultipartFile multipartFile : uploadFile) {
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;
			try {
				type = Files.probeContentType(checkfile.toPath());
				log.info("MIME TYPE : " + type);
			} catch (IOException e) {
				e.printStackTrace();
			}
			if (!type.startsWith("image")) {// 이미지가 이닌 경우 400에러 생성
				List<ReviewDto> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);

			}
		}

		// 파일 제대로 들어왔는지 확인
		for (MultipartFile multipartFile : uploadFile) {
			log.info("-----------------------------------------------");
			log.info("파일 이름 : " + multipartFile.getOriginalFilename());
			log.info("파일 타입 : " + multipartFile.getContentType());
			log.info("파일 크기 : " + multipartFile.getSize());
		}

		// 오늘 날짜의 'yyyy/MM/dd ' 형식의 String 데이터를 얻기
		/*SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		String datePath = str.replace("-", File.separator);*/

		// 업로드를 수행하는 url 매핑 메서드(uploadAjaxActionPOST)에 파일을 저장할 기본적 경로
		String uploadFolder = "C:/Temp/mypage/";

		

		/* 이미저 정보 담는 객체 */
		List<ReviewDto> list = new ArrayList<ReviewDto>();

		for (MultipartFile multipartFile : uploadFile) {

			// 이미지 정보 객체
			ReviewDto dto = new ReviewDto();
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			dto.setFileName(uploadFileName);
			dto.setUploadPath(uploadFolder);
			/* uuid 적용 파일 이름 
			String uuid = UUID.randomUUID().toString();
			dto.setUuid(uuid);*/


			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadFolder, uploadFileName);

			/* 파일 저장 */
			try {
				multipartFile.transferTo(saveFile);

				/*썸네일 이미지 만들기 -> 파일 
				ImageIO: 이미지를 읽어오거나 생성(작성?) 할 수 있도록 도와주는 메서드
				BufferedImage : 이미지 데이터를 처리하거나 조작에 필요한 값과 메서드를 제공
				Graphics2D의 : 그림을 그리는데 필요로 한 설정값과 메서드를 제공하는 클래스*/
				File thumbnailFile = new File(uploadFolder, "s_" + uploadFileName);

				// 원본 이미지 파일을 BufferedImage 타입으로 변경
				// 1. 도화지 생성
				BufferedImage bo_image = ImageIO.read(saveFile);
				// 비율
				double ratio = 3;
				// 넓이 높이
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

		} // for

		ResponseEntity<List<ReviewDto>> result = new ResponseEntity<List<ReviewDto>>(list, HttpStatus.OK);
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
			   @RequestParam(defaultValue = "1") int pageNo, Model model) {
		
		   int totalAsNum = mypageService.getTotalDeviceAsListNum();
		   Pager pager = new Pager(5, 5, totalAsNum, pageNo);
		   model.addAttribute("pager", pager);
		   log.info("as 내역 : " + totalAsNum);
		   log.info("pageNo 입력 : "  + pageNo);
		   
		   List<AfterServiceDto> asList = mypageService.getASList(pager);
		   model.addAttribute("asList", asList);
		   
		   return "/mypage/mypage_device_AS";
		   
	 }
		
		@GetMapping("/device_AS/asDetail")
		public String mypageAsDetail(int receiptNo, Model model) {
				
		 log.info("000000000000000000 00000000 receiptNo 입력 : " + receiptNo);
		 AfterServiceDto asInfo = mypageService.getAsInfoDetail(receiptNo);
		 model.addAttribute("asInfo", asInfo);
				
		return "/mypage/mypage_As_Detail";
		}
		 
		   
	   
	
	
}
