<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div id = "mypage_device_AS_jsp">
	<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
	<div id = "mypage_device_AS_jsp_content">
	
	
	<div class = "header_section">
				<div class="text">장비 AS</div>
	          	<span class="sub_text">장비 AS 내역을 조회합니다.</span>
	          	<hr width = 90%>
	</div>
	<div class="content_section">
		<div id = "mypage_device_AS_header" style = "margin-top : 100px;">
			<h2>출장서비스 예약 완료</h2>
			<hr> 
			
			
			<div class = "mypage_device_AS_check_info">
				<img class = "mypage_device_AS_check_info_img" src = "${pageContext.request.contextPath}/resources/images/mypage/mypage_visit.png" />
				<div class = "mypage_device_AS_info_text">출장 서비스 예약이 완료되었습니다. <br> 오스템은 고객의 만족을 위해 최선을 다합니다.</div>
			</div>
			
			
		</div>
		
		<div id = "mypage_device_AS_reservation">
			<div id = "mypage_device_AS_reservation_title" style = "margin-top : 100px;"><h2>예약 정보</h2></div>
			<hr>
			
			<div id = "mypage_device_AS_reservation_content">
				
				<div class = "reservation_number">
					<div class = "reservation_number_title">접수번호</div>
					<div class = "reservation_number_content">202204221234</div>
				</div>
				
				<div class = "service_type">
					<div class = "service_type_title">서비스 구분</div>
					<div class = "service_type_content">출장서비스 예약</div>
				</div>
				
				<div class = "request_date">
					<div class = "request_date_title">접수일</div>
					<div class = "request_date_content">2022년 4월 21일</div>
				</div>
				
				<div class = "visit_date">
					<div class = "visit_date_title">서비스 예정일</div>
					<div class = "visit_date_content">2022년 5월 6일</div>
				</div>
			
				<div class = "product_name">
					<div class = "product_name_title">제품명</div>
					<div class = "product_name_content">유니트 체어</div>
				</div>
				
				<div class = "product_code_name">
					<div class = "product_code_name_title">모델명</div>
					<div class = "product_code_name_content">OSSTEM-CHAIR2021</div>
				</div>
				
				<div class = "product_symptom">
					<div class = "product_symptom_title">고장증상</div>
					<div class = "product_symptom_content">제품 외부 관련</div>
				</div>
				
				<div class = "product_symptom_detail">
					<div class = "product_symptom_detail_title">상세증상</div>
					<div class = "product_symptom_detail_content">제품이 누수된 것 같습니다.</div>
				</div>
				
				
			
			</div>
		</div>
		
		
		<div id = "mypage_device_AS_customer">
			<div id = "mypage_device_AS_customer_title"><h2>고객 정보</h2></div>
			<hr>
			
			<div id = "mypage_device_AS_reservation_content">
				
				<div class = "customer_name">
					<div class = "customer_name_title">고객명</div>
					<div class = "customer_name_content">홍수빈</div>
				</div>
				
				<div class = "customer_phone_number">
					<div class = "customer_phone_number_title">전화번호</div>
					<div class = "customer_phone_number_content">010-6472-4876</div>
				</div>
				
				<div class = "customer_address">
					<div class = "customer_address_title">주소</div>
					<div class = "customer_address_content">서울시 서초구 IT 벤처타워 12층</div>
				</div>
			
			</div>
		</div>
		
		<div id = "mypage_device_AS_footer">
			<button class="btn btn-primary btn-lg" style = "left : 600px; top : 100px;">확인</button>
		</div>
		
		<div id = "mypage_device_AS_warning"></div>
	
	</div>
</div>
</div>


<style>

.mypage_device_AS_check_info{
	display: flex;
 	flex-direction: row;
 	width : 1400px;
 	height : 150px;
 	border : 1px solid #ca5c0d;
 	background-color :  #e8e8db;
}

.mypage_device_AS_check_info .mypage_device_AS_info_text {
	padding : auto;
}



#mypage_device_AS_jsp{
	 z-index: 1;
	background: #faf9f6;
}

 /*풋터 위로 */
 #main_footer_wrap {
 	 z-index: 2;
 } 
 
 #mypage_device_AS_jsp_content{
 	   position: relative;
	   background: #faf9f6;
	   min-height: 100vh;
	   top: 0;
	   left: 249px;
	   width: calc(100% - 250px);  
	   height : 2000px; 
 }
 
 #mypage_device_AS_reservation{
 	width : 800px;
 	height : 1000px;
 
 }
 
 #mypage_device_AS_reservation_content .reservation_number{
 	width : 1400px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .reservation_number .reservation_number_title{
 	width : 300px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	padding : auto;
 }
 
 #mypage_device_AS_reservation_content .reservation_number .reservation_number_content{
 	width : 1100px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 
 
 #mypage_device_AS_reservation_content .service_type{
 	width : 1400px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .service_type .service_type_title{
 	width : 300px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	padding : auto;
 }
 
 #mypage_device_AS_reservation_content .service_type .service_type_content{
 	width : 1100px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 
 
 
 #mypage_device_AS_reservation_content .request_date{
 	width : 1400px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .request_date .request_date_title{
 	width : 300px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 #mypage_device_AS_reservation_content .request_date .request_date_content{
 	width : 1100px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 
  #mypage_device_AS_reservation_content .visit_date{
 	width : 1400px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .visit_date .visit_date_title{
 	width : 300px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 #mypage_device_AS_reservation_content .visit_date .visit_date_content{
 	width : 1100px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 
 
 
   #mypage_device_AS_reservation_content .product_name{
 	width : 1400px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .product_name .product_name_title{
 	width : 300px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 #mypage_device_AS_reservation_content .product_name .product_name_content{
 	width : 1100px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 
    #mypage_device_AS_reservation_content .product_code_name{
 	width : 1400px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .product_code_name .product_code_name_title{
 	width : 300px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 #mypage_device_AS_reservation_content .product_code_name .product_code_name_content{
 	width : 1100px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 
     #mypage_device_AS_reservation_content .product_symptom{
 	width : 1400px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .product_symptom .product_symptom_title{
 	width : 300px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 #mypage_device_AS_reservation_content .product_symptom .product_symptom_content{
 	width : 1100px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 
 
#mypage_device_AS_reservation_content .product_symptom_detail{
 	width : 1400px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .product_symptom_detail .product_symptom_detail_title{
 	width : 300px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 #mypage_device_AS_reservation_content .product_symptom_detail .product_symptom_detail_content{
 	width : 1100px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 
 
 
 
 /*customer */
 #mypage_device_AS_customer{
 	top : 0px;
 }
 
 #mypage_device_AS_customer  #mypage_device_AS_reservation_content  .customer_name{
 	width : 1400px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_name .customer_name_title{
 	width : 300px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_name .customer_name_content{
 	width : 1100px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 
 
  #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_phone_number{
 	width : 1400px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_phone_number .customer_phone_number_title{
 	width : 300px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_phone_number .customer_phone_number_content{
 	width : 1100px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 
 
   #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_address{
 	width : 1400px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_address .customer_address_title{
 	width : 300px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_address .customer_address_content{
 	width : 1100px;
 	height : 60px;
 	border : 1px solid #ca5c0d;
 }
 
 
 #mypage_device_AS_footer {
 	width : 1100px;
 	height : 100px;
 }
 
 
 
 
 
 
 
 
	

</style>