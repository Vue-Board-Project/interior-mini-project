<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>

<div class="review_section">
		<div class = "header_section">
          <div class="text">장비 후기</div>
          	<span class="sub_text">장비들의 후기를 남기거나 확인할 수 있습니다.</span>
          	<hr>
         </div>
          
     	<div class="content_section">
	     	<div class = "wrap">
		     	<div clas = "mypage_review_tab_menu">
		     	  <ul class="mypage_review_tab">
				    <li class="is_on">
				      <a href="beforeReview" id = "before_review" class="btn">작성 가능 후기</a>
				      <div id="mypage_review_tab_available" class="cont">작성 가능한 후기가 없습니다.</div>
				    </li>
				    <li>
				      <a href="afterReview" id = "after_review" class="btn">작성 완료 후기</a>
				      <div id="mypage_review_tab_finished" class="cont">작성 완료한 후기가 없습니다.</div>
				    </li>
				  </ul>
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
          background: #F9F5F0;
          min-height: 100vh;
          top: 0;
          left: 250px;
          width: calc(100% - 250px);
          transition: all 0.5s ease;
          z-index: 2;
     }
     
     .mypage_review_tab_menu{
     	position : relative;
     	display: flex;
     	flex-direction: row; 
     }
     
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
