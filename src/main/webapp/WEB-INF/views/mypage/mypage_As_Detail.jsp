<%@ page contentType="text/html; charset=UTF-8"%>


<div id = "mypage_device_AS_reservation" style = "display : inline-block; width : 90%; margin-left : 5%;">
            <div id = "mypage_device_AS_reservation_title" style = "margin-top : 100px;"><h2 style = "margin-left : 10px;">
            <span style = "margin-left : 50px;">예약 정보</span>
            </h2></div>
            <hr style="width : 1400px; color: #ca5c0d; background-color: #ca5c0d; height:3px; border:none">
            
            <div id = "mypage_device_AS_reservation_content">
               
               <div class = "reservation_number">
                  <div class = "reservation_number_title">접수번호</div>
                  <div class = "reservation_number_content">${asInfo.receiptNumber}</div>
               </div>
               
               <div class = "request_date">
                  <div class = "request_date_title">접수일</div>
                  <div class = "request_date_content">
                  	${asInfo.applicationDate}
              	  </div>
               </div>
               
               <div class = "visit_date">
                  <div class = "visit_date_title">서비스 예정일</div>
                  <div class = "visit_date_content">
                  	${asInfo.scheduledServiceDate}
                  </div>
               </div>
            
               <div class = "product_name">
                  <div class = "product_name_title">제품명</div>
                  <div class = "product_name_content">${asInfo.productName}</div>
               </div>
               
               <div class = "product_code_name">
                  <div class = "product_code_name_title">모델명</div>
                  <div class = "product_code_name_content">${asInfo.stringModelNumber}</div>
               </div>
               
               <div class = "product_symptom">
                  <div class = "product_symptom_title">고장증상</div>
                  <div class = "product_symptom_content">${asInfo.basicSymptoms}</div>
               </div>
               
               <div class = "product_symptom_detail">
                  <div class = "product_symptom_detail_title">상세증상</div>
                  <div class = "product_symptom_detail_content">${asInfo.detailedSymptoms}</div>
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
                  <div class = "customer_name_content">${asInfo.user.name}</div>
               </div>
               
               <div class = "customer_phone_number">
                  <div class = "customer_phone_number_title">전화번호</div>
                  <div class = "customer_phone_number_content">${asInfo.user.phone}</div>
               </div>
               
               <div class = "customer_address">
                  <div class = "customer_address_title">주소</div>
                  <div class = "customer_address_content">${asInfo.user.address}</div>
               </div>
            
            </div>
         </div>