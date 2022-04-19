<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>

<div class="review_section">
		<div class = "header_section">
          <div class="text">장비 후기</div>
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
				    <div class = "mypage_review_tab_menu_element">
				      <a href="beforeReview" id = "before_review" class="btn col-md-6">작성 가능 후기</a>
				    </div>
				    <div class = "mypage_review_tab_menu_element">
				      <a href="afterReview" id = "after_review" class="btn col-md-6">작성 완료 후기</a>
				    </div>
				 </div>
				  
				  
				   <div id="mypage_review_tab_available" class="cont">
				      작성 가능한 후기가 없습니다.
				      <ul class = "mypage_review_list_before"></ul>
				    </div>
				    <div id="mypage_review_tab_finished" class="cont">
				    	작성 완료한 후기가 없습니다.
				    	 <ul class = "mypage_review_list_after"></ul>
				    </div>
				      
				      
				  </div>
		</div>
</div>

<style>

	#mypage_review{
        	form :active;
        	color : #F58B54;
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
          z-index: 2;
     }
     
     /*리뷰 작성 두 탭을 담은 container(ul 의 클래스명) */
     .mypage_review_tab_menu{
     	position : relative;
     	display: flex;
     	flex-direction: row;  
     	justify-content: space-around;
     }
     
    /*   .mypage_review_tab li{
      		height : 40%;
      		border : 1px solid #e8e8db;
      } */
     
     
     .mypage_review_tab_menu .mypage_review_tab{
     	overflow : hidden;
     	
     }
     
      .mypage_review_tab_menu .mypage_review_tab li{
      		float:left;
      		margin-right:30px;
      }
      
      
      .mypage_review_tab_menu .mypage_review_tab li.is_on .btn{
      		font-weight:bold;
      		color:#321313; 
      }
      
      .mypage_review_tab_menu .mypage_review_tab li.is_on .cont{
      		display:block;
      }
      
      .mypage_review_tab_menu .mypage_review_tab .btn{
      		font-size:20px;
      
      }
      
      .mypage_review_tab_menu .mypage_review_tab .cont{
      		display:none;
      		position:absolute; 
      		background:#fff; 
      		color:#321313; 
      		text-align:center; 
      		width: calc(100% - 350px);
      		height:30%; 
      		line-height:100px;
      
      }
      
      #mypage_review_date_selection{
     	left : 5%;
     }

</style>

<script>
	const tabList = document.querySelectorAll('.mypage_review_tab .mypage_review_tab li');
	
	 for(var i = 0; i < tabList.length; i++){
		    tabList[i].querySelector('.btn').addEventListener('click', function(e){
		      e.preventDefault();
		      for(var j = 0; j < tabList.length; j++){
		        tabList[j].classList.remove('is_on');
		      }
		      this.parentNode.classList.add('is_on');
		    });
		  }


</script>


<%@ include file="/WEB-INF/views/common/footer.jsp" %>
