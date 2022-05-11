<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class = "container-fluid p-0">
	<div style = "display:flex; width : 100%; height: 1000px;">
		<%-- <%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %> --%>
		<div class= "mypage_menu"  style = "display : inline-block;  width : 15%; height : 1000px; background-color : #faf9f6; border-right : 1px solid #ccc;">
			<div style="display : inline-block; width : 100%; height : 300px;" >
				<div style = "width : 90%; height : 300px; float : right; border-bottom : 3px solid #ca5c0d;">
					<p style = "font-family: 'MinSans-Bold'; font-size : 1.2rem; margin-top : 140px; margin-left : 20px;">마이페이지</p>
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
						<span class ="pb-1" style ="border-bottom : 5px solid #ca5c0d;">주문내역 상세</span>
					</div>
				</div>
			</div>
			<div style = "display :inline-block; width : 100%; height : 700px;">
		     	
		    <!-- 재품 받기 -->
	     		<div class = "prouducts"  style = "display : inline-block; width : 90%; margin-left : 5%;">
	     		
	     		<c:forEach var="orderDetail" items="${orderDetail}">    		
	     		 <!-- 각 제품 요소들 -->
	     			<div class= "product_list_element">
	     				<div class = "element_img_slot">
	     					<img class = "element_img" src = "/springframework-mini-project/equipment/display?fileName=${orderDetail.product.pattachoname}" style = "height : 120px; width : 80px;"/>
	     				</div>
	     				<div style = "display: flex; flex-direction: row; width : 87%; margin-left : 13%;">
		     				<div style = "display : inline-block; width : 66%; height : 150px;">
			     				<div class = "element_product_name" style = "font-family: 'MinSans-Regular'; margin-top : 50px; font-size : 1.3rem;">제품 이름 : ${orderDetail.product.productName} </div>
			     				<div class = "element_model_name" style = "margin-top : 50px; font-family: 'MinSans-Regular'; font-size : 1.3rem;">모델 이름 : ${orderDetail.stringModelNumber} </div>
			     			</div>
		     				<div style = "display : inline-block; width : 34%;  height : 150px;">
			     				<div class = "element_price" style = "margin-top : 70px; margin-left : 60px; font-family: 'MinSans-Regular';">
				     				<div class = "element_price_money">금액 : ${orderDetail.product.price} 원</div> 
				     				<span class = "element_product_num">개수 :  ${orderDetail.modelPurchaseQuantity}</span>
			     				</div>
		     				</div>
	     				</div>
	     			</div>	
	     		</c:forEach> 
	     		
	     		</div>		
	     		<table>
	     		<tr>
		           <td colspan="4" class="text-center">
		              <div style = "width : 400px; margin-left : 500px; margin-top : 30px;">
		                 <a class="btn btn-outline-secondary btn-sm" href="mypage/mypage_orderlist/detail?pageNo=1">처음</a>
		                 <c:if test="${pager.groupNo>1}">
		                    <a class="btn btn-outline-success btn-sm" href="mypage/mypage_orderlist/detail?pageNo=${pager.startPageNo-1}">이전</a>
		                 </c:if>
		                 
		                 <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
		                    <c:if test="${pager.pageNo != i}">
		                       <a class="btn btn-outline-secondary btn-sm" href="mypage/mypage_orderlist/detail?pageNo=${i}">${i}</a>
		                    </c:if>
		                    <c:if test="${pager.pageNo == i}">
		                       <a class="btn btn-secondary btn-sm" href="mypage/mypage_orderlist/detail?pageNo=${i}">${i}</a>
		                    </c:if>
		                 </c:forEach>
		                 
		                 <c:if test="${pager.groupNo<pager.totalGroupNo}">
		                    <a class="btn btn-outline-secondary btn-sm" href="mypage/mypage_orderlist/detail?pageNo=${pager.endPageNo+1}">다음</a>
		                 </c:if>
		                 <a class="btn btn-outline-secondary btn-sm" href="mypage/mypage_orderlist/detail?pageNo=${pager.totalPageNo}">맨끝</a>
		              </div>
		           </td>
		        </tr>
		      </table>
		     	
			</div>
		</div>
	</div>
</div>


<%@ include file="/WEB-INF/views/common/footer.jsp" %>


<style>
	#sidebar_mypage .mypage_list #mypage_orderList{
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
     
     .product_list_element .element_img_slot{
     		position : absolute;
     		height : 120px;
     		width : 80px;
     		margin-top : 15px;
     		margin-left : 70px;
     		box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.2);
     }
     
       .product_list_element .element_product_name{
        	font-family: 'MinSans-Regular';
        	display : inline-block;
        	margin-left : 100px;
     }
     
     .product_list_element .element_model_name{
      		font-family: 'MinSans-Regular';
      		display : inline-block;
        	margin-left : 210px;
     }
     

</style>