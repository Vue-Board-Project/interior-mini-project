<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div id = "mypage_orderlist_jsp">
	<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
	
	<div class="orderlist_section">
	         <div class = "header_section">
	          <div class="text">주문 내역 상세</div>
	         </div>
	        <%-- <div class = "orderNum_header">주문번호 : ${orderDetail.intPurchaseNumber}</div> --%>

	     	<div class="content_section">
	     	
	     	<!-- 재품 받기 -->
	     		<div class = "prouducts">
	     		
	     		<c:forEach var="orderList" items="${orderDetail}">    		
	     		 <!-- 각 제품 요소들 -->
	     			<div class= "product_list_element">
	     				<div class = "element_img_slot">
	     					<img class = "element_img" src = "${pageContext.request.contextPath}/resources/images/mypage/mypage_orderlist.png" />
	     				</div>
	     				<%-- <div class = "element_product_name">제품 이름 : ${orderDetail.product.productName} </div> --%>
	     				<%-- <div class = "element_model_name">모델 이름 : ${orderDetail.stringModelNumber} </div> --%>
	     				<div class = "element_price">
		     				<%-- <div class = "element_price_money">금액 : ${orderDetail.detailPrice}</div> --%>
		     				<span class = "element_price_unit">원</span>  
		     				<%-- <span class = "element_product_num">개수 :  ${orderDetail.modelPurchaseQuantity}</span> --%>
	     				</div>
	     				
	     				<div class = "element_delivery_status">배송중</div>
	     			</div>	
	     		</c:forEach> 
	     		
	     		</div>		
			</div>
	</div>
</div>


<style>

	#sidebar_mypage .mypage_list #mypage_orderList{
        	form :active;
        	color : #ca5c0d;
        	font-weight: 800;
        }
        
   .orderlist_section{
          position: relative;
          background: #faf9f6;
          min-height: 100vh;
          top: 0;
          left: 249px;
          width: calc(100% - 250px);   
     }
     
      .product_list_element {
      		position : relative;
      		width : 1100px;
      		height : 150px;
      		border-bottom : 1px solid #ccc;
      		background-color : #fff;
      		display: flex;
			flex-direction: row; 
      }
     
     .product_list_element .element_img_slot{
     		position : absolute;
     		height : 120px;
     		width : 80px;
     		border : 1px solid #ccc;
     		margin-top : 15px;
     		margin-left : 50px;
     }
     
       .product_list_element .element_product_name{
        	font-family: 'MinSans-Regular';
     		position : absolute;
     		height : 30px;
     		width : 600px;
     		margin-top : 15px;
     		margin-left : 180px;
     		
     }
     
     .product_list_element .element_model_name{
      		font-family: 'MinSans-Regular';
     		position : absolute;
     		height : 30px;
     		width : 600px;
     		margin-top : 55px;
     		margin-left : 180px;
     		
     }
     
      .product_list_element .element_price{
      		position : absolute;
      		display: flex;
 			flex-direction: row;
     		position : absolute;
     		height : 30px;
     		width : 600px;
     		margin-top : 95px;
     		margin-left : 180px;
     		
     }
     
     
      .product_list_element .element_price .element_price_money{
      		font-family: 'MinSans-Regular';
     		margin-left : 0px;
     		
     }
     
      .product_list_element .element_price .element_price_unit{
      		font-family: 'MinSans-Light';
     }
     
      .product_list_element .element_price .element_product_num{
      		 font-family: 'MinSans-Regular';
     		width : 200px;
     		margin-left : 200px;
     }
     
     .product_list_element .element_delivery_status{
      		font-family: 'MinSans-Regular';
      		position : absolute;
     		height : 30px;
     		width : 100px;
     		margin-left : 900px;
     		margin-top : 60px;
     }
     

    /*화면 */
    #mypage_orderlist_jsp {
    	background: #faf9f6;
    }
        
</style>

<script>
//DB 연결 나중에
	
</script>
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>



