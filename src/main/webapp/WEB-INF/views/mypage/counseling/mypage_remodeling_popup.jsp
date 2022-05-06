<%@ page contentType="text/html; charset=UTF-8"%>

<div class = "mypage_remodeling_popup_wrap">
<button id="mypage_remodeling_popup_close" class="m-2">
	<img src="${pageContext.request.contextPath}/resources/images/mypage/popup_delete_icon.png"/>
	</button>
	 <div class = "personal_info">
	     <div id = "mypage_remodeling_popup_infomations">
	          <div class = "popup_info_name">
	             <div class = "popup_info_name_title">이름</div>
	             <div class = "popup_info_name_content">${user.name}</div>
	         </div>
	         <div class = "popup_info_phone_num">
	         	<div class = "popup_info_phone_num_title">연락처</div>
	            <div class = "popup_info_phone_num_content">${user.phone}</div>
	         </div>
		         <div class = "popup_info_space_type">
		         	<div class = "popup_info_space_type_title">공간유형</div>
		           <div class = "popup_info_space_type_content">${remodelCon.consultInteriorStyle}</div>
		         </div>
		         <div class = "popup_info_width">
		         	<div class = "popup_info_width_title">평형</div>
		           <div class = "popup_info_width_content">${remodelCon.consultAcreage} 평</div>
		         </div>
		          <div class = "popup_info_request">
		         	<div class = "popup_info_request_title">요청사항</div>
		            <div class = "popup_info_request_content">${remodelCon.consultRequest}</div>
		         </div>
		         <div class = "popup_info_date">
		         	<div class = "popup_info_date_title">상담예정일자</div>
		            <div class = "popup_info_date_content">${remodelCon.consultDate} ${remodelCon.consultTime}</div>
		         </div>
		    	 <div class = "popup_info_spot">
		         	<div class = "popup_info_spot_title">공사지역</div>
		            <div class = "popup_info_spot_content">${remodelCon.consultAddress}</div>
		         </div>
		         <div class = "popup_info_visit_date">
		         	<div class = "popup_info_visit_date_title">시공일자</div>
		            <div class = "popup_info_visit_date_content">${remodelCon.constructionDate}</div>
		         </div> 
		         <button type="button" class="btn" id = "remodeling_detail_btn"
		         style = "margin-left : 30px; font-family: 'MinSans-Bold';"
		          onclick="location.href='/springframework-mini-project/mypage/mypage_interior_progress?consultNo=${remodelCon.consultNo}'">진행 상세 보기</button>
		       	 <c:if test="${remodelingChk >= 2}">
		         	<button type="button" class="btn btn-outline-secondary"
		         	style = "font-family: 'MinSans-Bold';"
		         	 onclick="location.href='/springframework-mini-project/mypage/mypage_remodeling_list'">이전 내역 보기</button>
		         </c:if>
	     </div>
	 </div>
	 
</div>
<div id="mypage_counseling_mask" style="width:100%; height:100%; position:fixed; background:rgba(0,0,0,0.7) repeat; top:0; left:0;display:none;"></div>

<style>
	 /*팝업 선택시 회색 레이어 */
    #mypage_counseling_mask{
    	 z-index: 3;
    }
    
    .mypage_remodeling_popup_wrap {
    	z-index: 4; 
    }
    


 	.mypage_remodeling_popup_wrap {
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
 	
 	.mypage_remodeling_popup_wrap .personal_info {
 		height : 100%;
 		width : 100%;
 		background-color : #faf9f6;
 		padding : 5%;
 		
 	
 	}
 	
 	#mypage_remodeling_popup_close {
	 	border: none;
	 	outline: none; 
	 	background-color: #faf9f6; 
	 	position:absolute; 
	 	top:0; 
	 	right:0;
 	}
 	
 	#mypage_remodeling_popup_infomations {
 		 margin-top : 20px;
 		 padding : 5px;
 		 list-style:none;
 	}
 	
 	.mypage_remodeling_popup_wrap .personal_info #mypage_remodeling_popup_infomations li{
 		font-size = 2.4em;
 	}
 	
 
 /*각 영역 분할*/	
 .personal_info #mypage_remodeling_popup_infomations .popup_info_name{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_name .popup_info_name_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_name .popup_info_name_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 
  .personal_info #mypage_remodeling_popup_infomations .popup_info_phone_num{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_phone_num .popup_info_phone_num_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_phone_num .popup_info_phone_num_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 
 
 
  .personal_info #mypage_remodeling_popup_infomations .popup_info_space_type{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_space_type .popup_info_space_type_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_space_type .popup_info_space_type_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
  .personal_info #mypage_remodeling_popup_infomations .popup_info_width{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_width .popup_info_width_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_width .popup_info_width_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_request{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_date{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_date .popup_info_date_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_date .popup_info_date_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_request .popup_info_request_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_request .popup_info_request_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 
  .personal_info #mypage_remodeling_popup_infomations .popup_info_spot{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_spot .popup_info_spot_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_spot .popup_info_spot_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
    .personal_info #mypage_remodeling_popup_infomations .popup_info_visit_date{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_visit_date .popup_info_visit_date_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_remodeling_popup_infomations .popup_info_visit_date .popup_info_visit_date_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
  /* 최종 버튼 예쁘게 꾸미기 */
 .personal_info #mypage_remodeling_popup_infomations #remodeling_detail_btn {
  	  background-color: #fff;
	  border: 1px solid #ca5c0d;
	  color:  #ca5c0d;
	}
	
 .personal_info #mypage_remodeling_popup_infomations #remodeling_detail_btn:hover {
	  background-color: #ca5c0d;
	  color: white;
   }
 
 
 </style>
