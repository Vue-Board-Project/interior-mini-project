<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<link href="${pageContext.request.contextPath}/resources/css/equipment/shoppingcart_rentalandpurchase.css" rel="stylesheet" type="text/css"/>
    <div id="shoppingCart_wrapper">
        
        <div id="shoppingCart_content">
            <div id="shoppingCart_content_left">
                <div id="purchase_cart_list">
                    <ul id=""class="nav nav-tabs">
                        <li class="nav-item">
                          <p id="purchase_cart_count" class="nav-link active">구매(<a id="modelCount" style="color: red;"></a>)</p> <!--n은 나중에 카트 안의 개수 입력 받자구!-->
                        </li>
                    </ul>
                    <div style="background-color: #ffffff;">
                        <div id="cart_all_select1">
                            <input id="cartAllCheck" type='checkbox' class="cartcheck" name='purchase_cart_select' value='selectall' onclick='selectAll(this)' checked="chekced" style="width: 30px;"/> <b>전체 선택</b>
                            <button type="button" class="btn" onclick="javascript:removeCartAllSession()">전체삭제</button>
                            <br />
                        </div>
                        
                        <hr>
                        
                        <div id="p_cart1" class="p_cart">
                        <c:choose>
                        <c:when test="${empty productList}">
                        	<div style="margin-bottom: 100px;">장바구니에 담긴 상품이 없습니다.</div>
                        </c:when>
                        	<c:otherwise>
		                       <c:forEach items="${productList}" var="cartproduct">
		                        <input class="cartcheck" type='checkbox' name='purchase_cart_select'  onclick='selectcart(this)'value='${cartproduct.price}' checked="chekced"/>    
		                            <div class="media">
		                                <img id="p_cart_el1" class="p_cart_el" src="/springframework-mini-project/equipment/display?fileName=${cartproduct.pattachoname}" class="mr-3">
		                                <div class="media-body">
		                                <button type="button" class="btn" onclick="javascript:removeCartSession('${cartproduct.modelNumber}')"><i class="fa-solid fa-xmark"></i></button>
		                                  <h5 id="cart_product_name1" class="mt-0 mb-1">${cartproduct.productName}</h5>
		                                  <p id="cart_product_model_number1" class="fontcolorccc">${cartproduct.modelNumber}</p>
		                                  <input type="hidden" class="sendModelNumToPay" value="${cartproduct.modelNumber}"/>
		                                  <div id="cart_product_price1">
		                                  <div class="countBox">
								            <button class="qua_minus_btn">-</button>
											<input style="width: 50px; text-align: center;" id="updateQua" value="${cartproduct.cartQua}" class="quantity_input"></input>
								            <button class="qua_plus_btn">+</button>
											<button class="qua_modify_btn" onClick="javascript:updateCartSession('${cartproduct.modelNumber}')" id=""> 변경</button>　
								          </div>
		                                  	<%-- <div>
			                                  	<input id="updateQua" value="${cartproduct.cartQua}" class="quantity_input"></input>개
				                                <button class="qua_plus_btn">+</button>
				                                <button class="qua_minus_btn">-</button>
		                                  	</div> --%>
		                                  	
			                                ${cartproduct.productColor} 　
			                                <fmt:formatNumber pattern="###,###,###,###" value="${cartproduct.price}"/>원
		                                  </div> 
		                                  <hr style="margin-top: 50px;">
		                                </div>
		                            </div>
									
		                           
		                        </c:forEach>
                        	</c:otherwise>
                        	
                        </c:choose>

                        </div>
                    </div>
                </div>
            </div>
            <div id="shoppingCart_content_right">
                <c:choose>
	            	<c:when test="${empty productList}">
		            	<p style="font-family: MinSans-Black">담은 제품</p>
		            	<hr id="pxup_line">
	            		<p>구매를 원하는 상품을 직접 담아보세요!</p>
	                    <a id="next_page_go_to_payment" href="${pageContext.request.contextPath}/equipment/dental_equipment_main" class="btn">상품 구경 하러 가기</a>
	                </c:when>
	                <c:otherwise>
		                <p style="font-family: MinSans-Black">주문서</p>
		                <hr id="pxup_line">
<%-- 		                <c:forEach items="${productList}" var="cartproduct">
		                	<p>${cartproduct.productName}</p>
		                </c:forEach>
		                 --%>
		                <p>제품 수 <a id="total_quaAll"></a></p>
		                <p>주문 금액 <a id="total_sum"></a></p>
		                <!-- <p class="fontcolor525253">할인 적용 금액 없음</p> -->
		                <hr>
		                <a onclick="cartToPayment()"id="next_page_go_to_payment" class="btn" href="#">구매 하기</a>
		                <form action="cartToPayment" id="cartToPay" method="POST">
		                	<input type="hidden" name="sum"/>
		                </form>
	                </c:otherwise>
	                
                </c:choose>
            </div>
        </div>
    <script src="${pageContext.request.contextPath}/resources/js/equipment/shoppingcart_rentalandpurchase.js"></script>
</div>
        
<%@ include file="/WEB-INF/views/common/footer.jsp" %>