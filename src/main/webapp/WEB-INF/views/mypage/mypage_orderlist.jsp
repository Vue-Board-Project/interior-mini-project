<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>

<div class="orderlist_section">
         <div class = "header_section">
          <div class="text">주문 내역</div>
          <span class="sub_text">지난 주문 내역을 조회합니다.</span>
          <hr width = 90%>
         </div>
         
         <div id = "mypage_orderlist_date_selection" class="btn-group btn-group-toggle" data-toggle="buttons">
			  <label class="btn btn-secondary active">
			    <input type="radio" name="options" id="orderlist_today" autocomplete="off" checked> 오늘
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="options" id="orderlist_1month" autocomplete="off"> 1개월
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="options" id="orderlist_3month" autocomplete="off"> 3개월
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="options" id="orderlist_6month" autocomplete="off"> 6개월
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="options" id="orderlist_1year" autocomplete="off"> 1년
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="options" id="orderlist_date_all" autocomplete="off"> 전체
			  </label>
			</div>
			
          <hr width = 90%>
          
     	<div class="content_section">
     	<!-- 재품 받기 -->
     		<div class = "prouducts">
     		<!-- 각 제품 요소들 -->
  				<div class = "productsList">
  					<span class = "product_image">
  						<a href = "#">
  							<img class = "mypage_productlist_images" src = "${pageContext.request.contextPath}/resources/images/chair.jpg" width = 200px; height = 200px/>
  						</a>
  					</span>
  					<span class = "product_info_name">제품 1</span>
  					<span class = "product_info_price">가격 : 123456 Won</span>
  					<span class = "product_deliver_status">배송 중</span>
  				</div>
  				<div class = "productsList">
  					<span class = "product_image">
  						<a href = "#">
  							<img class = "mypage_productlist_images" src = "${pageContext.request.contextPath}/resources/images/denall_sample1.png" width = 200px; height = 200px/>
  						</a>
  					</span>
  					<span class = "product_info_name">제품 2</span>
  					<span class = "product_info_price">가격 : 789000 Won</span>
  					<span class = "product_deliver_status">배송 중</span>
  				</div>
     		</div>		
		</div>
</div>

<style>

	#mypage_orderList{
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
          transition: all 0.5s ease;
          z-index: 2;
     }
     
      .productsList {
      		position : relative;
      		border : 1px solid #ca5c0d;
      		display: flex;
      		flex-wrap: wrap;
			flex-direction: row; 
			border-radius : 5px;
      }
     
      .productsList .product_image {
      		position: relative;
      		object-fit: cover;
      		border-radius : 20px;
      		
      		
      	}
      
     .mypage_productlist_images{
     		padding-left : 20px;
     		padding-bottom : 10px;
     		padding-top : 5px;
     
     }

     .productsList .product_info_name {
      		position : absolute;
      		top: 5%;
    		left: 50%;
      		font-size : 25px;
      		font-weight : 600;
      		/*padding-top : 10px;*/
  			 
      } 
         
      .productsList .product_info_price {
      		position : absolute;
      		font-weight : 400;
  			align-items: right;
  			top : 60%;
  			right : 5%;
      }
          
       .productsList .product_deliver_status{
      		position : absolute;
      		font-weight : 200px;
      		top : 80%;
  			right : 5%;
      		color : #ca5c0d;
      }
      
	     /*기간 선택하는 버튼*/
	     
     #mypage_orderlist_date_selection{
     	left : 5%;
     }
        
</style>

<script>
//DB 연동은 나중에

</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>



