package com.mycompany.webapp.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.dto.product.PurchaseDto;
import com.mycompany.webapp.service.ProductConsultService;
import com.mycompany.webapp.service.ProductService;
import com.mycompany.webapp.service.PurchaseService;
import com.mycompany.webapp.service.PurchaseService.PurchaseResult;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@SessionAttributes({ "cartForm", "payInfoForm" })
public class PaymentController {
	@Resource
	private PurchaseService purchaseService;
	
	@Resource
	private ProductService productService;
	
	@Resource
	private ProductConsultService pcService;
	
	@ModelAttribute("payInfoForm")
	public List<PurchaseDto> getPayInForm(){
		log.info("구매 정보세션 생성");
		List<PurchaseDto> payInfoForm = new ArrayList<PurchaseDto>();
		return payInfoForm;
	}
	//상품 상세보기 창에서 주문 페이지로 데이터 전송
	@PostMapping(value="/equipment/detailToPayment")
	public String detailToPayment(String purchaseModelNumber, String countQua, String purchasePrice,
			Model model,
			Authentication authentication) {
		String email=authentication.getName();
		UsersDto userDto=pcService.getUser(email);
		log.info("주문창으로 상품 데이터 전송");
		List<ProductDto> productList=new ArrayList<ProductDto>();
		ProductDto productDto=productService.detailProduct(purchaseModelNumber);
		productDto.setCartQua(countQua);
		productList.add(productDto);
		log.info(productList);
		model.addAttribute("user", userDto);
		model.addAttribute("purchasePrice", purchasePrice);
		model.addAttribute("productList", productList);
		model.addAttribute("purchaseModelNumber", purchaseModelNumber);
		model.addAttribute("countQua", countQua);
		return "/equipment/paymentpage";
	}
	// 장바구니에서 주문 페이지로 데이터 전송
	@PostMapping(value = "/equipment/cartToPayment")
	public String cartToPayment(@ModelAttribute("cartForm") List<ProductDto> cartList, String sum,
			Model model, Authentication authentication) throws IOException {
		String email=authentication.getName();
		UsersDto userDto=pcService.getUser(email);
		model.addAttribute("user", userDto);
		log.info(sum);
		model.addAttribute("sum", sum);
		List<ProductDto> productList=new ArrayList<ProductDto>();
		if(cartList.size()!=0) {
			for(ProductDto dto:cartList) {
				ProductDto productDto=productService.detailProduct(dto.getModelNumber());
				productDto.setCartQua(dto.getCartQua());
				productList.add(productDto);
			}
			model.addAttribute("productList", productList);
			log.info(productList);
		}
		
		log.info("결제 페이지로 잘 넘어 오셨죠?"+cartList);
		return "/equipment/paymentpage";
	}
	@PostMapping(value="paymentVerify")
	public String paymentVerify(List<ProductDto> cartList, PurchaseDto purchase,
			Authentication authentication) {
		log.info("결제를 db에 전송하는게 내 꿈이야");
		String email=authentication.getName();
		PurchaseResult presult=purchaseService.PurchaseRequest(cartList, purchase, authentication);
		if(presult==PurchaseResult.FAIL) {
			//어디로..... 가야하더라
		}else {
			
		}
		return "redirect:/equipment/paymentpage";
	}
}
