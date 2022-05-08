<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/equipment/paymentpage.css" rel="stylesheet" type="text/css"/>

<!-- 구매 완료 시에  -->
<div class="payment_result_dim-layer">
	<div class="dimBg"></div>
	<div id="payment_result_btn" class="payment_result_pop-layer">
		<div class="payment_result_pop-container">
			<div class="text-center payment_result_title">
				<div class="mb-3">
					<i class="fas fa-tooth fa-4x"></i>
				</div>
				<div>
					<h5
						style="color: black; font-size: 23px; font-family: 'MinSans-Bold';"
						id="payment_result_title"></h5>
				</div>
			</div>
			<div class="btn-r">
				<a
					href="${pageContext.request.contextPath}/equipment/dental_equipment_main"
					class="payment_result_btn btn"
					style="border-radius: 0 0 0 5px; font-family: 'MinSans-Regular';">쇼핑 계속 하기</a> <a
					href="${pageContext.request.contextPath}/mypage/mypage_orderlist"
					class="payment_result_btn btn"
					style="border-radius: 0 0 5px 0; background-color: #ca5c0d; font-family: 'MinSans-Regular';">마이 페이지 확인하기</a>
			</div>
		</div>
	</div>
</div>
   <div id="paymentpage_wrapper">
        <div id="paymentpage_content">
            <div id="payment_step1_title" class="fontcolor525253">
                <p>STEP01</p>
                <p>구매자 정보 입력</p>
                <p>></p>
            </div>
            <div id="payment_step2_title" class="fontcolor525253">
                <p>STEP02</p>
                <p>구매할 제품 확인</p>
                <p>></p>
            </div>
            <div id="payment_step3_title" class="fontcolor525253">
                <p>STEP03</p>
                <p>결제</p>
                <p></p>
            </div>
            
            <div id="paymentpage_content_left">
                <hr style="margin-bottom: 50px;">
                <div id="payment_step1">
                    <div class="d-flex flex-column">
                    
                     <div class="mb-3"><input id="selectUserInfo" onClick="selectUserInfo('${user.name}', '${user.email}', '${user.phone}', '${user.postcode}', '${user.address}', '${user.addressDetail}')" type="checkbox"/><span style="margin-left: 20px;">회원 정보와 동일</span></div>
                        <form>
	                        <div class="mb-3"><span style="margin-right: 135px;">성명</span><input type="text" id="purchase_username"/></div>
	                        <div class="mb-3"><span style="margin-right: 117px;">이메일</span><input type="text" id="purchase_useremail"/></div>
	                        <div class="mb-3"><span style="margin-right: 99px;">전화번호</span><input type="text" id="purchase_usertel"/></div>
	                         
	                        <div class="mb-3">
	                            <span style="margin-right: 130px;">주소</span>
	                            <input class="checked_user_update_info_adr"  type="text" placeholder="우편번호" readonly onclick="findAddress()" id="purchase_userpost"/>
	                            <input class="checked_user_update_info_adr"  type="text" placeholder="도로명 주소" readonly id="purchase_useraddr"/> <br>
	                            <input class="checked_user_update_info_adr mt-2" style="margin-left: 170px;" type="text" placeholder="상세 주소" id="purchase_userdetaildaar"/>
	                        </div>
	                        <div class="mb-3"><span style="margin-right: 40px;">배송 시 요청 사항</span><input name="deliverymessage" type="text" style="width:700px"/></div>
	                       <%--  <input type="hidden" value="${productList.modelNumber}"/> --%>
	                    
						</form>
                    </div>
                </div>
                <div id="payment_step2">
                <div id="purchase_cart_list">
                    <ul id=""class="nav nav-tabs">
                        <li class="nav-item">
                          <p id="purchase_cart_count" class="nav-link active">구매 목록</p>
                        </li>
                    </ul>
                    <div style="background-color: #ffffff;">
                        <hr>
                        <div id="purchaseList" class="purchaseList">
	                       <c:forEach items="${productList}" var="cartproduct">
	                            <div class="media">
	                                <img id="purchase_el1" class="purchase_el_" src="/springframework-mini-project/equipment/display?fileName=${cartproduct.pattachoname}" class="mr-3"/>
	                                <div class="media-body">
	                                  <h5 id="purchase_product_name1" class="mt-0 mb-1">${cartproduct.productName}</h5>
	                                  <p id="purchase_model_number1" class="fontcolorccc">${cartproduct.modelNumber}</p>
	                                  <div id="cart_product_price1">${cartproduct.productColor} 　<fmt:formatNumber pattern="###,###,###,###" value="${cartproduct.price}"/>원</div> 
	                                  <hr style="margin-top: 50px;">
	                                </div>
	                            </div>
	                        </c:forEach>
                        </div>
                    </div>
                </div>

                </div>
                <div id="payment_step3">
                    <div class="d-flex flex-column"> 
                        <div class="mb-3">결제 수단<span style="margin-right: 90px;"></span>
                        카드<input type="radio" name="payment_method" checked="checked" style="margin-left: 20px; margin-right: 20px;"/>
                            　계좌이체<input type="radio" name="payment_method" style="margin-left: 20px;"/>
