<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class = "container-fluid p-0">
	<div style = "display:flex; width : 100%; height: 1000px;">
		<%-- <%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %> --%>
		<div class= "mypage_menu"  style = "display : inline-block;  width : 15%; height : 1000px; background-color : #faf9f6; border-right : 1px solid #ccc;">
			<div style="display : inline-block; width : 100%; height : 300px;" >
				<div style = "width : 90%; height : 300px; float : right; border-bottom : 3px solid #ca5c0d;">
					<p style = "font-family: 'MinSans-Bold'; font-size : 1rem; margin-top : 140px;">마이페이지</p>
				</div>
			</div>
			<div style = "display : inline-block; width : 100%; height : 700px; ">
				<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
			</div>
		</div>
		<div class= "mypage_content" style = "display : inline-block; width : 85%; height : 1000px;  background-color : #faf9f6;">
			<div style = "display :inline-block; width : 100%; height : 300px;">
				<div style = "width : 90%; height : 160px; border-bottom : 1px solid #ccc; margin : auto;">
					<div style = "font-family: 'MinSans-Bold'; font-size : 3rem; margin-top : 140px; margin-left : 2%;">
						<span class ="pb-1" style ="border-bottom : 5px solid #ca5c0d;">구매 내역</span>
					</div>
				</div>
			</div>
			<div style = "display :inline-block; width : 100%; height : 700px;">
		     	
		     	<!-- 재품 받기 -->
	     		<div class = "prouducts" style = "display : inline-block; width : 90%; margin-left : 5%;">
	     		
	     		<c:if test = "${orderList eq null}" >
	     			<div style = "display : inline-block; width : 100%; height : 400px;">
	     			<span>구매 목록이 없습니다.</span>
	     			<button onclick="location.href='/springframework-mini-project/equipment/dental_equipment_main'">장비 구매하러 가기</button>
	     			</div>
	     		</c:if>
	     		
	     		<c:forEach var="orderList" items="${orderList}">
	     		 <!-- 각 제품 요소들 -->
	     			<div class= "product_list_element">
	     				<div class = "element_img_slot">
	     					<a href="/springframework-mini-project/mypage/mypage_orderlist/detail?purchaseNumber=${orderList.purchaseNumber}">
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
	     				<div class = "element_delivery_status">${orderList.deliveryManagement}</div>
	     			</div>	
	     		</c:forEach> 
	     			<table>
					 <tr>
				           <td colspan="4" class="text-center">
				              <div style = "width : 400px; margin-left : 450px; margin-top : 30px;">
				                 <a class="btn btn-outline-secondary btn-sm" href="mypage_orderlist?pageNo=1">처음</a>
				                 <c:if test="${pager.groupNo>1}">
				                    <a class="btn btn-outline-success btn-sm" href="mypage_orderlist?pageNo=${pager.startPageNo-1}">이전</a>
				                 </c:if>
				                 
				                 <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
				                    <c:if test="${pager.pageNo != i}">
				                       <a class="btn btn-outline-secondary btn-sm" href="mypage_orderlist?pageNo=${i}">${i}</a>
				                    </c:if>
				                    <c:if test="${pager.pageNo == i}">
				                       <a class="btn btn-outline-success btn-sm" href="mypage_orderlist?pageNo=${i}">${i}</a>
				                    </c:if>
				                 </c:forEach>
				                 
				                 <c:if test="${pager.groupNo<pager.totalGroupNo}">
				                    <a class="btn btn-outline-secondary btn-sm" href="mypage_orderlist?pageNo=${pager.endPageNo+1}">다음</a>
				                 </c:if>
				                 <a class="btn btn-outline-secondary btn-sm" href="mypage_orderlist?pageNo=${pager.totalPageNo}">맨끝</a>
				              </div>
				           </td>
				        </tr>
						     </table>
	     		
	     		
	     		
	     		</div>
		     
		     	
			</div>
		</div>
	</div>
</div>


<%@ include file="/WEB-INF/views/common/footer.jsp" %>

<style>

#sidebar_mypage .mypage_list .mypage_list_element #mypage_orderList{
        	form :active;
        	color : #ca5c0d;
        	font-weight: 800;
        }

.product_list_element {
      		display : inline-block;
      		width : 100%;
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
      		margin-left : 50px;
      		
      	}
      .product_list_element	.element_title_explain{
      		position : absolute;
     		margin-left : 200px;
     		margin-top : 5px;
      		font-family: 'MinSans-Regular';
      		font-size : 1rem;
      }
     .product_list_element .element_title {
     		position : absolute;
     		margin-left : 200px;
     		margin-top : 5px;
     		font-family: 'MinSans-Regular';
     		font-size : 1rem;
     }
     
     .product_list_element .element_price{
     	position : absolute;
     	margin-left : 200px;
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
     	margin-left : 200px;
     	margin-top : 100px;
     }
     
    .product_list_element .element_delivery_status {
    	position : absolute;
    	font-family: 'MinSans-Regular';
    	margin-left : 900px;
    	margin-top : 120px;
    	font-size : 1rem;
    	width : 100px;
    	height : 1rem + 15px;
    	border : 1px solid #ccc;
    	text-align : center;
    
    }

    /*기간 선택하는 버튼*/    
     #mypage_orderlist_date_selection{
     	left : 5%;
     }
     
     
</style>



