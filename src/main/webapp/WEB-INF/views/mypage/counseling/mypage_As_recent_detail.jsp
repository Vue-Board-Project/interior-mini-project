<%@ page contentType="text/html; charset=UTF-8"%>

<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class = "container-fluid p-0">
	<div style = "display:flex; width : 100%; height: 1400px;">
		<%-- <%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %> --%>
		<div class= "mypage_menu"  style = "display : inline-block;  width : 15%; height : 1400px; background-color : #faf9f6; border-right : 1px solid #ccc;">
			<div style="display : inline-block; width : 100%; height : 300px;" >
				<div style = "width : 90%; height : 300px; float : right; border-bottom : 3px solid #ca5c0d;">
					<p style = "font-family: 'MinSans-Bold'; font-size : 1.2rem; margin-top : 140px; margin-left : 20px;">마이페이지</p>
				</div>
			</div>
			<div style = "display : inline-block; width : 100%; height : 1100px; ">
				<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
			</div>
		</div>
		<div class= "mypage_content" style = "display : inline-block; width : 85%; height : 1400px;  background-color : #faf9f6;">
			<div style = "display :inline-block; width : 100%; height : 300px;">
				<div style = "width : 90%; height : 160px; border-bottom : 1px solid #ccc; margin : auto;">
					<div style = "font-family: 'MinSans-Bold'; font-size : 3rem; margin-top : 140px; margin-left : 2%;">
						<span class ="pb-1" style ="border-bottom : 5px solid #ca5c0d;">AS 내역</span>
					</div>
				</div>
			</div>
			<div style = "display :inline-block; width : 100%; height : 1100px;">
			
			
		<div id = "mypage_device_AS_reservation" style = "display : inline-block; width : 90%; margin-left : 5%;">
            <div id = "mypage_device_AS_reservation_title" style = "margin-top : 100px;"><h2 style = "margin-left : 10px;">
            <span style = "margin-left : 50px;">예약 정보</span>
            </h2></div>
            <hr style="width : 1400px; color: #ca5c0d; background-color: #ca5c0d; height:3px; border:none">
            
            <div id = "mypage_device_AS_reservation_content">
               
               <div class = "reservation_number">
                  <div class = "reservation_number_title">접수번호</div>
                  <div class = "reservation_number_content">${asCon.receiptNumber}</div>
               </div>
               
               <div class = "request_date">
                  <div class = "request_date_title">접수일</div>
                  <div class = "request_date_content">
                  	${asCon.applicationDate}
              	  </div>
               </div>
               
               <div class = "visit_date">
                  <div class = "visit_date_title">서비스 예정일</div>
                  <div class = "visit_date_content">
                  	${asCon.scheduledServiceDate}
                  </div>
               </div>
            
               <div class = "product_name">
                  <div class = "product_name_title">제품명</div>
                  <div class = "product_name_content"> 
	                   <c:if test = "${asCon.productName ne null}">
	                  		${asCon.productName}
	                  	</c:if>
	                  	<c:if test = "${asCon.productName eq null}">
	                  		unknown
	                  	</c:if>
                  	</div>
               </div>
               
               <div class = "product_code_name">
                  <div class = "product_code_name_title">모델명</div>
                  <div class = "product_code_name_content">${asCon.stringModelNumber}</div>
               </div>
               
               <div class = "product_symptom">
                  <div class = "product_symptom_title">고장증상</div>
                  <div class = "product_symptom_content">${asCon.basicSymptoms}</div>
               </div>
               
               <div class = "product_symptom_detail">
                  <div class = "product_symptom_detail_title">상세증상</div>
                  <div class = "product_symptom_detail_content">${asCon.detailedSymptoms}</div>
               </div>
               
               
            
            </div>
         </div>
         
         
         <div id = "mypage_device_AS_customer"  style = "display : inline-block; width : 90%; margin-left : 5%; margin-top : 50px;">
            <div id = "mypage_device_AS_customer_title"><h2 style = "margin-left : 10px;">
             <span style = "margin-left : 50px;">고객 정보</span>
             </h2></div>
            <hr style="width : 1400px; color: #ca5c0d; background-color: #ca5c0d; height:3px; border:none">
            
            <div id = "mypage_device_AS_reservation_content">
               
               <div class = "customer_name">
                  <div class = "customer_name_title">고객명</div>
                  <div class = "customer_name_content">${asCon.user.name}</div>
               </div>
               
               <div class = "customer_phone_number">
                  <div class = "customer_phone_number_title">전화번호</div>
                  <div class = "customer_phone_number_content">${asCon.user.phone}</div>
               </div>
               
               <div class = "customer_address">
                  <div class = "customer_address_title">주소</div>
                  <div class = "customer_address_content">${asCon.user.address}</div>
               </div>
            
            </div>
         </div>
         
      </div>
		</div>
	</div>