<form method="post" id="card_payment" name="paymentVerify" action="paymentVerify">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">카드사</label>
                                  <select name="bank">
                                  	<option value="수빈 은행">수빈 은행</option>
                                    <option value="보현 은행">보현 은행</option>
                                    <option value="하현 은행">하현 은행</option>
                                    <option value="보경 은행">보경 은행</option>
                                  
                                  </select>
                                    
                                </div>
                                <div class="form-group">
                                  <label for="input_cardnum">카드 번호</label>
                                  <input type="text" class="form-control" id="input_card_num">
                                </div>
                                <div class="form-group">
                                    <label for="input_card_date">유효 기간</label>
                                    <input type="text" class="form-control" id="input_card_date">
                                  </div>
                                <ul>
                                    <li><small>결제 정보는 계약자와 동일한 명의의 카드나 은행계좌만 이체 가능 합니다.</small></li>
                                    <li><small>월요금 납부일의 경우, 계약일 기준으로 자동 적용됩니다.</small></li>
                                </ul>
                                <c:choose>
								<c:when test="${empty sum}">
									<input name="QuantityFin" type="hidden" value="${countQua}"/>
									<input name="PriceFin" type="hidden" value="${purchasePrice}"/>	
								</c:when>
								<c:otherwise>
									<input name="QuantityFin" type="hidden" value="${fn:length(cartForm)}"/>
									<input name="PriceFin" type="hidden" value="${sum}"/>
								</c:otherwise>
								</c:choose>
                            </form>
                        </div>
                        
                       
                    </div>
                </div>
            </div>



            <div id="paymentpage_content_right">
                <p style="font-family: MinSans-Black">구매 제품</p>
                <hr id="pxup_line">
                <c:choose>
					<c:when test="${empty sum}">
						<p>제품 수 <a>${countQua}</a></p>
	                	<p>주문 금액 <a >${purchasePrice} 원</a></p>
					</c:when>
					<c:otherwise>
						<p>제품 수 <a>${fn:length(cartForm)}</a></p>
	                	<p>주문 금액 <a >${sum} 원</a></p>
					</c:otherwise>
				</c:choose>
                
                <hr>
                
                <a id="next_page_go_to_payment_step1" class="btn" onclick="payment_nextstep1()">다음 페이지</a>
                <div id="step2_bt_list">
                    <a id="back_page_go_to_payment_step1" class="btn" onclick="payment_backstep1()">이전 페이지</a>
                    <a id="next_page_go_to_payment_step2" class="btn" onclick="payment_nextstep2()">다음 페이지</a>
                </div>
                <div id="step3_bt_list">
                    <a id="back_page_go_to_payment_step2" class="btn" onclick="payment_backstep2()">이전 페이지</a>
                    <a id="next_page_go_to_payment_step3" class="btn" onclick="sendPurchaseInfo()">결제</a>

                </div>
                
            </div>

        <%-- <div id="paymentsuccess_popup" class="layer_popup" style="font-family: 'MinSans-Regular'; display:none"> 
            <div class="layer">
                <div class="text_area text-center">
                    <p style="font-size: 30px;"> 구매가 정상적으로 완료되었습니다 </p>
                    <div class="popup_content d-flex text-center" >
                        <div class="pt-3" style="background-color: #e8e8db; flex-grow: 1;">
                            <p>주문번호</p>
                            <p>462379937</p>
                        </div>
                        <div align = "right" class="pt-4 pr-5" style="background-color: #faf9f6; flex-grow: 3;">
                            <div>
                                <span>총 결제 금액</span>
                                <span>5,193,000</span>
                                <span>원</span>
                            </div>
                            <div class="mt-1" style="color: #7e7d7d; font-size: 14px;"><p>신용카드<span>(신한 일시불)</span></p></div>
                        </div>
                    </div>
                    <p style="font-size: 11px;">자세한 구매내역 확인 및 문자발송, 배송지 변경 등의 서비스는 우측 상단의 마이페이지>구매내역에서 이용 가능합니다.</p>
                </div>
                <div class="btn_area text-center"> 
                    <a href="${pageContext.request.contextPath}/mypage/mypage_orderlist" class="btn btn_payment" style="background: gray; width: 20%; border: none; outline: none; color: white; box-shadow: none;">구매 내역 확인</a>
                    <a href="${pageContext.request.contextPath}/equipment/dental_equipment_main" class="btn btn_shop" style="background: #ca5c0d; width: 20%; border: none; outline: none; color: white; box-shadow: none;">쇼핑 계속하기</a> 
                    <a href="${pageContext.request.contextPath}/equipment/shoppingcart_rentalandpurchase" class="btn btn_cart" style="background: #ca5c0d; width: 20%; border: none; outline: none; color: white; box-shadow: none;">카트보기</a> 
                </div> 
                <a class="btn btn_close"  href="${pageContext.request.contextPath}/">CLOSE</a> 
            </div> 
            <div class="dimmed"></div>
      </div> --%>
  
        </div>
        
   <script src="${pageContext.request.contextPath}/resources/js/equipment/paymentpage.js"></script>
</div>
        
<%@ include file="/WEB-INF/views/common/footer.jsp" %>