<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div id = "mypage_review_jsp">
	<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
	
	<div class="review_section">
			<div class = "header_section">
	          <div class="text">리뷰 관리</div>
	          	<span class="sub_text">장비들의 후기를 남기거나 확인할 수 있습니다.</span>
	          <hr width = 90%>
	         </div>
	         
	         <div id = "mypage_review_date_selection" class="btn-group btn-group-toggle" data-toggle="buttons">
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
		     	<div class = "mypage_review_contents_wrap">
			     	<div class = "mypage_review_tab_menu">
					    <div id = "mypage_review_button_before" class="btn col-md-6" onclick = "mypage_review_avaliable()">
					      <a id = "before_review">작성 가능 후기</a>
					    </div>
					    <div id = "mypage_review_button_after" class="btn col-md-6" onclick = "mypage_review_finished()">
					      <a id = "after_review">작성 완료 후기</a>
					    </div>
					 </div>
					  
					  <div class = "mypage_review_contents_menu">
						   <div id="mypage_review_tab_available" class="tabmenu_content ">
						      <!-- <div id = "mypage_review_tab_available_null">작성 가능한 후기가 없습니다.</div> -->
						     
						     
						      <c:forEach var="reviewBefore" items="${reviewBefore}">
						      <div class = "mypage_review_before_element">
						      	<div class = "image_slot">
						      		<img class = "mypage_review_product_img" src = ""></img>
						      	</div>
						      	<div class = "mypage_review_product_title">제품명 : ${reviewBefore.product.productName}</div>
						      	<div class = "mypage_review_model_name">모델명 : ${reviewBefore.modelNumber}</div>
						      	<div class = "mypage_review_product_number">갯수 : ${reviewBefore.purchase.paymentAmount} 개</div>
						      	<div class = "mypage_review_product_date">${reviewBefore.purchase.purchaseDate}</div>
						      	<div class = "mypage_review_product_button">
						      	<a href="mypageReview?purchaseNumber=${reviewBefore.purchaseNumber}">
						      		<button type="button" class="btn btn-primary" name = "mypage_review_product_button">후기 쓰기</button>
						      	</a>
						      	</div>
						      </div>
						      </c:forEach>
						    
						    
						    </div>
						    <div id="mypage_review_tab_finished" class="tabmenu_content">
						    	<!-- <div id = "mypage_review_tab_finished_null">작성 완료한 후기가 없습니다.</div> -->
						    	 <c:forEach var="reviewAfter" items="${reviewAfter}">
						    	<div class = "mypage_user_review_element">
					    			<div class = "user_product_title">${reviewAfter.stringProductName}
					    			<span class = "user_product_modelName">모델명 : ${reviewAfter.modelNumber}</span>
					    			</div>
						    		<div class = "user_review_contents">
						    			<div class = "user_review_title">${reviewAfter.reviewTitle}</div>
						    			<div class = "user_product_bought_date">${reviewAfter.reviewWriteDate}</div>
						    			<div class = "user_review_image">
						    				<img src = "${pageContext.request.contextPath}/resources/images/mypage/chair.jpg"></img>
						    			</div>
						    			<div class = "user_review_text">${reviewAfter.reviewContent}</div>
						    		</div>
						    	</div>
						    	</c:forEach>
						    </div>
					    </div>
					      
					      
					  </div>
			</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/mypage/mypage_review_popup.jsp" %>