</div>   

<%@ include file="/WEB-INF/views/common/footer.jsp" %>     
   
 <style>
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
	     font-family: 'MinSans-Medium';
	    width : 300px;
	    height : 60px;
	    text-align: center;
	 }
	 
	 #mypage_device_AS_reservation_content .reservation_number .reservation_number_content{
	    font-family: 'MinSans-Regular';
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
	     font-family: 'MinSans-Medium';
	    width : 300px;
	    height : 60px;
	    text-align: center;
	 }
	 
	 #mypage_device_AS_reservation_content .service_type .service_type_content{
	    font-family: 'MinSans-Regular';
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
	     font-family: 'MinSans-Medium';
	    width : 300px;
	    height : 60px;
	    text-align: center;
	 }
	 
	 #mypage_device_AS_reservation_content .request_date .request_date_content{
	    font-family: 'MinSans-Regular';
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
	     font-family: 'MinSans-Medium';
	    width : 300px;
	    height : 60px;
	    text-align: center;
	 }
	 
	 #mypage_device_AS_reservation_content .visit_date .visit_date_content{
	    font-family: 'MinSans-Regular';
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
	     font-family: 'MinSans-Medium';
	    width : 300px;
	    height : 60px;
	    text-align: center;
	 }
	 
	 #mypage_device_AS_reservation_content .product_name .product_name_content{
	    font-family: 'MinSans-Regular';
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
	     font-family: 'MinSans-Medium';
	    width : 300px;
	    height : 60px;
	    text-align: center;
	 }
	 
	 #mypage_device_AS_reservation_content .product_code_name .product_code_name_content{
	    font-family: 'MinSans-Regular';
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
	     font-family: 'MinSans-Medium';
	    width : 300px;
	    height : 60px;
	    text-align: center;
	 }
	 
	 #mypage_device_AS_reservation_content .product_symptom .product_symptom_content{
	    font-family: 'MinSans-Regular';
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
	     font-family: 'MinSans-Medium';
	    width : 300px;
	    height : 60px;
	    text-align: center;
	 }
	 
	 #mypage_device_AS_reservation_content .product_symptom_detail .product_symptom_detail_content{
	    font-family: 'MinSans-Regular';
	    width : 1100px;
	    height : 60px;
	 }
	 
	 
	 
	 
	 
	 /*customer */
	 #mypage_device_AS_customer{
	    top : 100px;
	    width : 800px;
	    height : 400px;
	 }
	 
	 #mypage_device_AS_customer  #mypage_device_AS_reservation_content  .customer_name{
	    width : 1400px;
	    height : 60px;
	    display: flex;
	    flex-direction: row;
	 }
	 
	  #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_name .customer_name_title{
	     font-family: 'MinSans-Medium';
	    width : 300px;
	    height : 60px;
	    text-align: center;
	 }
	 
	 #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_name .customer_name_content{
	    font-family: 'MinSans-Regular';
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
	     font-family: 'MinSans-Medium';
	    width : 300px;
	    height : 60px;
	    text-align: center;
	 }
	 
	 #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_phone_number .customer_phone_number_content{
	    font-family: 'MinSans-Regular';
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
	     font-family: 'MinSans-Medium';
	    width : 300px;
	    height : 60px;
	    text-align: center;
	 }
	 
	 #mypage_device_AS_customer #mypage_device_AS_reservation_content .customer_address .customer_address_content{
	    font-family: 'MinSans-Regular';
	    width : 1100px;
	    height : 60px;
	 }
	 
 </style> 