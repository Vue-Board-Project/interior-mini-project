package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.Logger;
import org.json.JSONObject;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.mycompany.webapp.dto.product.ProductConsultDetailDto;
import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.service.ProductService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@SessionAttributes({"cartForm"})
public class CartController {
	@Resource
	private ProductService productService;
	
	//세션 생성
	@ModelAttribute("cartForm")
	public List<ProductDto> getCartForm(){
		log.info("카트 세션 생성");
		List<ProductDto> cartForm=new ArrayList<ProductDto>();
		return cartForm;
	}
	
	//카트에 추가
	@PostMapping(value="/cartSessionAdd", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String addCartForm(@ModelAttribute("cartForm") List<ProductDto> cartList
			, String modelNum, String qua, Model model) {
		log.info("카트에 추가해요?");
		String result=null;
		for(ProductDto dto:cartList) {	
			if(dto.getModelNumber().equals(modelNum)) {
				log.info("카트에 동일한 장비 있음");
				result="wrong";
			}
		}
		//카트에 동일한 장비가 없을 경우
		if(result==null) {
			ProductDto productDto=new ProductDto();
			productDto.setModelNumber(modelNum);
			productDto.setCartQua(qua);
			cartList.add(productDto);
			model.addAttribute("cartForm", cartList);
			result="success";
			log.info("카트에 추가 완료");
		}
		//result  전송
		JSONObject jsonobject = new JSONObject();
		jsonobject.put("result", result);
		String json = jsonobject.toString();
		log.info("카트에 추가할 정보"+cartList);
		log.info(json);
		return json;
	}
	
	//카트 조회
	@RequestMapping("/equipment/shoppingcart_rentalandpurchase")
	public String shoppingcart_rentalandpurchase(@ModelAttribute("cartForm") List<ProductDto> cartList,
			Model model, String modelNum) {
		log.info(cartList);
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
		
		return "/equipment/shoppingcart_rentalandpurchase";

	}
	
	//카트에서 제품 삭제
	@PostMapping(value="/cartSessionRemove", produces="application/json; charset=UTF-8")
	@ResponseBody
	public void cartSessionRemove(String modelNum,
			@ModelAttribute("cartForm") List<ProductDto> cartList, Model model) {

		for(int i=0; i<cartList.size(); i++) {
			if(cartList.get(i).getModelNumber().equals(modelNum)) {
				cartList.remove(i);
			}
		}

		//장비 상담 창에 전송해줄 모델들 
		List<ProductDto> productList = new ArrayList<ProductDto>();
		if(cartList.size() != 0) {
			for(ProductDto dto : cartList) {
				ProductDto productDto = productService.detailProduct(dto.getModelNumber());
				productDto.setCartQua(dto.getCartQua());
				productList.add(productDto);
			}
		}
		model.addAttribute("productList", productList);
		model.addAttribute("cartForm", cartList);
		log.info(productList);
		log.info(cartList);
		
	}
	//카트 전체 삭제
	@PostMapping(value="/cartSessionAllRemove", produces="application/json; charset=UTF-8")
	@ResponseBody
	public void cartSessionAllRemove(SessionStatus sessionStatus,
			@ModelAttribute("cartForm") List<ProductDto> cartList, Model model) {
		sessionStatus.setComplete();
	}
	
	//수량 변경
	@PostMapping(value="/cartSessionUpdate", produces="application/json; charset=UTF-8")
	@ResponseBody
	public void cartSessionUpdate(String modelNum, String hey,
			@ModelAttribute("cartForm") List<ProductDto> cartList, Model model) {
		log.info("hey~~~~"+hey);
		for(int i=0;i<cartList.size();i++) {
			if(cartList.get(i).getModelNumber().equals(modelNum)) {
				cartList.get(i).setCartQua(hey);
			}
		}
		model.addAttribute("cartForm", cartList);
		log.info(cartList);
		/*	List<ProductDto> upproductList = new ArrayList<ProductDto>();
			for(ProductDto dto:cartList) {	
				if(dto.getModelNumber().equals(modelNum)) {
					log.info("hey~~~~2");
					ProductDto productDto = productService.detailProduct(dto.getModelNumber());
					productDto.setCartQua(hey);
					cartList.add(productDto);
				}
			}
			log.info("변경 되셨나요?"+ upproductList);
			model.addAttribute("productList", upproductList);
			model.addAttribute("cartForm", cartList);*/
		
	}
}