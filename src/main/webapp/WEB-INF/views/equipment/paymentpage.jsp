<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/equipment/paymentpage.css" rel="stylesheet" type="text/css"/>
   <div id="paymentpage_wrapper">
        <div id="paymentpage_content">
            <div id="payment_step1_title" class="fontcolor525253">
                <p>STEP01</p>
                <p>계약자 정보</p>
                <p>></p>
            </div>
            <div id="payment_step2_title" class="fontcolor525253">
                <p>STEP02</p>
                <p>장비 렌탈</p>
                <p>></p>
            </div>
            <div id="payment_step3_title" class="fontcolor525253">
                <p>STEP03</p>
                <p>장비 구매</p>
                <p></p>
            </div>
            
            <div id="paymentpage_content_left">
                <hr style="margin-bottom: 50px;">
                <div id="payment_step1">
                    <div class="d-flex flex-column">
                        <div class="mb-3"><span style="margin-right: 135px;">성명</span><input type="text"/></div>
                        <div class="mb-3"><span style="margin-right: 99px;">생년월일</span><input type="text"/></div>
                        <div class="mb-3"><span style="margin-right: 117px;">이메일</span><input type="text"/></div>
                        <div class="mb-3"><span style="margin-right: 99px;">전화번호</span><input type="text"/></div>
                        <div class="mb-3"><span style="margin-right: 40px;">전화번호 재확인</span><input type="text"/></div>
                        <div class="mb-3">
                            <span style="margin-right: 130px;">주소</span>
                            <input class="checked_user_update_info_adr" id="member_post"  type="text" placeholder="우편번호" readonly onclick="findAddr()"/>
                            <input class="checked_user_update_info_adr" id="member_addr" type="text" placeholder="도로명 주소" readonly/> <br>
                            <input class="checked_user_update_info_adr mt-2" style="margin-left: 170px;" type="text" placeholder="상세 주소"/>
                        </div>
                        <script>
                            
                        </script> 
                    </div>
                </div>
                <div id="payment_step2">
                    <div class="d-flex flex-column">
                        <div class="mb-3"><input type="checkbox"/><span style="margin-left: 20px;">이전 입력 정보와 동일</span></div>

                        <div class="mb-3"><span style="margin-right: 135px;">성명</span><input type="text"/></div>
                        <div class="mb-3"><span style="margin-right: 99px;">생년월일</span><input type="text"/></div>
                        <div class="mb-3"><span style="margin-right: 117px;">이메일</span><input type="text"/></div>
                        <div class="mb-3"><span style="margin-right: 99px;">전화번호</span><input type="text"/></div>
                        <div class="mb-3"><span style="margin-right: 40px;">전화번호 재확인</span><input type="text"/></div>
                        <div class="mb-3">
                            <span style="margin-right: 130px;">주소</span>
                            <input class="checked_user_update_info_adr" id="member_post"  type="text" placeholder="우편번호" readonly onclick="findAddr2()"/>
                            <input class="checked_user_update_info_adr" id="member_addr" type="text" placeholder="도로명 주소" readonly/> <br>
                            <input class="checked_user_update_info_adr mt-2" style="margin-left: 170px;" type="text" placeholder="상세 주소"/>
                        </div>
                        <div class="mb-3"><span style="margin-right: 40px;">배송 요청 사항</span><input type="text" style="width:700px"/></div>
         
                    </div>
                </div>
                <div id="payment_step3">
                    <div class="d-flex flex-column"> 
                        <div class="mb-3">결제 수단<span style="margin-right: 90px;"></span>카드<input type="radio" name="payment_method" checked="checked" style="margin-left: 20px; margin-right: 20px;"/>
                            </span>계좌이체<input type="radio" name="payment_method" style="margin-left: 20px;"/>
                            <form id="card_payment">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">카드사</label>
                                  <select class="form-control">
                                    <option>수빈 은행</option>
                                    <option>보현 은행</option>
                                    <option>하현 은행</option>
                                    <option>보경 은행</option>
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
                            </form>
                        </div>
                        
                       
                    </div>
                </div>
            </div>


            <div id="paymentpage_content_right">
                <p style="font-family: MinSans-Black">구매 제품</p>
                <hr id="pxup_line">
                <p>제품 수 <a>n</a></p>
                <p>주문 금액 <a >1,000,000 원</a></p>
                <p>결제 예정 금액 <a>1,000,000 원</a></p>
                <p class="fontcolor525253">할인 적용 금액 없음</p>
                <hr>
                <p style="font-family: MinSans-Black; margin-top: 50px;">렌탈 제품</p>
                <hr id="pxup_line">
                <p>제품 수 <a>n</a></p>
                <p>월별 금액 <a >69,000 원</a></p>
                <p class="fontcolor525253">할인 적용 금액 없음</p>
                <hr>
                <a id="next_page_go_to_payment_step1" class="btn" onclick="payment_nextstep1()">다음 페이지</a>
                <div id="step2_bt_list">
                    <a id="back_page_go_to_payment_step1" class="btn" onclick="payment_backstep1()">이전 페이지</a>
                    <a id="next_page_go_to_payment_step2" class="btn" onclick="payment_nextstep2()">다음 페이지</a>
                </div>
                <div id="step3_bt_list">
                    <a id="back_page_go_to_payment_step2" class="btn" onclick="payment_backstep2()">이전 페이지</a>
                    <a id="next_page_go_to_payment_step3" class="btn">결제</a>
                </div>
                
            </div>
        
    <div class="content"></div>
        <div id="paymentsuccess_popup" class="layer_popup" style="font-family: 'MinSans-Regular'; display:none"> 
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
      </div>
  
        </div>
        
   <script src="${pageContext.request.contextPath}/resources/js/equipment/paymentpage.js"></script>
</div>
        
<%@ include file="/WEB-INF/views/common/footer.jsp" %>