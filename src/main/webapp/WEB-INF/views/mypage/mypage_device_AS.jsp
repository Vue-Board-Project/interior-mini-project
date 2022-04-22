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
			<hr style="width : 1400px; color: #ca5c0d; background-color: #ca5c0d; height:3px; border:none"> 
			
			
			<div class = "mypage_device_AS_check_info">
				<img class = "mypage_device_AS_check_info_img" src = "${pageContext.request.contextPath}/resources/images/mypage/mypage_visit.png" style = "margin-left : 50px" />
				<div class = "mypage_device_AS_info_text"><b>출장 서비스 예약이 완료되었습니다.</b> <br> 오스템은 고객의 만족을 위해 최선을 다합니다.</div>
			</div>
			
			
		</div>
		
		<div id = "mypage_device_AS_reservation">
			<div id = "mypage_device_AS_reservation_title" style = "margin-top : 100px;"><h2>예약 정보</h2></div>
			<hr style="width : 1400px; color: #ca5c0d; background-color: #ca5c0d; height:3px; border:none" >
			
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
			<hr style="width : 1400px; color: #ca5c0d; background-color: #ca5c0d; height:3px; border:none">
			
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
		
		<div id = "mypage_device_AS_footer" class="text-center">
			<button id = "mypage_device_AS_button" class="btn btn-primary btn-lg">확인</button>
		</div>
		
		<div id = "mypage_device_AS_warning">
			<div id = "warning_header">
				<img src = "${pageContext.request.contextPath}/resources/images/mypage/mypage_warning_logo.png" style = "width : 20px; height : 20px; margin : 20px;"/>
				<div style = "margin-top : 20px;"><b>주의사항</b></div>
			</div>
			<div id = "warning_content" style = "margin-left : 10px;">
				<ul>
					<li>진행사항 확인의 경우 전화번호와 접수번호로 조회하실 수 있습니다</li>
					<li>천재지변, 침수, 파손 및 자재가 없을 경우 서비스가 다소 지연될 수 있습니다.</li>
					<li>센터 방문시 엔지니어가 바뀔 수 있습니다.</li>
				</ul>
			</div>
		</div>
	
	</div>
</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>


<style>

#sidebar_mypage .mypage_list #mypage_AS{
        	form :active;
        	color : #ca5c0d;
        	font-weight: 800;
}

.mypage_device_AS_check_info{
	display: flex;
 	flex-direction: row;
 	width : 1400px;
 	height : 150px;
 	border : 1px solid #ca5c0d;
 	background-color :  #e8e8db;
 	top : 50px;
 	border-radius: 10px;
}

.mypage_device_AS_check_info .mypage_device_AS_info_text {
	margin : auto;
}



#mypage_device_AS_jsp{
	background: #faf9f6;
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
 	height : 600px;
 
 }
 
 #mypage_device_AS_reservation_content .reservation_number{
 	width : 1400px;
 	height : 60px;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .reservation_number .reservation_number_title{
 	width : 300px;
 	height : 60px;
 	text-align: center;
 }
 
 #mypage_device_AS_reservation_content .reservation_number .reservation_number_content{
 	width : 1100px;
 	height : 60px;
 }
 
 
 
 #mypage_device_AS_reservation_content .service_type{
 	width : 1400px;
 	height : 60px;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .service_type .service_type_title{
 	width : 300px;
 	height : 60px;
 	text-align: center;
 }
 
 #mypage_device_AS_reservation_content .service_type .service_type_content{
 	width : 1100px;
 	height : 60px;
 }
 
 
 
 
 #mypage_device_AS_reservation_content .request_date{
 	width : 1400px;
 	height : 60px;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .request_date .request_date_title{
 	width : 300px;
 	height : 60px;
 	text-align: center;
 }
 
 #mypage_device_AS_reservation_content .request_date .request_date_content{
 	width : 1100px;
 	height : 60px;
 }
 
 
  #mypage_device_AS_reservation_content .visit_date{
 	width : 1400px;
 	height : 60px;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .visit_date .visit_date_title{
 	width : 300px;
 	height : 60px;
 	text-align: center;
 }
 
 #mypage_device_AS_reservation_content .visit_date .visit_date_content{
 	width : 1100px;
 	height : 60px;
 }
 
 
 
 
   #mypage_device_AS_reservation_content .product_name{
 	width : 1400px;
 	height : 60px;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .product_name .product_name_title{
 	width : 300px;
 	height : 60px;
 	text-align: center;
 }
 
 #mypage_device_AS_reservation_content .product_name .product_name_content{
 	width : 1100px;
 	height : 60px;
 }
 
 
    #mypage_device_AS_reservation_content .product_code_name{
 	width : 1400px;
 	height : 60px;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .product_code_name .product_code_name_title{
 	width : 300px;
 	height : 60px;
 	text-align: center;
 }
 
 #mypage_device_AS_reservation_content .product_code_name .product_code_name_content{
 	width : 1100px;
 	height : 60px;
 }
 
 
     #mypage_device_AS_reservation_content .product_symptom{
 	width : 1400px;
 	height : 60px;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .product_symptom .product_symptom_title{
 	width : 300px;
 	height : 60px;
 	text-align: center;
 }
 
 #mypage_device_AS_reservation_content .product_symptom .product_symptom_content{
 	width : 1100px;
 	height : 60px;
 }
 
 
 
#mypage_device_AS_reservation_content .product_symptom_detail{
 	width : 1400px;
 	height : 60px;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_reservation_content .product_symptom_detail .product_symptom_detail_title{
 	width : 300px;
 	height : 60px;
 	text-align: center;
 }
 
 #mypage_device_AS_reservation_content .product_symptom_detail .product_symptom_detail_content{
 	width : 1100px;
 	height : 60px;
 }
 
 
 
 
 
 /*customer */
 #mypage_device_AS_customer{
 	top : 100px;
 }
 
 #mypage_device_AS_customer  #mypage_device_AS_reservation_content  .customer_name{
 	width : 1400px;
 	height : 60px;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_name .customer_name_title{
 	width : 300px;
 	height : 60px;
 	text-align: center;
 }
 
 #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_name .customer_name_content{
 	width : 1100px;
 	height : 60px;
 }
 
 
 
  #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_phone_number{
 	width : 1400px;
 	height : 60px;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_phone_number .customer_phone_number_title{
 	width : 300px;
 	height : 60px;
 	text-align: center;
 }
 
 #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_phone_number .customer_phone_number_content{
 	width : 1100px;
 	height : 60px;
 }
 
 
 
   #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_address{
 	width : 1400px;
 	height : 60px;
 	display: flex;
 	flex-direction: row;
 }
 
  #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_address .customer_address_title{
 	width : 300px;
 	height : 60px;
 	text-align: center;
 }
 
 #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_address .customer_address_content{
 	width : 1100px;
 	height : 60px;
 }
 
 
 #mypage_device_AS_footer {
 	width : 1100px;
 	height : 100px;
 	
 	
 }
 
  #mypage_device_AS_footer #mypage_device_AS_button {
  	top : 100px;
  }
 
 #mypage_device_AS_warning {
 	width : 1400px;
 	height : 215px;
 	border : 1px solid #ca5c0d;
 	background-color :  #e8e8db;
 	border-radius: 10px;
 }
 
  
 #mypage_device_AS_warning #warning_header {
	 display: flex;
 	flex-direction: row;
 
 }
 
 
	

</style>