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
						<span class ="pb-1" style ="border-bottom : 5px solid #ca5c0d;">주문내역 상세
						<span style = "font-family: 'MinSans-Bold'; font-size : 2rem;">(주문번호 : ${purchaseNumber})
						</span>
						</span> 
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
	     					<img class = "element_img" src = "/springframework-mini-project/equipment/display?fileName=${orderDetail.product.pattachoname}" style = "height : 120px; width : 120px;"/>
	     				</div>
	     				<div style = "display: flex; flex-direction: row;">
			     				<div class = "element_product_name" style = "position : absolute; font-family: 'MinSans-Regular'; margin-top : 65px; margin-left : 300px; font-size : 1rem;">제품 이름 : ${orderDetail.product.productName} </div>
			     				<div class = "element_model_name" style = "position : absolute; font-family: 'MinSans-Regular'; margin-top : 65px; margin-left : 600px;  font-size : 1rem;">모델 이름 : ${orderDetail.stringModelNumber} </div>
				     			<div class = "element_price_money" style = "position : absolute; font-family: 'MinSans-Regular'; margin-top : 65px; margin-left : 1000px;">금액 : ${orderDetail.product.price} 원</div> 
				     			<div class = "element_product_num"  style = "position : absolute; font-family: 'MinSans-Regular'; margin-top : 65px; margin-left : 1300px;">개수 :  ${orderDetail.modelPurchaseQuantity}</div>
	     				</div>
	     			</div>	
	     		</c:forEach> 
	     		
	     		</div>		
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
      		position : relative;
      		width : 100%;
      		height : 150px;
      		border-bottom : 1px solid #ccc;
      		background-color : #fff;
      		display: flex;
			flex-direction: row; 
      }
     
     .product_list_element .element_img_slot{
     		position : absolute;
     		margin-top : 15px;
     		margin-left : 50px;
     		border : 1px solid #ccc;
     		/* box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2); */
     }

</style>