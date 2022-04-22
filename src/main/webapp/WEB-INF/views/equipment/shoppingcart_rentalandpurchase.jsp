<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<link href="${pageContext.request.contextPath}/resources/css/equipment/shoppingcart_rentalandpurchase.css" rel="stylesheet" type="text/css"/>
    <div id="shoppingCart_wrapper">
        
        <div id="shoppingCart_content">
            <div id="shoppingCart_content_left">
                <div id="purchase_cart_list">
                    <ul id=""class="nav nav-tabs">
                        <li class="nav-item">
                          <p id="purchase_cart_count" class="nav-link active">구매(<a style="color: red;">n</a>)</p> <!--n은 나중에 카트 안의 개수 입력 받자구!-->
                        </li>
                    </ul>
                    <div style="background-color: #ffffff;">
                        <div id="cart_all_select1">
                            <input id="" type='checkbox' name='purchase_cart_select' value='selectall' onclick='selectAll(this)' checked="chekced" style="width: 30px;"/> <b>전체 선택</b>
                            <br />
                        </div>
                        
                        <hr>
                        <!--다 데이터를 받아와야 하는 부분이라 그냥 텍스트로 다 입력했습니다!-->
                        <div id="p_cart1" class="p_cart">
                            <input type='checkbox' name='purchase_cart_select' value='purchase_cart1' checked="chekced"/> 
                            <div class="media">
                                <img id="p_cart_el1" class="p_cart_el" src="${pageContext.request.contextPath}/resources/subinimage/dentalCamera.jpg" class="mr-3">
                                <div  class="media-body">
                                  <h5 id="cart_product_name1" class="mt-0 mb-1">구강 카메라</h5>
                                  <p id="cart_product_model_number1" class="fontcolorccc">this is test model number</p>
                                  <a id="cart_product_price1">1개 　검정 　500,000원</a> 
                                  <hr style="margin-top: 50px;">
                                </div>
                            </div>
                        </div>
                        <div class="p_cart">
                            <input type='checkbox' name='purchase_cart_select' value='purchase_cart2' checked="chekced"/> 
                            <div class="media">
                                <img id="p_cart_el2" class="p_cart_el" src="${pageContext.request.contextPath}/resources/subinimage/DentalScanner1.jpg" class="mr-3">
                                <div  class="media-body">
                                  <h5 id="cart_product_name2" class="mt-0 mb-1">구강 스캐너</h5>
                                  <p id="cart_product_model_number2" class="fontcolorccc">this is test model number</p>
                                  <a id="cart_product_price2">1개 　실버 　500,000원</a>
                                  <hr style="margin-top: 50px;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="rental_cart_list">
                    <ul id=""class="nav nav-tabs">
                        <li class="nav-item">
                            <p id="rental_cart_count" class="nav-link active">렌탈(<a style="color: red;">n</a>)</p> <!--n은 나중에 카트 안의 개수 입력 받자구!-->
                        </li>
                    </ul>
                    <div style="background-color: #ffffff;">
                        <div id="cart_all_select2">
                            <input id="" type='checkbox' name='rental_cart_select' value='selectall_r' onclick='selectAll_r(this)' checked="chekced" style="width: 30px;"/> <b>전체 선택</b>
                            <br />
                        </div>
                    
                        <hr>
                        <div id="r_cart1" class="r_cart">
                            <input type='checkbox' name='rental_cart_select' value='rental_cart1' checked="chekced"/> 
                            <div class="media">
                                <img id="r_cart_el1" class="r_cart_el" src="${pageContext.request.contextPath}/resources/subinimage/Portable_x-ray1.png" class="mr-3">
                                <div  class="media-body">
                                    <h5 id="rcart_product_name1" class="mt-0 mb-1">포터블 X-ray</h5>
                                    <p id="rcart_product_model_number1" class="fontcolorccc">this is test model number</p>
                                    <a id="rcart_product_price1">1개 　하양 　월 49,000원 36개월</a> 
                                    <hr style="margin-top: 50px;">
                                </div>
                            </div>
                        </div>
                        <div class="r_cart">
                            <input type='checkbox' name='rental_cart_select' value='rental_cart2' checked="chekced"/> 
                            <div class="media">
                                <img id="r_cart_el2" class="r_cart_el" src="${pageContext.request.contextPath}/resources/subinimage/ultrasonic_cleaner1.png" class="mr-3">
                                <div  class="media-body">
                                    <h5 id="rcart_product_name1" class="mt-0 mb-1">초음파 세척기</h5>
                                    <p id="rcart_product_model_number1" class="fontcolorccc">this is test model number</p>
                                    <a id="rcart_product_price1">1개 　검정 　월 20,000원 48개월</a> 
                                    <hr style="margin-top: 50px;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="shoppingCart_content_right">
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
                <a id="next_page_go_to_payment" href="${pageContext.request.contextPath}/equipment/paymentpage" class="btn">다음 단계</a>
            </div>
        </div>
    <script src="${pageContext.request.contextPath}/resources/js/equipment/afterService.js"></script>
</div>
        
<%@ include file="/WEB-INF/views/common/footer.jsp" %>