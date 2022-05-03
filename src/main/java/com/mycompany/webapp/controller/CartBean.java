package com.mycompany.webapp.controller;

import java.util.ArrayList;

import com.mycompany.webapp.dto.product.ProductDto;

public class CartBean {
private ArrayList<ProductDto> cartList = new ArrayList<ProductDto>();
	
	public ArrayList<ProductDto> getcartList(){
		return cartList;
	}
	
	//상품 번호에 해당하는 상품 아이템이 없으면 -1 리턴,
	//있으면 해당 상품 아이템 객체의 리스트에서의 인덱스를 반환
	public int findIndexByNo(String itemNo) {
		int index = -1;
		
		// i = 리스트 인덱스 번호
		// index = 리스트에 존재하는 상품의 위치(인덱스)
		for (int i=0; i < cartList.size(); i++) {
			// 리스트에 i번째(인덱스)의 itemNo가 입력받은 itemNo와 일치했을 때,
			// index는 아이템의 위치를 반환해준다.
			if (cartList.get(i).getModelNumber().contentEquals(itemNo)) {
				 index = i ;
				 break;
			}
		}
		return index;
	}
	
	/*
	  장바구니에 상품 추가
	 */
	public void addItem(ProductDto productdto){
		cartList.add(productdto);	
	}
	

	 //장바구니에서 상품을 삭제
	public void removeItem(String itemNo) {
		//itemNo를 통해 해당 상품의 index를 받아옴
		int index = findIndexByNo(itemNo);
		//list에서 해당 index 객체 삭제
		cartList.remove(index);
	}
	
	//장바구니 담긴 상품 아이템 총액을 반환
	public int getTotalPrice() {
		int total = 0;
		
		for (int i = 0; i < cartList.size(); i++) {
			total += cartList.get(i).getPrice();
		}
		
		return total;
	}

	@Override
	public String toString() {
		return "CartBean [cartList=" + cartList + "]";
	}
}
