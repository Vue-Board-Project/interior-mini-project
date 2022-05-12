<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/equipment/paymentpage.css" rel="stylesheet" type="text/css"/>

   <div id="paymentpage_wrapper">
            
            <section id="paymentpage_content_left" class="p-4">
                <!-- 1단계  -->
                <div>
                    <div style="display: flex; height: 29rem; margin-bottom: 30px;">
                        <div style="display: inline-block; width: 10%;" >
                            
                            <div style="width: 100%; height: 3rem;" class="text-center">
                                
                                <p style="line-height: 80%; font-size: 15px; font-family: 'MinSans-Regular';">step</p>
                                <p style="line-height: 20%; font-size: 30px; font-family: 'MinSans-Medium'; color: #ca5c0d;">01</p>
                            </div>
                            <div  style="width: 100%; height: 26rem;" class="text-right pt-2">
                                <div style="width: 50%; height: 100%; border-right: 2px dotted #272723;">
                            </div>
                            </div>
                        </div>
                        <div style="display: inline-block; width: 700px;">
                            <div style="width: 95%; height: 100%;" class="mx-auto">
                                <div style="width: 100%; height: 10%;" class="pt-3" >
                                    <h5 style="font-family: 'MinSans-Regular'; font-weight: bold; font-size: 23px;">구매자 정보 입력</h5> 
                                </div>
                                <div class="mb-3 pt-4" style="width: 100%; height: 90%;"><input id="selectUserInfo" onClick="selectUserInfo('${user.name}', '${user.email}', '${user.phone}', '${user.postcode}', '${user.address}', '${user.addressDetail}')" type="checkbox"/><span style="margin-left: 20px;">회원 정보와 동일</span>
                                    <form>
                                        <div class="mb-3"><span style="margin-right: 135px;">성명</span><input type="text" id="purchase_username"/></div>
                                        <div class="mb-3"><span style="margin-right: 117px;">이메일</span><input type="text" id="purchase_useremail"/></div>
                                        <div class="mb-3"><span style="margin-right: 99px;">전화번호</span><input type="text" id="purchase_usertel"/></div>
                                        
                                        <div class="mb-3">
                                            <span style="margin-right: 135px; float:left;">주소</span>
                                            <input class="checked_user_update_info_adr" type="text" placeholder="우편번호" readonly onclick="findAddress()" id="purchase_userpost"/>
                                            <input class="checked_user_update_info_adr" style="margin-left: 170px; margin-top: 10px;" type="text" placeholder="도로명 주소" readonly id="purchase_useraddr"/> <br>
                                            <input class="checked_user_update_info_adr mt-2" style="margin-left: 170px;" type="text" placeholder="상세 주소" id="purchase_userdetaildaar"/>
                                        </div>
                                        <div class="mb-3"><span style="margin-right: 40px;">배송 시 요청 사항</span><input name="deliverymessage" type="text" style="width:600px"/></div>
                                    <%--  <input type="hidden" value="${productList.modelNumber}"/> --%>
                                    
                                    </form>
                                </div>
                        </div>
                            
                        </div>
                </div>  
                <!--2단계-->
                <div>
                <div id="payment_step2" style="display: flex; margin-bottom: 30px;">
                    <div style="display: inline-block; width: 10%;" >
                        <div style="width: 100%; height: 3rem;" class="text-center">
                            <p style="line-height: 80%; font-size: 15px; font-family: 'MinSans-Regular';">step</p>
                            <p style="line-height: 20%; font-size: 30px; font-family: 'MinSans-Medium';color: #ca5c0d;">02</p>
                        </div>
                        <div  style="width: 100%; height: 12rem;" class="text-right" id="steptwo_height_result">
                            <div style="width: 50%; height: 100%; border-right: 2px dotted #272723;">
                            </div>
                        </div>
                    </div>
                    <div style="display: inline-block; width: 90%; ">
                        <div style="width: 95%; height: 100%;" class="mx-auto">
                            <div style="width: 100%; height: 10%; margin-bottom: 30px;" class="pt-1">
                                <h5 style="font-family: 'MinSans-Regular'; font-weight: bold;  font-size: 23px;">구매할 제품 확인</h5> 
                            </div>
                            <div style="width: 100%; height: 90%;"  >
                                    <c:forEach var="cartproduct"  items="${productList}"> 
                                            <div class="border mb-4 bg-white steptwo_height" style="width: 75%; height: 160px;" >
                                                <div style="display: inline-block; width: 90%; height: 100px;">
                                                    <div style="display: flex;">
                                                        <div style="display: inline-block; width: 30%;" class="p-2 product_consult_img">
                                                            <img src="/springframework-mini-project/interior_consult/display?fileName=${cartproduct.pattachoname}"width="150px" height="110px" class="mt-2">  
                                                        </div>
                                                        <div style="display: inline-block; width: 40%; height: 100px;" class="ml-3 mt-2" >
                                                            <div style="font-family: 'MinSans-Medium';" class="mb-2">
                                                                <span style="font-size: 20px;">${cartproduct.productName}</span><br/>
                                                                ${cartproduct.modelNumber}
                                                            </div>
                                                            <div style="display: flex;">
                                                                <div style="display: inline-block;" class="mr-2">색상:</div> 
                                                                <div style="display: inline-block; width: 20px; height: 20px;background-color: ${cartproduct.productColor}; border-radius: 10px;" class="mt-1"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>	                                            
                                            </div>
                                </c:forEach>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                //상담 제품 따라 왼쪽 길이 늘리기
                var valuess = document.getElementsByClassName("steptwo_height").length;
                console.log( "없어>> "+ valuess);
                valuess = 12*valuess;
                $("#steptwo_height_result").css("height",valuess+"rem");
            </script>
                <!--3단계-->
                <div >
                <div style="display: flex;  height: 25rem; margin-top: 100px;">
                    <div style="display: inline-block; width: 10%;" >
                        <div style="width: 100%; height: 3rem;" class="text-center">
                            <p style="line-height: 80%; font-size: 15px; font-family: 'MinSans-Regular';">step</p>
                            <p style="line-height: 20%; font-size: 30px; font-family: 'MinSans-Medium';color: #ca5c0d;">03</p>
                        </div>
                        <div  style="width: 100%; height: 3rem;" class="text-right pt-2">
                            <div style="width: 50%; height: 100%; "></div>
                        </div>
                    </div>
                    <div style="display: inline-block; width: 90%;">
                        <div style="width: 95%; height: 100%;" class="mx-auto">
                            <div style="width: 100%; height: 10%;" class="pt-1">
                                <h5 style="font-family: 'MinSans-Regular'; font-weight: bold; font-size: 23px;">결제 정보 입력</h5> 
                            </div>
                            <div style="width: 100%; height: 90%;">
                                <div class="d-flex flex-column"> 
                                    <div class="mb-3">결제 수단<span style="margin-right: 90px;"></span>
                                        카드<input type="radio" name="payment_method" checked="checked" style="margin-left: 20px; margin-right: 20px;"/>
                                            　계좌이체<input type="radio" name="payment_method" style="margin-left: 20px;"/>
                                        <form method="post" id="card_payment" name="paymentVerify" action="paymentVerify2">
                                                <div class="form-group">
                                                <label for="exampleInputEmail1">카드사</label>
                                                <select name="bank">
                                                    <option value="수빈은행">수빈 은행</option>
                                                    <option value="보현은행">보현 은행</option>
                                                    <option value="하현은행">하현 은행</option>
                                                    <option value="보경은행">보경 은행</option>
                                                
                                                </select>
                                                
                                            </div>
                                            <div class="form-group">
                                              <label for="input_cardnum">카드 번호</label>
                                              <input type="text" class="form-control" id="input_card_num" name="cardnumber">
                                            </div>
                                            <div class="form-group">
                                                <label for="input_card_date">유효 기간</label>
                                                <input type="text" class="form-control" id="input_card_date" name="carddate">
                                              </div>
                                            <ul>
                                                <li><small>결제 정보는 계약자와 동일한 명의의 카드나 은행계좌만 이체 가능 합니다.</small></li>
                                                <li><small>월요금 납부일의 경우, 계약일 기준으로 자동 적용됩니다.</small></li>
                                            </ul>
                                            <c:choose>
                                                <c:when test="${empty sum}">
                                                    <input id="directQua" name="QuantityFin" type="hidden" value="${countQua}"/>
                                                    <input id="directPrice" name="PriceFin" type="hidden" value="${purchasePrice}"/>	
                                                </c:when>
                                            <c:otherwise>
                                                <input name="QuantityFin" type="hidden" value="${fn:length(cartForm)}"/>
                                                <%-- <c:forEach items="${productList}" var="cartproduct">
                                                    <input name="elmodel" type="hidden" value="${cartproduct.modelNumber}"/>
                                                    <input name="elQua" type="hidden" value="${cartproduct.cartQua}"/>
                                                    <input name="elPrice" type="hidden" value="${cartproduct.price}"/>
                                                </c:forEach> --%>
                                                <input name="PriceFin" type="hidden" value="${sum}"/>
                                            </c:otherwise>
                                            </c:choose>
                                        </form>
                                    </div>
                                    
                                   
                                </div>




                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </section>
            


            <section id="paymentpage_content_right"style="display: inline-block; width: 20%;">
                <div style="width: 90%; box-shadow: 3px 3px 10px -5px;" class="bg-white rounded mx-auto mt-5">
                    <div style="width: 100%;">
                        <div style="width: 90%; padding: 10px 0;" class="mx-auto">
                            <div style="width: 100%;" class="pt-3">
                                <div style="font-family: 'MinSans-Black'; border-bottom: 2px solid darkgray;" class=",">
                                    담은 상품
                                </div>
										<div style="display: flex;font-family: 'MinSans-Regular'; justify-content: end;">
											<div style="display: inline-block; font-size: 20px;" class="pt-2 pr-2">
												총 <c:choose>
                                                    <c:when test="${empty sum}">
                                                        <span>${countQua}</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span>${fn:length(cartForm)}</span>
                                                    </c:otherwise>
                                                </c:choose></span>건
											</div>
										</div>
										<div style="width: 100%;" class="pt-3">
											<div style="font-family: 'MinSans-Black'; border-bottom: 2px solid darkgray;">
												주문서
											</div>
											<div style="font-family: 'MinSans-Regular'; font-size: 18px;" class="pt-3">
												제품명: 
												<c:forEach items="${productList}" var="cartproduct">
													<a style="">　${cartproduct.productName}</a>
												</c:forEach>
												<p>주문 금액:　<c:choose>
                                                    <c:when test="${empty sum}">
                                                        <a>${purchasePrice} 원</a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span>${sum} 원</span>
                                                    </c:otherwise>
                                                </c:choose></p>
                                                <div id="step1_bt_list">
                                                    <a id="back_page_go_to_payment_cart" class="btn" onclick="history.back()">이전</a>
                                                    <a id="next_page_go_to_payment_step3" class="btn" onclick="sendPurchaseInfo()">결제</a>

                                                </div>


											</div>
										</div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </section>
        <script src="${pageContext.request.contextPath}/resources/js/equipment/paymentpage.js"></script>
           
    </div> 
<%@ include file="/WEB-INF/views/common/footer.jsp" %>