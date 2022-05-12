<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.mycompany.webapp.dto.UsersDto" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<link href="${pageContext.request.contextPath}/resources/css/equipment/equipment_detail.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/menuheader.css" rel="stylesheet" type="text/css"/>
<div class="container-fluid p-0">
    <section class=" p-0">
		<div style="display: flex; justify-content: space-between;position: relative;">
			<div style="display: inline-block; width: 10%; height: 100px;" class="bg-dark menuheaderleft" ></div>
			<div style="display: inline-block; width: 89%; height: 100px;" class=" menuheaderright">
				<img src="${pageContext.request.contextPath}/resources/images/productmeunheader.png" width="100%" height="100%" >
			</div>
		</div>
		<div style="width: 65%;position: relative; left:10px; top: -33px;" class="mx-auto menuheadertitle">
			<span style="font-size: 50px; font-family: 'MinSans-Bold'; border-bottom: 5px solid coral; letter-spacing: 1.4px;">${detailProduct.category}</span>
		</div>
	</section>
    <div class="cart_verify_result_dim-layer">
        <div class="dimBg"></div>
        <div id="cart_verify_result_btn" class="cart_verify_result_pop-layer">
            <div class="cart_verify_result_pop-container">
                <div class="text-center cart_verify_result_title">
                    <div class="mb-3">
                        <i class="fas fa-tooth fa-4x"></i>
                    </div>
                    <div>
                        <h5
                            style="color: black; font-size: 23px; font-family: 'MinSans-Bold';"
                            id="cart_verify_result_title"></h5>
                    </div>
                </div>
                <div class="btn-r">
                    <a
                        href="${pageContext.request.contextPath}/equipment/dental_equipment_main"
                        class="cart_verify_result_btn btn"
                        style="border-radius: 0 0 0 5px; font-family: 'MinSans-Regular';">쇼핑 계속 하기</a> <a
                        href="${pageContext.request.contextPath}/equipment/shoppingcart_rentalandpurchase?id=${email}"
                        class="cart_verify_result_btn btn"
                        style="border-radius: 0 0 5px 0; background-color: #ca5c0d; font-family: 'MinSans-Regular';">바로
                        장바구니 가기</a>
                </div>
            </div>
        </div>
    </div>
    <div id="detail_c_wrapper">
        <div id="eq_detail_content"><!-- 대표 이미지 설정-->
            <div id="eq_detail_main_left">
                <div id="wrapper">
                    <div id="slider_wrap">
                    <ul id="slider">
                        <li><img src="/springframework-mini-project/equipment/display?fileName=${detailProduct.pattachoname}"></li>
                        <li><img src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg"></li>
                        <li><img src="${pageContext.request.contextPath}/resources/subinimage/chair_image.PNG"></li>
                        <li><img src="${pageContext.request.contextPath}/resources/subinimage/unit_chair1.jpg"></li>
                        <li><img src="${pageContext.request.contextPath}/resources/subinimage/as_crown.png"></li>
                    </ul>
                    
                    <!--controls-->
                    <div class="btns" id="next">></div>
                    <div class="btns" id="previous"><</div>
                    <div id="counter"></div>
                        
                    <!-- <div id="pagination_wrap">
                    <ul>
                    </ul>
                    </div> -->
                    <!--controls-->
                        </div>
                </div>
            
            </div>
            <div id="eq_detail_main_right">
                <a id="go_productlist" class="btn btn-outline-dark" href="/springframework-mini-project/equipment/dental_equipment_main">목록으로</a>
                <div>
                    <div id="eq_detail_main_content1">${detailProduct.productName} <img id="icon_dentist" src="${pageContext.request.contextPath}/resources/subinimage/doctor.png"/></div>
                    <hr/>
                    <div id="eq_detail_main_content2">${detailProduct.productIntro}<br/></div>
                    <div id="eq_detail_main_content3" style="margin-bottom:10px;">색상
                        <div id="colorcheck">
                            <label for="default1">${detailProduct.productColor}</label><input name="default1" type="radio" checked id="colorcheck_${detailProduct.productColor}">
                        </div>
                    </div>
                </div>
                    <div id="eq_detail_main_content4">
                        <form name='form' id="sendQuaToPay" action="detailToPayment" method="POST">
                            <table>
                            <tr>
                                <td>수량</td>
                                <td>
                                    <table>
                                        <tr>
                                            <td><input type='text' name='countQua' value='1' size='3' readonly style="text-align: center;" id="count_up_down"><td>
                                            <input type="hidden" id="sendModelNumber" name="purchaseModelNumber" value="${detailProduct.modelNumber}"/>
                                            <input type="hidden" id="sendprice" name="purchasePrice" value="${detailProduct.price}"/>
                                            <td>
                                                <a onclick='javascript_:change(1);'>▲</a><br>
                                                <a onclick='javascript_:change(-1);'>▼</a>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </table>
                        </form>
                    </div>
                    <div style="margin-bottom: 20px;">가격 　<fmt:formatNumber pattern="###,###,###,###" value="${detailProduct.price}"/>원</div>
                    <div id="eq_detail_main_content5">배송 가능 지역 <a id="table_button1" class="btn btn-leght" onclick="showcontent()"><img id="btn_able_delivery_loaction" src="${pageContext.request.contextPath}/resources/subinimage/down.png"></a></div>
                        <div id="able_delivery_loaction_info">- 서울, 경기, 인천, 부산, 울산, 광주, 세종, 대전, 대구<hr/>이외의 지역, 제주 및 도서 산간 지역은 배송 비용 및 설치비가 추가될 수 있으며, 배송이 불가할 수 있습니다. 
                            정확한 안내를 원하시는 경우 상담 신청을 하시길 바랍니다.</div>
                        
                    <hr>
                    <div>
                            <a id="btn_go_cart" onclick="javascript_:cartSession()" class="btn btn-light" >장바구니</a>
                            <a id="btn_go_counseling" class="btn btn-light" onclick="directPurchase()">구매</a>
                    </div>   
                </div>
            </div>
            <ul id="product_detail_content_click"class="nav nav-tabs">
                <li id="detail_click" class="nav-item" onclick="showDetail()">
                <p id="detail_style" class="nav-link active">장비 상세보기</p>
                </li>
                <li id="review_click"class="nav-item" onclick="showReview()">
                    <p id="review_style" style="background-color: #ccc;" class="nav-link active">리뷰 보기</p>
                </li>
            </ul>
            <div id="product_detail_content" >
                <div id="product_detail_content_showhide">
                    <c:forEach items="${detailPhoto}" var="photo">
                        <img class="productPhoto" src="/springframework-mini-project/equipment/display?fileName=${photo.productFilename}">
                        <if test="${empty photo.productFilename}">
                            상품 준비중입니다.
                        </if>
                    </c:forEach>
                </div>
                <!-- 리뷰 입니다요 -->
                <div id="product_detail_review">
                    <div class="review_ul">
                        <h3>Review</h3>
                        
                        <ul>
                
                            <li style="border-top: 2px solid #6a6a6a; border-bottom: 2px solid #6a6a6a; padding-left: 150px;">제목<span>날짜</span></li>
                            <c:forEach items="${reviewList}" var="review">
                            	<li class="mt-2 mb-2 review_content_wrap">
	                            	<ul>
		                                <li style="padding-top: 10px; padding-bottom:10px;">
		                                		<%-- <a class="product_detail_review_list_a btn"><span>${review.reviewTitle}</span></a> --%>
		                                		<label class="product_detail_review_choice">
										           <input type="checkbox" name="reviewTitle" value="${review.purchaseNumber}">
										           <span class="ml-3 mt-3">${review.reviewTitle}</span>
										       </label>
		                                		<span class="reviewWriteDate mt-3"><fmt:formatDate value="${review.reviewWriteDate}" pattern="yyyy.MM.dd"/></span>
		                                </li>
		                                <li class="product_detail_review_list_${review.purchaseNumber} pt-4 pb-3" style="display: none; border-top: 1px solid  rgba(106,106,106,0.2); width: 900px;">${review.reviewContent}</li>
		                                <c:if test="${review.fileName != null}">
			                                <li class="product_detail_review_list_${review.purchaseNumber} mt-2" style="display: none;"><img style="border-radius: 10px; border: 1px solid  rgba(106,106,106,0.2);" src="/springframework-mini-project/equipment/display?fileName=${review.fileName}"></li>
		                                </c:if>
	                            	</ul>
                            	</li>
                            	<hr style="border: 1px solid rgba(106,106,106,0.2);"/>
                            </c:forEach>
                        </ul>
 
                    </div>
                </div>
            </div>
        </div>    
        <script src="${pageContext.request.contextPath}/resources/js/equipment/equipment_detail.js"></script>
    </div>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
