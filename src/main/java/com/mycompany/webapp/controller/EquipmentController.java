package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EquipmentController {
	
	@RequestMapping( "/equipment/AfterService")
	public String afterService() {
		return "/equipment/AfterService";//view 이름만 전달
	}
	
	@RequestMapping( "/equipment/CustomerService")
	public String customerService() {
		return "/equipment/CustomerService";//view 이름만 전달
	}
	@RequestMapping( "/equipment/equipment_k3chair_detail")
	public String equipment_k3chair_detail() {
		return "/equipment/equipment_k3chair_detail";//view 이름만 전달
	}
	@RequestMapping( "/equipment/dental_equipment_main")
	public String dental_equipment_main() {
		return "/equipment/dental_equipment_main";//view 이름만 전달
	}
	@RequestMapping( "/equipment/paymentpage")
	public String paymentpage() {
		return "/equipment/paymentpage";//view 이름만 전달
	}
	@RequestMapping( "/equipment/paymentsuccess")
	public String paymentsuccess() {
		return "/equipment/paymentsuccess";//view 이름만 전달
	}
	@RequestMapping( "/equipment/shoppingcart_rentalandpurchase")
	public String shoppingcart_rentalandpurchase() {
		return "/equipment/shoppingcart_rentalandpurchase";//view 이름만 전달
	}
}

