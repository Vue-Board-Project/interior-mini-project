<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class = "container-fluid p-0">
	<div style = "display:flex; width : 100%; height: 1850px;">
		<%-- <%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %> --%>
		<div class= "mypage_menu"  style = "display : inline-block;  width : 15%; height : 1750px; background-color : #faf9f6; border-right : 1px solid #ccc;">
			<div style="display : inline-block; width : 100%; height : 300px;" >
				<div style = "width : 90%; height : 300px; float : right; border-bottom : 3px solid #ca5c0d;">
					<p style = "font-family: 'MinSans-Bold'; font-size : 1rem; margin-top : 140px; margin-left : 20px;">마이페이지</p>
				</div>
			</div>
			<div style = "display : inline-block; width : 100%; height : 1550px; ">
				<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
			</div>
		</div>
		<div class= "mypage_content" style = "display : inline-block; width : 85%; height : 1750px;  background-color : #faf9f6;">
			<div style = "display :inline-block; width : 100%; height : 300px;">
				<div style = "width : 90%; height : 160px; border-bottom : 1px solid #ccc; margin : auto;">
					<div style = "font-family: 'MinSans-Bold'; font-size : 3rem; margin-top : 140px; margin-left : 2%;">
						<span class ="pb-1" style ="border-bottom : 5px solid #ca5c0d;">장비 AS 조회</span>
					</div>
				</div>
			</div>
			<div style = "display :inline-block; width : 100%; height : 1550px;">
		     	
		     <div style = "display : inline-block; width : 90%; margin-left : 5%; margin-top : 30px;">	
		     	
		<c:if test = "${empty asList}" >
			<%@ include file="/WEB-INF/views/mypage/mypage_As_no_data.jsp" %>
		</c:if>
		
		<c:if test = "${!empty asList}" >
			      <!-- 장비 AS 내역 확인 -->
			      <table class="table table-sm table-bordered" id = "mypage_table_as_list">
			         <tr>
			        	<th style="width:15%; padding-left:10px;">접수번호</th>
			           	<th style="width:60%; padding-left:10px;">제품명</th>
			           	<th style="width:15%; padding-left:10px;">날짜</th>
			         </tr>
			         <c:forEach var="asList" items="${asList}">
			            <tr>
			               <td><a href="javascript:void(0)" onClick="ajaxAsDetail(${asList.receiptNumber})" style = "text-decoration : none; color : black; padding-left:10px;">${asList.receiptNumber}</a></td>
			               <c:if test = "${asList.productName ne null}">
			               		<td><a href="javascript:void(0)" onClick="ajaxAsDetail(${asList.receiptNumber})" style = "text-decoration : none; color : black; padding-left:10px;"><b>${asList.productName}</b></a></td>
			               </c:if>
			               <c:if test = "${asList.productName eq null && asList.stringModelNumber ne null}">
			               		<td><a href="javascript:void(0)" onClick="ajaxAsDetail(${asList.receiptNumber})" style = "text-decoration : none; color : black; padding-left:10px;"><b>${asList.stringModelNumber}</b></a></td>
			               </c:if>
			               <c:if test = "${asList.productName eq null && asList.stringModelNumber eq null}">
			               		<td><a href="javascript:void(0)" onClick="ajaxAsDetail(${asList.receiptNumber})" style = "text-decoration : none; color : black; padding-left:10px;"><b>unknown</b></a></td>
			               </c:if>
			               <td style ="padding-left:10px;">${asList.applicationDate}</td>
			            </tr>
			         </c:forEach>
			         
				 <tr>
			           <td colspan="4" class="text-center">
			              <div>
			                 <a class="btn btn-outline-secondary btn-sm" href="device_AS?pageNo=1">처음</a>
			                 <c:if test="${pager.groupNo>1}">
			                    <a class="btn btn-outline-success btn-sm" href="device_AS?pageNo=${pager.startPageNo-1}">이전</a>
			                 </c:if>
			                 
			                 <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
			                    <c:if test="${pager.pageNo != i}">
			                       <a class="btn btn-outline-secondary btn-sm" href="device_AS?pageNo=${i}">${i}</a>
			                    </c:if>
			                    <c:if test="${pager.pageNo == i}">
			                       <a class="btn btn-secondary btn-sm" href="device_AS?pageNo=${i}">${i}</a>
			                    </c:if>
			                 </c:forEach>
			                 
			                 <c:if test="${pager.groupNo<pager.totalGroupNo}">
			                    <a class="btn btn-outline-secondary btn-sm" href="device_AS?pageNo=${pager.endPageNo+1}">다음</a>
			                 </c:if>
			                 <a class="btn btn-outline-secondary btn-sm" href="device_AS?pageNo=${pager.totalPageNo}">맨끝</a>
			              </div>
			           </td>
			        </tr>
			     </table>
	      
	      </div>
	      
	      <div class = "mypage_device_AS_detail_slot">
	      		<script>
		       
			        function ajaxAsDetail(receiptNo){
						$.ajax({
				                url : "device_AS/asDetail",
				                data : {receiptNo},
				                method: "get"
				            }).done((data) => {
				            	console.log("finish?");
				            	console.log(data);
								$('.mypage_device_AS_detail_slot').html(data);
				            });
			        }
				</script>
	      	</div>
			      <div id = "mypage_device_AS_warning" style = "display : inline-block; width : 90%; margin-left : 5%; margin-bottom : 50px;">
			         <div id = "warning_header" style = "display: flex; flex-direction: row; margin-left : 30px; margin-top : 30px;">
			            <img src = "${pageContext.request.contextPath}/resources/images/mypage/mypage_warning_logo.png" style = "width : 20px; height : 20px;"/>
			            <div style = "margin-left : 10px;"><b>주의사항</b></div>
			         </div>
			         <div id = "warning_content" style = "margin-left : 10px; margin-top : 10px; ">
			            <ul>
			               <li>진행사항 확인의 경우 전화번호와 접수번호로 조회하실 수 있습니다</li>
			               <li>천재지변, 침수, 파손 및 자재가 없을 경우 서비스가 다소 지연될 수 있습니다.</li>
			               <li>센터 방문시 엔지니어가 바뀔 수 있습니다.</li>
			            </ul>
			         </div>
			      </div>
			 </c:if>
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
    height : 170px;
    background-color :  #e8e8db;
    border-radius: 10px;
 }
 
  
   

</style>