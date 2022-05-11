<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/menuheader.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/equipment/shoppingcart_rentalandpurchase.css" rel="stylesheet" type="text/css"/>
<section class="container-fluid p-0">
    <div style="display: flex; justify-content: space-between;position: relative;">
        <div style="display: inline-block; width: 10%; height: 100px;" class="bg-dark menuheaderleft" ></div>
        <div style="display: inline-block; width: 89%; height: 100px;" class=" menuheaderright">
            <img src="${pageContext.request.contextPath}/resources/images/productConsult.png" width="100%" height="100%" >
        </div>
    </div>
    <div style="width: 65%;position: relative; left:10px; top: -33px;" class="mx-auto menuheadertitle">
        <span style="font-size: 50px; font-family: 'MinSans-Bold'; border-bottom: 5px solid coral; letter-spacing: 1.4px;">장바구니</span>
    </div>
</section>   

	<div id="shoppingCart_wrapper">
        
        <div id="shoppingCart_content">
            <div id="shoppingCart_content_left" style="margin-right: 50px;">
                <div id="purchase_cart_list">
                    <ul id=""class="nav nav-tabs">
                        <li class="nav-item">
                          <p id="purchase_cart_count" class="nav-link active">구매(<a id="modelCount" style="color: red;"></a>)</p>
                        </li>
                    </ul>
                    <div style="background-color: #ffffff; padding-bottom: 50px;">
                        <div id="cart_all_select1">
                            <input id="cartAllCheck" type='checkbox' class="cartcheck" name='purchase_cart_select' value='selectall' onclick='selectAll(this)' checked="chekced" style="width: 30px;"/> <b>전체 선택</b>
                            <button style="margin-left:610px" type="button" class="btn" onclick="javascript:removeCartAllSession()">전체삭제</button>
                            <br />
                        </div>
                        
                        <hr>
                        
                        <div id="p_cart1" class="p_cart">
                        <c:choose>
                        <c:when test="${empty productList}">
							<div style="margin-left: 60px; margin-top:50px; text-align: center;">
								<div id="emptyCart"><i class="fas fa-exclamation-triangle fa-3x" style="color: lightslategray;"></i></div>
								<div style="margin-top:10px; margin-bottom: 100px; padding: 10px;">장바구니에 담긴 상품이 없습니다.</div>
							</div>
                        </c:when>
                        	<c:otherwise>
								<c:forEach var="cartproduct" items="${productList}" > 
	                                <div style="width: 100%;" id="stepthree_height">
	                                    <div class="border mb-4 bg-white" style="width: 95%; height: 160px; margin-left: 20px;">
	                                        <div style="display: flex;">
	                                            <div style="display: inline-block; width: 90%; height: 100px;">
	                                                <div style="display: flex;">
														<input class="cartcheck" type='checkbox' name='purchase_cart_select'  onclick='selectcart(this)'value='${cartproduct.price}' checked="chekced"/>   
	                                                    <div style="display: inline-block; width: 30%;" class="p-2 product_consult_img">
	                                                 
                                                            <img src="/springframework-mini-project/interior_consult/display?fileName=${cartproduct.pattachoname}"width="150px" height="110px" class="mt-2">  
	                                                    </div>
	                                                    <div style="display: inline-block; width: 40%; height: 100px;" class="ml-3 mt-2">
	                                                        <div style="font-family: 'MinSans-Medium';" class="mb-2">
	                                                            <span style="font-size: 20px;">${cartproduct.modelNumber}</span><br/>
																<input type="hidden" class="sendModelNumToPay" value="${cartproduct.modelNumber}"/>
	                                                        </div>
	                                                        <div style="display: flex;">
	                                                            <div style="display: inline-block;" class="mr-2">색상:</div> 
	                                                            <div style="display: inline-block; width: 20px; height: 20px;background-color: ${cartproduct.productColor}; border-radius: 10px;" class="mt-1"></div>
	                                                        </div>
	                                                        <div class="countBox">
																<button class="qua_minus_btn">-</button>
																<input style="width: 50px; text-align: center;" id="updateQua" value="${cartproduct.cartQua}" class="quantity_input"></input>
																<button class="qua_plus_btn">+</button>
																<button class="qua_modify_btn" onClick="javascript:updateCartSession('${cartproduct.modelNumber}')" id=""> 변경</button>　
															</div>
															<fmt:formatNumber pattern="###,###,###,###" value="${cartproduct.price}"/>원
	                                                    </div>
	                                                </div>
	    
	                                            </div>
	                                            <div  style="display: inline-block; width: 10%;height: 100px;" class="text-right">
	                                                <button class="btn" onclick="javascript:removeCartSession('${cartproduct.modelNumber}')"><i class="fa-solid fa-xmark"></i></button>
	                                            </div>
	                                            
	                                        </div>
	                                    </div>
	                                    
	                                </div>
                                </c:forEach>
								<div>
									<a id="gotoList2" href="/springframework-mini-project/equipment/dental_equipment_main?category=all"><img style="margin-right: 10px; width: 40px;" src="${pageContext.request.contextPath}/resources/subinimage/plus.png">상품 추가하기</a>
								</div>
                        	</c:otherwise>                      	
                        </c:choose>

                        </div>
                    </div>
                </div>
            </div>
			<section style="display: inline-block; width: 30%;">
                <div style="width: 90%; box-shadow: 3px 3px 10px -5px;" class="bg-white rounded mx-auto mt-5">
                    <div style="width: 100%;">
                        <div style="width: 90%; padding: 10px 0;" class="mx-auto">
                            <div style="width: 100%;" class="pt-3">
                                <div style="font-family: 'MinSans-Black'; border-bottom: 2px solid darkgray;" class=",">
                                    담은 상품
                                </div>
								<c:choose>
									<c:when test="${empty productList}">
										<div style="text-align:center;">
											<p style="margin-top: 50px;">구매를 원하는 상품을<br>직접 담아보세요!</p>
											<img style="width: 200px;" src="${pageContext.request.contextPath}/resources/subinimage/cartEmpty2.jpg">
											<a id="next_page_go_to_list" href="${pageContext.request.contextPath}/equipment/dental_equipment_main" class="btn btn-dark">상품 구경 하러 가기</a>
										</div>
									</c:when>
									<c:otherwise>
										<div style="display: flex;font-family: 'MinSans-Regular'; justify-content: end;">
											<div style="display: inline-block; font-size: 20px;" class="pt-2 pr-2">
												총 <a id="total_quaAll"></span>건
											</div>
										</div>
										<div style="width: 100%;" class="pt-3">
											<div style="font-family: 'MinSans-Bold'; border-bottom: 2px solid darkgray;">
												주문서
											</div>
											<div style="font-family: 'MinSans-Regular'; font-size: 18px;" class="pt-3">
												제품명: 
												<c:forEach items="${productList}" var="cartproduct">
													<a style="">　${cartproduct.productName}</a>
												</c:forEach>
												<p>주문 금액:　<a id="total_sum"></a></p>
												<a onclick="cartToPayment()"id="next_page_go_to_payment" class="btn" href="#">구매 하기</a>
												<form action="cartToPayment" id="cartToPay" method="POST">
													<input type="hidden" name="sum"/>
													<input type="hidden" name="quaAll"/>
												</form>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
                                
                            </div>
                            
                        </div>
                    </div>
                </div>
            </section>
            <!--<div id="shoppingCart_content_right">
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
		                <!--<hr>
		                <a onclick="cartToPayment()"id="next_page_go_to_payment" class="btn" href="#">구매 하기</a>
		                <form action="cartToPayment" id="cartToPay" method="POST">
		                	<input type="hidden" name="sum"/>
		                	<input type="hidden" name="quaAll"/>
		                </form>
	                </c:otherwise>
	                
                </c:choose>
            </div>-->
        </div>
	</div>	
    <script src="${pageContext.request.contextPath}/resources/js/equipment/shoppingcart_rentalandpurchase.js"></script>
</div>
        
<%@ include file="/WEB-INF/views/common/footer.jsp" %>