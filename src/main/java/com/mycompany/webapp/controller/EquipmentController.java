package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.dao.mybatis.ProductDao;
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

	@RequestMapping("/equipment/equipment_k3chair_detail")
	public String equipment_k3chair_detail() {
		return "/equipment/equipment_k3chair_detail";// view 이름만 전달
	}

	@RequestMapping("/equipment/equipment_k5chair_detail")
	public String equipment_k5chair_detail() {
		return "/equipment/equipment_k5chair_detail";// view 이름만 전달
	}

	@RequestMapping("/equipment/dental_equipment_main")
	public String dental_equipment_main() {
		return "/equipment/dental_equipment_main";// view 이름만 전달
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

		log.info(product.getMainImage().getOriginalFilename());
		if (!product.getMainImage().isEmpty()) {
			product.setPattachoname(product.getMainImage().getOriginalFilename());
			product.setPattachtype(product.getMainImage().getContentType());
			product.setPattachsname(new Date().getTime() + "-" + product.getPattachoname());
			File file = new File("C:/osstem/mini_project_subin/" + product.getPattachsname());
			product.getMainImage().transferTo(file);
			productService.insertproduct(product);		}

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

	@RequestMapping("/equipment/shoppingcart_rentalandpurchase")
	public String shoppingcart_rentalandpurchase() {
		return "/equipment/shoppingcart_rentalandpurchase";// view 이름만 전달
	}
}
