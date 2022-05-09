package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.service.ProductService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class EquipmentController {

	@Resource
	private ProductService productService;

	@RequestMapping("/equipment/AfterService")
	public String afterService() {
		return "/equipment/AfterService";// view 이름만 전달
	}

	@RequestMapping("/equipment/CustomerService")
	public String customerService() {
		return "/equipment/CustomerService";// view 이름만 전달
	}

	@RequestMapping("/equipment/equipment_detail_consult")
	public String equipment_detail_consult(String modelNumber, Model model) {
		ProductDto detailProduct=productService.detailProduct(modelNumber);
		model.addAttribute("detailProduct", detailProduct);
		return "/equipment/equipment_detail_consult";// view 이름만 전달
	}

	@RequestMapping("/equipment/equipment_detail")
	public String equipment_detail(String modelNumber, Model model, Authentication authentication
			, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		//상품 정보 불러오기
		ProductDto detailProduct=productService.detailProduct(modelNumber);
		model.addAttribute("detailProduct", detailProduct);
		log.info(modelNumber);
		
		return "/equipment/equipment_detail";
	}
	
	
	@RequestMapping(value ="/equipment/dental_equipment_main", produces = "application/json; charset=UTF-8")//겟
	public String dental_equipment_main(@RequestParam Map<String,Object> commandMap, 
			 ModelMap modelmap, Model model, @RequestParam(value = "category", required = false) String category, HttpServletResponse response) throws IOException {
			
			log.info("컨트롤러 연결 됐냐???");
			log.info(category);
			
			/*if(category == null) {*/
				List<ProductDto> chairList=productService.selectchairlist();
				List<ProductDto> bestchairList=productService.selectbestlist();
				
				model.addAttribute("chairList",chairList);
				model.addAttribute("bestchairList",bestchairList);				
			/*} else {
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("category", category);
				String json = jsonObject.toString();
				response.setContentType("application/json; charset=UTF-8");
				//출력스트림 얻어냄
				PrintWriter pw = response.getWriter();
				pw.write(json);
				pw.flush();
				pw.close();				
			}*/
			

		//log.info(sort);
		//String sort=product.getSort();
		/*Map<String,Object> resultMap = productService.getByteImage(); 
		
		byte[] arr = (byte[]) resultMap.get("getByteImage");
		log.info("바이트"+arr);
		String getimageToString = Base64.getEncoder().encodeToString(arr);
		
		modelmap.addAttribute("imgSrc",getimageToString);

		/*Map<String, Object> chairmap = productService.getByteImage();
		byte[] imageContent = (byte[]) chairmap.get("mainimage");
		final HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_PNG);
		
		model.addAttribute("chairmap",new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK));*/
		return "/equipment/dental_equipment_main";
	}
	
	/*@RequestMapping(value = "/equipment/productListAjax", produces = "application/json; charset=UTF-8")*/
	@RequestMapping("/equipment/productListAjax")
	public String productList(Model model, @RequestParam(value = "category", required = false) String category, HttpServletResponse response) {
		log.info("컨트롤러 연결 됐냐???");
		log.info(category);
		List<ProductDto> productList=productService.selectproductlist(category);
		model.addAttribute("chairList", productList);
		return "/equipment/productList";
	}
	
	@RequestMapping("/equipment/allProductListAjax")
	public String allProductListAjax(Model model, @RequestParam(value = "sort", required = false) String sort, HttpServletResponse response) {
		log.info("컨트롤러 연결 됐냐???");
		log.info(sort);
		if(sort.equals("new")) {
			log.info("새로운거 가보자고~~~~~~~~~~~");
			List<ProductDto> allProductList=productService.selectchairlist();
			model.addAttribute("allProductList", allProductList);	
			
		} else if(sort.equals("reviews")) {//리뷰순
			List<ProductDto> allProductList=productService.selectreviewslist();
			model.addAttribute("allProductList", allProductList);	
			
		} else if(sort.equals("views")) {//조회순
			List<ProductDto> allProductList=productService.selectviewslist();
			model.addAttribute("allProductList", allProductList);
			
		}  else if(sort.equals("popular")) {//판매량순
			List<ProductDto> allProductList=productService.selectpopularlist();
			model.addAttribute("allProductList", allProductList);	
		}
		return "/equipment/allProductList";
	}

	
	/*@RequestMapping("/getByteImage")
	public ResponseEntity<byte[]> getByteImage() {
		Map<String, Object> map = productService.getByteImage();
	       byte[] imageContent = (byte[]) map.get("mainimage");
	       final HttpHeaders headers = new HttpHeaders();
	       headers.setContentType(MediaType.IMAGE_PNG);
	       return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK);
	}
	*/

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
					File file = new File("C:/osstem/mini_project_subin/" + product.getPattachsname());
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

	/*	@RequestMapping("/equipment/paymentpage")
		public String paymentpage() {
			return "/equipment/paymentpage";// view 이름만 전달
		}*/

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
