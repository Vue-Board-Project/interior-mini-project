<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div id = "mypage_orderlist_jsp">
	<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
	
	<div class="orderlist_section">
	         <div class = "header_section">
	          <div class="text">구매 내역</div>
	          <span class="sub_text">지난 구매 내역을 조회합니다.</span>
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
	     		
	     		<c:forEach var="orderList" items="${orderList}">
	     		 <!-- 각 제품 요소들 -->
	     			<div class= "product_list_element">
	     				<div class = "element_img_slot">
	     					<a href="mypage_orderlist/detail?purchaseNumber=${orderList.purchaseNumber}">
	     					<img class = "element_img" src = "${pageContext.request.contextPath}/resources/pngs/header_logo_icon.png" />
	     					</a> 
	     				</div>
	     				<div class = "element_title_explain">구매번호</div>
	     				<a href="mypage_orderlist/detail?purchaseNumber=${orderList.purchaseNumber}">
	     				<div class = "element_title">${orderList.purchaseNumber}</div>
	     				</a> 
	     				<div class = "element_price">
		     				<div class = "element_price_money">금액 : ${orderList.paymentAmount}</div>
		     				<span class = "element_price_unit">원</span>  
	     				</div>
	     				<div class = "element_date">날짜 :  <fmt:formatDate value="${orderList.purchaseDate}" pattern="yyyy-MM-dd"/></div>
	     				<div class = "element_delivery_status">배송중</div>
	     			</div>	
	     		</c:forEach> 
	     			<div colspan="4" class="text-center">
						<div>
							<a class="btn btn-outline-primary btn-sm" href="mypage_orderlist?pageNo=1">처음</a>
							<c:if test="${pager.groupNo>1}">
								<a class="btn btn-outline-info btn-sm" href="mypage_orderlist?pageNo=${pager.startPageNo-1}">이전</a>
							</c:if>
							
							<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
								<c:if test="${pager.pageNo != i}">
									<a class="btn btn-outline-success btn-sm" href="mypage_orderlist?pageNo=${i}">${i}</a>
								</c:if>
								<c:if test="${pager.pageNo == i}">
									<a class="btn btn-danger btn-sm" href="mypage_orderlist?pageNo=${i}">${i}</a>
								</c:if>
							</c:forEach>
							
							<c:if test="${pager.groupNo<pager.totalGroupNo}">
								<a class="btn btn-outline-info btn-sm" href="mypage_orderlist?pageNo=${pager.endPageNo+1}">다음</a>
							</c:if>
							<a class="btn btn-outline-primary btn-sm" href="mypage_orderlist?pageNo=${pager.totalPageNo}">맨끝</a>
						</div>
					</div>
	     		
	     		
	     		
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
     
     .prouducts {
     	
     
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
     
      .product_list_element .element_img {
      		width : 70px;
      		height : 50px;
      		margin-top :40px;
      		margin-left : 30px;
      		
      	}
      .product_list_element	.element_title_explain{
      		position : absolute;
     		margin-left : 130px;
     		margin-top : 5px;
      		font-family: 'MinSans-Regular';
      		font-size : 1rem;
      }
     .product_list_element .element_title {
     		position : absolute;
     		margin-left : 130px;
     		margin-top : 20px;
     		font-family: 'MinSans-Medium';
     		font-size : 1.5rem;
     }
     
     .product_list_element .element_price{
     	position : absolute;
     	margin-left : 130px;
     	margin-top : 60px;
     	display: flex;
		flex-direction: row; 
     
     }
     
     .product_list_element .element_price .element_price_money{
      	font-family: 'MinSans-Regular';
      	font-size : 1rem;
     
     }

	 .product_list_element .element_price .element_price_unit{
      	font-family: 'MinSans-Regular';
      	margin-top : 4px;
      	margin-left : 2px;
      	font-size : 0.8rem;
     
     }
     
      .prouducts .product_list_element .element_date{
      	position : absolute;
      	font-family: 'MinSans-Regular';
      	width : 200px;
      	height : 2rem;
      	font-size : 1rem;
     	margin-left : 130px;
     	margin-top : 100px;
     }
     
    .product_list_element .element_delivery_status {
    	position : absolute;
    	font-family: 'MinSans-Thin';
    	margin-left : 600px;
    	margin-top : 120px;
    	font-size : 1rem;
    	width : 80px;
    	height : 1rem + 10px;
    	border : 1px solid #ccc;
    	text-align : center;
    
    }

    /*기간 선택하는 버튼*/    
     #mypage_orderlist_date_selection{
     	left : 5%;
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



