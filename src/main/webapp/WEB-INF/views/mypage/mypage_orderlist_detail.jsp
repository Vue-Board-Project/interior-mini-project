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
	     				<div class = "element_product_name">제품 이름 : ${orderDetail.product.productName} </div>
	     				<div class = "element_model_name">모델 이름 : ${orderDetail.stringModelNumber} </div>
	     				<div class = "element_price">
		     				<div class = "element_price_money">금액 : ${orderDetail.product.price}</div>
		     				<span class = "element_price_unit">원</span>  
		     				<span class = "element_product_num">개수 :  ${orderDetail.modelPurchaseQuantity}</span>
	     				</div>
	     				
	     				<div class = "element_delivery_status">배송중</div>
	     			</div>	
	     		</c:forEach> 
	     		
	     		</div>		
	     		<table>
	     		<tr>
		           <td colspan="4" class="text-center">
		              <div style = "width : 400px; margin-left : 500px; margin-top : 30px;">
		                 <a class="btn btn-outline-secondary btn-sm" href="/detail?pageNo=1">처음</a>
		                 <c:if test="${pager.groupNo>1}">
		                    <a class="btn btn-outline-success btn-sm" href="/detail?pageNo=${pager.startPageNo-1}">이전</a>
		                 </c:if>
		                 
		                 <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
		                    <c:if test="${pager.pageNo != i}">
		                       <a class="btn btn-outline-secondary btn-sm" href="/detail?pageNo=${i}">${i}</a>
		                    </c:if>
		                    <c:if test="${pager.pageNo == i}">
		                       <a class="btn btn-outline-success btn-sm" href="/detail?pageNo=${i}">${i}</a>
		                    </c:if>
		                 </c:forEach>
		                 
		                 <c:if test="${pager.groupNo<pager.totalGroupNo}">
		                    <a class="btn btn-outline-secondary btn-sm" href="/detail?pageNo=${pager.endPageNo+1}">다음</a>
		                 </c:if>
		                 <a class="btn btn-outline-secondary btn-sm" href="/detail?pageNo=${pager.totalPageNo}">맨끝</a>
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

</style>