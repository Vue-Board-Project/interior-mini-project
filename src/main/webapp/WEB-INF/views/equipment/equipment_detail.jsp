<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.mycompany.webapp.dto.UsersDto" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<link href="${pageContext.request.contextPath}/resources/css/equipment/equipment_detail.css" rel="stylesheet" type="text/css"/>
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

<div id="eq_detail_content"><!-- 대표 이미지 설정-->
    <div id="eq_detail_main_left" style="margin-left: 250px;">
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
        <div>
            <div id="eq_detail_main_content1">${detailProduct.productName} <img id="icon_dentist" src="${pageContext.request.contextPath}/resources/subinimage/doctor.png"/></div>
            <hr/>
            <div id="eq_detail_main_content2">${detailProduct.productIntro}<br/></div>
            <div id="eq_detail_main_content3">색상
                <div id="colorcheck">
                	<label for="default1">${detailProduct.productColor}</label><input name="default1" type="radio" checked id="colorcheck_${detailProduct.productColor}">
                    <!-- <label for="default1">검정 </label><input name="default1" type="radio" checked id="colorcheck_black">
                    <label for="default2">파랑 </label><input name="default1" type="radio" id="colorcheck_blue">
                    <label for="default3">빨강 </label><input name="default1" type="radio" id="colorcheck_red">
                    <label for="default4">보라 </label><input name="default1" type="radio" id="colorcheck_purple">
                    <label for="default5">초록 </label><input name="default1" type="radio" id="colorcheck_green"> -->
                </div>
            </div>
         </div>
            <div id="eq_detail_main_content4">
                <form name='form'>
                    <table>
                     <tr>
                        <td>수량</td>
                        <td>
                            <table>
                                <tr>
                                    <td><input type='text' name='count' value='1' size='3' readonly style="text-align: center;" id="count_up_down"><td>
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
            <div>가격 　<fmt:formatNumber pattern="###,###,###,###" value="${detailProduct.price}"/>원</div>
            <div id="eq_detail_main_content5">배송 가능 지역 <a id="table_button1" class="btn btn-leght" onclick="showcontent()"><img id="btn_able_delivery_loaction" src="${pageContext.request.contextPath}/resources/subinimage/down.png"></a></div>
                <div id="able_delivery_loaction_info">- 서울, 경기, 인천, 부산, 울산, 광주, 세종, 대전, 대구<hr/>이외의 지역, 제주 및 도서 산간 지역은 배송 비용 및 설치비가 추가될 수 있으며, 배송이 불가할 수 있습니다. 
                    정확한 안내를 원하시는 경우 상담 신청을 하시길 바랍니다.</div>
                  
            <hr>
            <div>
	            <form >
	            	<input type="hidden" id="sendModelNumber" value="${detailProduct.modelNumber}">
	            	<input type="hidden" >
	            </form>
	                <a id="btn_go_cart" onclick="javascript_:cartSession()" class="btn btn-light" >장바구니</a>
	                <a id="btn_go_counseling" class="btn btn-light" href="${pageContext.request.contextPath}/equipment/paymentpage">구매</a>
            </div>     
        
    
		    <div id="main_image_change">
		        <a></a>
		    </div>
  	</div>

    <script src="${pageContext.request.contextPath}/resources/js/equipment/equipment_detail.js"></script>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
