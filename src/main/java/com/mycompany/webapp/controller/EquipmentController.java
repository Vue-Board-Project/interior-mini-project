package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

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
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		String email = authentication.getName();	
		session.setAttribute("email", email);
		
		//상품 카트에 담기
		String product=request.getParameter("modelNumber");
		ArrayList list=(ArrayList)session.getAttribute("productlist");
		if(list==null) {
			list=new ArrayList();
		}
		list.add(product);
		session.setAttribute("productlist", list);

		ProductDto productDto=(ProductDto)session.getAttribute("productdto");
		String modelNum=request.getParameter("modelNumber");
		
		return "/equipment/equipment_detail";
	}
	
	@RequestMapping("/equipment/addCart")
	public String addCart(String modelNumber, Model model, Authentication authentication
			, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		//상품 정보 불러오기
		/*ProductDto detailProduct=productService.detailProduct(modelNumber);
		model.addAttribute("detailProduct", detailProduct);
		log.info(modelNumber);
		
		String email = authentication.getName();	
		session.setAttribute("email", email);
		
		//상품 카트에 담기
		String product=request.getParameter("modelNumber");
		ArrayList<ProductDto> list=(ArrayList<ProductDto>) session.getAttribute("cartlist");
		//첫 상품의 경우 새로운 카트 생성
		if(list==null) {
			list=new ArrayList<ProductDto>();
			session.setAttribute("cartlist", list);
		}else {
			session.setAttribute("cartlist", list);
		}
		
		
		int count=0;
		//새로운 상품을 담는 경우 해당 상품의 수량을 1개로 처리
		if(count==0) {
			ProductDto productnew=new ProductDto();
			productnew.setProductQuantity(1);
			list.add(productnew);
		}
		//동일한 상품을 담는 경우 해당 상품의 개수를 1개 추가
		
		ProductDto productQnt=new ProductDto();
		for(int i=0;i<list.size(); i++) {
			productQnt=(ProductDto) list.get(i);
			if(productQnt.getModelNumber().equals(email)) {
				count++;
				int orderQunitity=productQnt.getProductQuantity()+1;
				productQnt.setProductQuantity(orderQunitity);
			}
		}
		try {
			response.sendRedirect("/equipment/equipment_detail?modelNumber="+modelNumber);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		return "/equipment/addCart";
	}
	@RequestMapping("/equipment/shoppingcart_rentalandpurchase")
	public String shoppingcart_rentalandpurchase(Authentication authentication, HttpServletRequest request) {
		HttpSession session=request.getSession(true);
		/*String cartId = authentication.getName();
		ArrayList<ProductDto> cartList = (ArrayList<ProductDto>)session.getAttribute("cartlist");
		//out.print("cartList크기: "+ cartList.size());
		if(cartList == null){
			cartList = new ArrayList<ProductDto>();
			session.setAttribute("cartList", cartList);
		}
		log.info(cartList);
		int sum = 0; 
		for(int i=0; i<cartList.size(); i++){
			ProductDto product = cartList.get(i);
			// 소계 = 가격 * 수량
			int total = product.getPrice() * product.getProductQuantity();
			sum = sum + total;
		}*/
		return "/equipment/shoppingcart_rentalandpurchase";// view 이름만 전달
	}
	@RequestMapping("/equipment/dental_equipment_main")//겟
	public String dental_equipment_main(@RequestParam Map<String,Object> commandMap, 
			 ModelMap modelmap, Model model) {
	
			List<ProductDto> chairList=productService.selectchairlist();
			List<ProductDto> bestchairList=productService.selectbestlist();
			
			model.addAttribute("chairList",chairList);
			model.addAttribute("bestchairList",bestchairList);


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
		
				log.info(product.getMainimage().getOriginalFilename());
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

	@RequestMapping("/equipment/paymentpage")
	public String paymentpage() {
		return "/equipment/paymentpage";// view 이름만 전달
	}

	@RequestMapping("/equipment/paymentsuccess")
	public String paymentsuccess() {
		return "/equipment/paymentsuccess";// view 이름만 전달
	}

	
	
	@GetMapping("/equipment/display")
	   public ResponseEntity<byte[]> getImage(String fileName) {
	      // 반환 타입 : ResponseEntity 객체를 통해 body에 byte [] 데이터를 보내 / 파라미터 : '파일 경로' + '파일
	      // 이름'을 전달받아
	      log.info(" getImage()..........");
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
	         e.printStackTrace();
	      }
	      return result;
	   }
}
