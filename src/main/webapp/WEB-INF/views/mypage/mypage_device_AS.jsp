<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div id = "mypage_device_AS_jsp">
   <%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
   <div id = "mypage_device_AS_jsp_content">
   
   
   <div class = "header_section">
            <div class="text">장비 AS 조회</div>
                <span class="sub_text">장비 AS 내역을 조회합니다.</span>
                <hr width = 90%>
   </div>
   <div class="content_section">
   <!-- 장비 AS 내역 확인 -->
      <table class="table table-sm table-bordered" id = "mypage_table_as_list">
         <tr>
            <th style="width:30px">접수번호</th>
            <th style="width:300px">제품명</th>
            <th style="width:70px">날짜</th>
         </tr>
         
         <c:forEach var="asList" items="${asList}">
            <tr>
               <td>${asList.receiptNumber}</td>
               <td><a href="device_AS?receiptNo=${asList.receiptNumber}" style = "text-decoration : none; color : black;"><b>${asList.productName}</b></a></td>
               <td><fmt:formatDate value="${asList.applicationDate}" pattern="yyyy-MM-dd"/></td>
            </tr>
         </c:forEach>
         
         <tr>
            <td colspan="4" class="text-center">
               <div>
                  <a class="btn btn-outline-primary btn-sm" href="device_AS?pageNo=1">처음</a>
                  <c:if test="${pager.groupNo>1}">
                     <a class="btn btn-outline-info btn-sm" href="device_AS?pageNo=${pager.startPageNo-1}">이전</a>
                  </c:if>
                  
                  <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
                     <c:if test="${pager.pageNo != i}">
                        <a class="btn btn-outline-success btn-sm" href="device_AS?pageNo=${i}">${i}</a>
                     </c:if>
                     <c:if test="${pager.pageNo == i}">
                        <a class="btn btn-danger btn-sm" href="device_AS?pageNo=${i}">${i}</a>
                     </c:if>
                  </c:forEach>
                  
                  <c:if test="${pager.groupNo<pager.totalGroupNo}">
                     <a class="btn btn-outline-info btn-sm" href="device_AS?pageNo=${pager.endPageNo+1}">다음</a>
                  </c:if>
                  <a class="btn btn-outline-primary btn-sm" href="device_AS?pageNo=${pager.totalPageNo}">맨끝</a>
               </div>
            </td>
         </tr>
      </table>
      
      <div class = "mypage_device_AS_detail_slot">
         <div id = "mypage_device_AS_reservation">
            <div id = "mypage_device_AS_reservation_title" style = "margin-top : 100px;"><h2>예약 정보</h2></div>
            <hr style="width : 1400px; color: #ca5c0d; background-color: #ca5c0d; height:3px; border:none">
            
            <div id = "mypage_device_AS_reservation_content">
               
               <div class = "reservation_number">
                  <div class = "reservation_number_title">접수번호</div>
                  <div class = "reservation_number_content">${asInfo.receiptNumber}</div>
               </div>
               
               <div class = "request_date">
                  <div class = "request_date_title">접수일</div>
                  <div class = "request_date_content">${asInfo.applicationDate}</div>
               </div>
               
               <div class = "visit_date">
                  <div class = "visit_date_title">서비스 예정일</div>
                  <div class = "visit_date_content">${asInfo.scheduledServiceDate}</div>
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
         
         
         <div id = "mypage_device_AS_customer">
            <div id = "mypage_device_AS_customer_title"><h2>고객 정보</h2></div>
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
         
      </div>
      <div id = "mypage_device_AS_warning">
         <div id = "warning_header">
            <img src = "${pageContext.request.contextPath}/resources/images/mypage/mypage_warning_logo.png" style = "width : 20px; height : 20px; margin : 30px;"/>
            <div style = "margin-top : 20px;"><b>주의사항</b></div>
         </div>
         <div id = "warning_content" style = "margin-left : 10px; margin-top : 20px; ">
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

a:link {
    text-decoration: none;
    color:black;
}

a:visited {
    text-decoration: none;
}

a:hover {
    color : blue;
}

a:active {
    text-decoration: none;
}

#mypage_table_as_list{
   font-family: 'MinSans-Regular';
}

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
    background-color :  #e8e8db;
    border-radius: 10px;
 }
 
  
 #mypage_device_AS_warning #warning_header {
    display: flex;
    flex-direction: row;
 
 }
 
 
   

</style>