<%@ page contentType="text/html; charset=UTF-8"%>


<div class = "mypage_popup_wrap">

	<button id="mypage_counseling_popup_close" class="m-2">
	<img src="${pageContext.request.contextPath}/resources/images/mypage/popup_delete_icon.png"/>
	</button>
	 <div class = "personal_info">
	     <ul id = "mypage_counsel_popup_infomations">
	         <li>
	             이름 : 한보현
	         </li>
	         <li>
	             연락처 : 01064724876
	         </li>
	         <li>
	             공간유형 : 북유럽 스타일 치과
	         </li>
	         <li>
	             평형 : 100 평
	         </li>
	         <li>
	             예산 : 3억 2천
	         </li>
	         <li>
	             공사지역 : 아파트 상가 내 
	         </li>
	         <li>
	             담당자 : 홍수빈
	         </li>
	         <li>
	             방문 예정 날짜 : 2022-05-27
	         </li>
	     </ul>
	 </div>
	 
</div>
<div id="mypage_counseling_mask" style="width:100%; height:100%; position:fixed; background:rgba(0,0,0,0.7) repeat; top:0; left:0;display:none;"></div>

  
 
 <style>
 	.mypage_popup_wrap {
 		background:#faf9f6;
 		height : 500px;
 		width : 350px;
 		position:fixed;
 		display : none;
 		align-item : center;
 		border : 1px solid #ca5c0d;
 		top: 300px; 
 		right: 200px;
 		
 	}
 	
 	.mypage_popup_wrap .personal_info {
 		height : 100%;
 		width : 100%;
 		background-color : #faf9f6;
 		
 	
 	}
 	
 	#mypage_counseling_popup_close {
	 	border: none;
	 	outline: none; 
	 	background-color: #faf9f6; 
	 	position:absolute; 
	 	top:0; 
	 	right:0;
 	}
 	
 	#mypage_counsel_popup_infomations {
 		 list-style:none;
 	}
 	
 	.mypage_popup_wrap .personal_info #mypage_counsel_popup_infomations li{
 		font-size = 2.4em;
 	}
 
 </style>