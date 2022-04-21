<%@ page contentType="text/html; charset=UTF-8"%>

<div class = "mypage_popup_wrap">

	<button id="mypage_review_popup_close" class="m-2">
	<img src="${pageContext.request.contextPath}/resources/images/mypage/popup_delete_icon.png"/>
	</button>
	 <div class = "personal_review">
	   <div id = "mypage_review_popup_title"></div>
	   <hr>
	   <div id = "mypage_review_popup_productInfo">
		   <img src = "" />
		   <div id = "mypage_review_popup_title"></div>
	   </div>
	   <form class = "mypage_review_popup_input_review">
	   
	   
	   </form> 
	   <div id = "mypage_review_popup_get_question"></div>
	   <button> 등록하기 </button>
	   
	 </div>
	 
</div>
<div id="mypage_review_mask"></div>

<style>

	.mypage_popup_wrap{
		position:fixed;
		display : none;
		background-color :  #faf9f6;
		border : 1px solid #ca5c0d;
 		top: 100px; 
 		left: 400px;
 		width : 30%;
		height : 80%;
		
	}

	#mypage_review_mask{
	
		width:100%; 
		height:100%; 
		position:fixed; 
		background:rgba(0,0,0,0.7) repeat; 
		top:0; 
		left:0;
		display:none;
	}
	
	#mypage_review_popup_close {
	 	border: none;
	 	outline: none; 
	 	background-color: #faf9f6; 
	 	position:absolute; 
	 	top:0; 
	 	right:0;
 	}


</style>

