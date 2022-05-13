package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.mypage.ReviewDto;
import com.mycompany.webapp.dto.product.ProductCategoryDto;
import com.mycompany.webapp.dto.product.ProductDetailDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.service.ProductService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class EquipmentController {

	@Resource
	private ProductService productService;

	@RequestMapping("/equipment/CustomerService")
	public String customerService() {
		return "/equipment/CustomerService";// view 이름만 전달
	}
	@RequestMapping("/equipment/productResult")
	public String productResult() {
		return "/equipment/productResult";
	}
	
	//장비 상세(상담 제품)
	@RequestMapping("/equipment/equipment_detail_consult")
	public String equipment_detail_consult(String modelNumber, Model model) {
		ProductDto detailProduct=productService.detailProduct(modelNumber);
		List<ProductDetailDto> detailPhoto=productService.detailProductPhoto(modelNumber);
		productService.updatehits(modelNumber);
		model.addAttribute("detailPhoto", detailPhoto);
		model.addAttribute("detailProduct", detailProduct);
		return "/equipment/equipment_detail_consult";// view 이름만 전달
	}
	//장비 상세(구매 제품)
	@RequestMapping("/equipment/equipment_detail")
	public String equipment_detail(String modelNumber, Model model, Authentication authentication
			, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		//상품 정보 불러오기
		ProductDto detailProduct=productService.detailProduct(modelNumber);
		productService.updatehits(modelNumber);
		model.addAttribute("detailProduct", detailProduct);
		//리뷰 시작
		List<ReviewDto> reviewList=productService.selectReview(modelNumber);
		model.addAttribute("reviewList", reviewList);
		return "/equipment/equipment_detail";
	}
	
	//장비 메인창
	@RequestMapping(value ="/equipment/dental_equipment_main", produces = "application/json; charset=UTF-8")//겟
	public String dental_equipment_main( Model model, @RequestParam(value = "category", required = false) String category, HttpServletResponse response) throws IOException {
		
		//카테고리 리스트
		List<ProductCategoryDto> categoryList = new ArrayList<>();
		ProductCategoryDto productCategoryDto1 = new ProductCategoryDto();
		productCategoryDto1.setEnName("all");
		productCategoryDto1.setKoName("전체 상품");
		categoryList.add(productCategoryDto1);
		
		ProductCategoryDto productCategoryDto2 = new ProductCategoryDto();
		productCategoryDto2.setEnName("unitchair");
		productCategoryDto2.setKoName("유니트 체어");
		categoryList.add(productCategoryDto2);
		
		ProductCategoryDto productCategoryDto3 = new ProductCategoryDto();
		productCategoryDto3.setEnName("largecamera");
		productCategoryDto3.setKoName("대형 영상 장비");
		categoryList.add(productCategoryDto3);
		
		ProductCategoryDto productCategoryDto4 = new ProductCategoryDto();
		productCategoryDto4.setEnName("washingmachine");
		productCategoryDto4.setKoName("멸균 및 세척기");
		categoryList.add(productCategoryDto4);
		
		ProductCategoryDto productCategoryDto5 = new ProductCategoryDto();
		productCategoryDto5.setEnName("smallcamera");
		productCategoryDto5.setKoName("소형 영상 장비");
		categoryList.add(productCategoryDto5);
		
		ProductCategoryDto productCategoryDto6 = new ProductCategoryDto();
		productCategoryDto6.setEnName("etc");
		productCategoryDto6.setKoName("기타 장비");
		categoryList.add(productCategoryDto6);
		
        model.addAttribute("categoryList", categoryList);
        
        model.addAttribute("chkCategory",category);
        
		List<ProductDto> bestchairList=productService.selectbestlist();
		model.addAttribute("bestchairList",bestchairList);	
		
		//인기순
		List<ProductDto> productList=productService.selectpopularlist(category);
		model.addAttribute("chairList", productList);
				

		return "/equipment/dental_equipment_main";
	}
	//장비 정렬 및 카테고리 작업들
	@RequestMapping("/equipment/productListAjax")
	public String productList(Model model, @RequestParam(value = "category", required = false) String category, @RequestParam(value = "productSort", required = false) String sort, HttpServletResponse response) {
		log.info("컨트롤러 연결 됐냐???");
		log.fatal(sort);
		log.fatal(category);
		if(sort == null) {//인기순
			List<ProductDto> productList=productService.selectpopularlist(category);
			model.addAttribute("chairList", productList);
			
		} else if(sort.equals("reviews")) {//리뷰순
			List<ProductDto> productList=productService.selectreviewslist(category);
			model.addAttribute("chairList", productList);
			
		} else if(sort.equals("views")) {//조회순
			List<ProductDto> productList=productService.selectviewslist(category);
			model.addAttribute("chairList", productList);
			
		}  else if(sort.equals("popular")) {//판매량순
			List<ProductDto> productList=productService.selectpopularlist(category);
			model.addAttribute("chairList", productList);
		}  else if (sort.equals("new")) {//최신순
			log.info("새로운거 가보자고~~~~~~~~~~~");
			List<ProductDto> productList=productService.selectnewlist(category);
			model.addAttribute("chairList", productList);
		}
		return "/equipment/productList";
	}

	// 장비 추가 페이지
	@RequestMapping("/equipment/productAdd")
	public String productAdd() {
		log.info("되냐");
		return "/equipment/productAdd";
		
	}

	// product 데이터 추가
	@PostMapping("/equipment/productAdd")
	public String productAdd(ProductDto product) throws IOException {
		log.info("되냐1");

		log.info(product.getModelNumber());
		log.info(product.getProductName());
		log.info(product.getProductQuantity());
		log.info(product.getCategory());

				if (!product.getMainimage().isEmpty()) {
					product.setPattachoname(product.getMainimage().getOriginalFilename());
					product.setPattachtype(product.getMainimage().getContentType());
					product.setPattachsname(new Date().getTime() + "-" + product.getPattachoname());
					File file = new File("C:/Temp/product" + product.getPattachsname());
					product.getMainimage().transferTo(file);
					productService.insertproduct(product);			
				}
				/*try {
						Map<String, Object> hmap=new HashMap<String, Object>();
						hmap.put("mainImage", product.getMainimage().getBytes());
						productService.saveImage(hmap);
				}catch(Exception e) {
					e.printStackTrace();
				}*/


		return "redirect:/equipment/productAdd";
	}

	@RequestMapping("/equipment/paymentsuccess")
	public String paymentsuccess() {
		return "/equipment/paymentsuccess";// view 이름만 전달
	}

	
	
	@GetMapping("/equipment/display")
	   public ResponseEntity<byte[]> getImage(String fileName) {
	      // 반환 타입 : ResponseEntity 객체를 통해 body에 byte [] 데이터를 보내 / 파라미터 : '파일 경로' + '파일
	      // 이름'을 전달받아
	      //log.info(" getImage()..........");
	      File file = new File("c:\\Temp\\product\\"+ fileName);
	      ResponseEntity<byte[]> result = null;
	
	      try {
	
	         HttpHeaders header = new HttpHeaders();
	         header.add("Content-type", Files.probeContentType(file.toPath()));// 대상 파일의 MIME TYPE을 부여
	         // 대상 이미지 파일, header 객체, 상태 코드를 인자 값으로 부여한 생성자를 통해 ResponseEntity 객체를 생성하여 앞서
	         // 선언한 ResponseEntity 참조 변수에 대입
	         result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
	         // 대상 파일을 복사하여 Byte 배열로 반환해주는 클래스
	
	      } catch (IOException e) {
	         //e.printStackTrace();
	      }
	      return result;
	   }
}
