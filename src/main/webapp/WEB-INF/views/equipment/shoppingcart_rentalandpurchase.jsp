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
                        
                        <div id="p_cart1" class="p_cart">
                        <c:choose>
                        <c:when test="${empty productList}">
                        	<div style="margin-bottom: 100px;">장바구니에 담긴 상품이 없습니다.</div>
                        </c:when>
                        	<c:otherwise>
		                       <c:forEach items="${productList}" var="cartproduct">
		                        <input type='checkbox' name='purchase_cart_select' value='purchase_cart1' checked="chekced"/> 
		                            <div class="media">
		                                <img id="p_cart_el1" class="p_cart_el" src="${pageContext.request.contextPath}/resources/subinimage/dentalCamera.jpg" class="mr-3">
		                                <div class="media-body">
		                                  <h5 id="cart_product_name1" class="mt-0 mb-1">${cartproduct.productName}</h5>
		                                  <p id="cart_product_model_number1" class="fontcolorccc">${cartproduct.modelNumber}</p>
		                                  <a id="cart_product_price1">${cartproduct.cartQua}개 　${cartproduct.productColor} 　<fmt:formatNumber pattern="###,###,###,###" value="${cartproduct.price}"/>원</a> 
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
                <p style="font-family: MinSans-Black">구매 제품</p>
                <hr id="pxup_line">
                <p>제품 수 <a>n</a></p>
                <p>주문 금액 <a >1,000,000 원</a></p>
                <p>결제 예정 금액 <a>1,000,000 원</a></p>
                <p class="fontcolor525253">할인 적용 금액 없음</p>
                <hr>
                <a id="next_page_go_to_payment" href="${pageContext.request.contextPath}/equipment/paymentpage" class="btn">다음 단계</a>
            </div>
        </div>
    <script src="${pageContext.request.contextPath}/resources/js/equipment/afterService.js"></script>
</div>
        
<%@ include file="/WEB-INF/views/common/footer.jsp" %>