<style>

	#sidebar_mypage .mypage_list #mypage_review{
        	form :active;
        	color : #ca5c0d;
        	font-weight: 800;
        }
        
        
    .review_section{
          position: relative;
          background: #faf9f6;
          min-height: 100vh;
          top: 0;
          left: 250px;
          width: calc(100% - 250px);
          transition: all 0.5s ease;
     }
     
     /*탭 버튼 포함해서 내용 창 묶기 */
     .mypage_review_contents_wrap {
     	width : 1200px;
     	height : 700px;
     	background-color : #fff;
     }
     
     /*리뷰 작성 두 탭을 담은 container(ul 의 클래스명) */
     .mypage_review_tab_menu{
     	/*position : relative;*/
     	display: flex;
     	flex-direction: row;  
     	height : 50px;
     	margin-top : 0px;
     	/*justify-content: space-around;*/
     }
     
     /*각 탭 버튼 활성화하기*/
     #mypage_review_button_before{
     	margin-top : 10px;
     	border : 1px solid #e8e8db;
     	background-color : #fff;
     }
     
     #mypage_review_button_after{
     	margin-top : 10px;
     	border : 1px solid #e8e8db;
     	background-color : #fff;
     }
     
     .mypage_review_contents_menu .tabmenu_content{
     		border : 1px solid #e8e8db;
     		background-color : #fff;
      		color:#272723;
      		height : 100%;
     }
     
     .mypage_review_before_element{
     	width : 1200px;
     	height : 250px;
     	display: flex;
     	flex-direction: row; 
     }
     
    .mypage_review_before_element .image_slot {
    	width : 200px;
    	height : 200px;
    	border : 1px solid #ccc;
    	margin-left : 50px;
    	margin-top : 25px;
    }
    
    .mypage_review_before_element img {
    	width : 200px;
    	height : 200px;
    
    }
    
     .mypage_review_before_element .mypage_review_product_title {
     	font-family: 'MinSans-Bold';
     	font-size : 1.5rem;
     	width : 500px;
     	height : 2rem;
     	margin-left : 50px;
     	margin-top : 60px;
     	
     }
    
    .mypage_review_before_element .mypage_review_model_name{
    	font-family: 'MinSans-Medium';
    	position : absolute;
    	font-size : 1rem;
    	width : 300px;
    	height : 50px;
    	margin-top : 100px;
    	margin-left : 300px;
    }
    
    
    .mypage_review_before_element .mypage_review_product_number{
    	font-family: 'MinSans-Medium';
    	position : absolute;
    	font-size : 1rem;
    	width : 100px;
    	height : 50px;
    	margin-top : 150px;
    	margin-left : 300px;
    }
    
    
     .mypage_review_before_element .mypage_review_product_date {
     	font-family: 'MinSans-Medium';
     	position : absolute;
     	font-size : 1rem;
     	width : 200px;
     	height : 100px;
     	text-align : left;
     	margin-top : 200px;
     	margin-left : 800px;
     	
     
     }
     .mypage_review_before_element .mypage_review_product_button {
     	position : absolte;
     	width : 250px;
     	height : 110px;
     	float : right;
     	margin-top : 85px;
     	margin-left : 380px;
     
     }
     
  
     .mypage_review_contents_menu #mypage_review_tab_finished{
      		display:none;
      
      }
      
      .mypage_user_review_element {
      	width : 1200px;
     	height : 250px;
      }

      .mypage_user_review_element .user_product_title {
      		height : 49px;
      		width : 1200px;
      		font-family: 'MinSans-Bold';
      		padding-left : 50px;
      		padding-top : 10px;
      		font-size : 1.5rem;
      		border-bottom : 1px solid #ccc;  
      }
      
      .mypage_user_review_element .user_product_title .user_product_modelName{
      		font-family: 'MinSans-Regular';
      		font-size : 1rem;
      }
      
      .mypage_user_review_element .user_review_contents {
    		display: flex;
     		flex-direction: row;
     		height : 200px;
      }
      
       .mypage_user_review_element .user_review_contents .user_review_title {
      		padding-top : 5px;
       		width : 950px;
       		height : 50px;
       		font-family: 'MinSans-Bold';
       		margin-top : 0px;
       		margin-left : 50px;
       }
       
       .mypage_user_review_element .user_review_contents .user_product_bought_date {
       		padding-top : 5px;
       		position : absolute;
       		font-family: 'MinSans-Light';
       		width : 250px;
       		height : 50px;
       		margin-left : 950px;
       		font-size : 0.8rem;
       }
       
       .mypage_user_review_element .user_review_contents .user_review_image {
       		position : absolute;
       		width : 120px;
       		height : 120px;
       		margin-top : 50px;
       		margin-left : 50px;
       		
       }
     
       
      .mypage_user_review_element .user_review_contents .user_review_image img{
     		
       		width : 120px;
       		height : 120px;
       		
       		
       }
       
        
      .mypage_user_review_element .user_review_text {
      		position : absolute;
      		font-family: 'MinSans-Regular';
      		margin-left : 185px;
      		width : 1000px;
      		height : 120px;
      		margin-top : 50px;
      
      } 
     
      
      
      
      #mypage_review_date_selection{
     	left : 5%;
     }
     
     #mypage_review_tab_available_null{
     	text-align: left;
     	padding-left : 10%;
     }

    
    #mypage_review_mask{
    	z-index: 3;
    }
    
    .mypage_popup_wrap{
    	z-index: 4;
    	
    }
    
    #mypage_review_jsp {
    	 background-color: #faf9f6;
    
    }
	
</style>

<script>

var review_button = document.getElementsByName("mypage_review_product_button"); 

function mypage_review_avaliable() {
	$('#mypage_review_tab_available').show();
	$('#mypage_review_tab_finished').hide();
}

function mypage_review_finished() {
	$('#mypage_review_tab_available').hide();
	$('#mypage_review_tab_finished').show();
}

$(document).ready(function(){
	 $(review_button).click(function(){
		 console.log("plz work...");
	 $("#mypage_review_mask").css("display", "block");
	 $(".mypage_popup_wrap").css("display", "block");
	});
});

 $(document).ready(function(){
	 $("#mypage_review_popup_close").click(function(){
	 $("#mypage_review_mask").css("display", "none");
	 $(".mypage_popup_wrap").css("display", "none");
	});
});
	 

function setReviewPhoto(event) { 
	for (var image of event.target.files) { 
		var reader = new FileReader(); 
		
		reader.onload = function(event) { 
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result); 
			document.querySelector("div.review_image_container").appendChild(img); 
		}; 
			console.log(image); 
			reader.readAsDataURL(image); 
} 
}


</script>

 <%-- 
 이거 왜 갑자기 안됨???
 <script src="${pageContext.request.contextPath}/resources/js/mypage/jsMypageReview.js"></script>
 --%>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
