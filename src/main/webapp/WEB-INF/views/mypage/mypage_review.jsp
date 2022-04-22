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
		     	<div class = "wrap">
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
						      
						      <div class = "mypage_review_list_before">
						      	<img class = "mypage_review_product_img" src = "${pageContext.request.contextPath}/resources/images/mypage/chair.jpg"></img>
						      	<div class = "mypage_review_product_title">유니트 체어</div>
						      	<div class = "mypage_review_product_number">13 개</div>
						      	<div class = "mypage_review_product_date">22년 4월 1일 배송완료</div>
						      	<button type="button" class="btn btn-primary" id = "mypage_review_button">후기 쓰기</button>
						      </div>
						      
						    </div>
						    <div id="mypage_review_tab_finished" class="tabmenu_content">
						    	<div id = "mypage_review_tab_finished_null">작성 완료한 후기가 없습니다.</div>
						    	 <ul class = "mypage_review_list_after"></ul>
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
     
     /*리뷰 작성 두 탭을 담은 container(ul 의 클래스명) */
     .mypage_review_tab_menu{
     	/*position : relative;*/
     	display: flex;
     	flex-direction: row;  
     	/*justify-content: space-around;*/
     }
     
     /*각 탭 버튼 활성화하기*/
     #mypage_review_button_before{
     	border : 1px solid #e8e8db;
     }
     
     #mypage_review_button_after{
     	border : 1px solid #e8e8db;
     }
     
     .mypage_review_contents_menu .tabmenu_content{
     		border : 1px solid #e8e8db;
      		position:absolute; 
      		background:#faf9f6; 
      		color:#272723;
      		text-align:center; 
      		width: calc(100% - 334px);
      		height:50%; 
      		line-height:100px;
     }
     
     /*각 리뷰 element 창*/
     .mypage_review_list_before{
     	position:relative;
     	/*margin-top : 1%; */
     	width : 100%;
     	height : 30%;
     	border : 1px solid #e8e8db;
     }
     
      .mypage_review_list_before .mypage_review_product_img {
      		position : relative;
      		height : 95%;
      		float : left;
      		
      }
     
      .mypage_review_list_before .mypage_review_product_title {
      		position : relative;
      		font-size : 25px;
      		font-weight : 600;
      }
      
       .mypage_review_list_before .mypage_review_product_number {
       		position : absolute;
       		right : 40%;
       		bottom : 3%;
      		font-weight : 400;
       }
       .mypage_review_list_before .mypage_review_product_date {
       		position : absolute;
       		right : 10%;
       		bottom : 10%;
      		font-weight : 400;
       }
       
       .mypage_review_list_before #mypage_review_button{
       		position : absolute;
       		right : 1%;
       		bottom : 30%;
       		background-color : #F58B54;
       		border : none;
       		height : 50px;
       		
       } 
  
     .mypage_review_contents_menu #mypage_review_tab_finished{
      		display:none;
      
      }
      
      #mypage_review_date_selection{
     	left : 5%;
     }
     
     #mypage_review_tab_available_null{
     	text-align: left;
     	padding-left : 10%;
     }

	#mypage_review_tab_finished_null{
		text-align: left;
     	padding-left : 10%;
	}
	
	
    
    #mypage_review_mask{
    	z-index: 3;
    }
    
    .mypage_popup_wrap{
    	z-index: 4;
    	
    }
	
</style>

<script>
	function mypage_review_avaliable() {
		$('#mypage_review_tab_available').show();
		$('#mypage_review_tab_finished').hide();
	}

	function mypage_review_finished() {
		$('#mypage_review_tab_available').hide();
		$('#mypage_review_tab_finished').show();
	}
	
	$(document).ready(function(){
		 $("#mypage_review_button").click(function(){
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
		

</script>


<%@ include file="/WEB-INF/views/common/footer.jsp" %>
