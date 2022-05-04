<%@ page contentType="text/html; charset=UTF-8"%>


<div class = "mypage_interior_popup_wrap">

	<button id="mypage_counseling_popup_close" class="m-2">
	<img src="${pageContext.request.contextPath}/resources/images/mypage/popup_delete_icon.png"/>
	</button>
	 <div class = "personal_info">
	    	<!-- ajax 데이터 들어갈 곳  -->
	        <div id = "mypage_counsel_popup_infomations"></div>
	        <input type = "hidden" name = "inputNm"/>
	        
	        <script>
	       
	        function ajaxInterior(){
	        	 let selNum =  $('input[name=inputNm]').val();
	        
				console.log("hello world");
				$.ajax({
		                url : "readInteriorList",
		                data : {selNum},
		                method: "get"
		            }).done((data) => {
						$('#mypage_counsel_popup_infomations').html(data);
		            });
	        }
				</script>
		         <button type="button" class="btn btn-outline-primary" style = "margin-left : 20px;"
		         onclick="location.href='/springframework-mini-project/mypage/mypage_interior_progress'">진행 상세 보기</button>
		         <c:if test="${interiorChk >= 2}">
		         	<button type="button" class="btn btn-outline-secondary" 
		         	onclick="location.href='/springframework-mini-project/mypage/mypage_interior_list' ">이전 내역 보기</button>
		         </c:if>
	     </div>
	 </div>
	 
</div>
<div id="mypage_counseling_mask02" style="width:100%; height:100%; position:fixed; background:rgba(0,0,0,0.7) repeat; top:0; left:0;display:none;"></div>

  
 
 <style>
 	 /*팝업 선택시 회색 레이어 */
    #mypage_counseling_mask02{
    	 z-index: 99;
    }
    
    .mypage_interior_popup_wrap {
    	z-index: 100; 
    }
 
 	.mypage_interior_popup_wrap {
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
 	
 	.mypage_interior_popup_wrap .personal_info {
 		height : 100%;
 		width : 100%;
 		background-color : #faf9f6;
 		padding : 5%;
 		
 	
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
 		 margin-top : 20px;
 		 padding : 5px;
 		 list-style:none;
 	}
 	
 	.mypage_interior_popup_wrap .personal_info #mypage_counsel_popup_infomations li{
 		font-size = 2.4em;
 	}
 	
 
 /*각 영역 분할*/	
 .personal_info #mypage_counsel_popup_infomations .popup_info_name{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_name .popup_info_name_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_name .popup_info_name_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
  .personal_info #mypage_counsel_popup_infomations .popup_info_phone_num{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_phone_num .popup_info_phone_num_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_phone_num .popup_info_phone_num_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 
 
 
  .personal_info #mypage_counsel_popup_infomations .popup_info_space_type{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_space_type .popup_info_space_type_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_space_type .popup_info_space_type_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 
   .personal_info #mypage_counsel_popup_infomations .popup_info_width{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_width .popup_info_width_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_width .popup_info_width_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_request{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_request .popup_info_request_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_request .popup_info_request_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_date{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_date .popup_info_date_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_date .popup_info_date_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_budget{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_budget .popup_info_budget_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_budget .popup_info_budget_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
  .personal_info #mypage_counsel_popup_infomations .popup_info_spot{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_spot .popup_info_spot_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_spot .popup_info_spot_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 

    .personal_info #mypage_counsel_popup_infomations .popup_info_visit_date{
 	width : 350px;
 	height : 50px;
 	display: flex;
 	flex-direction: row;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_visit_date .popup_info_visit_date_title{
 	font-family: 'MinSans-Medium';
 	width : 100px;
 	height : 50px;
 }
 
 .personal_info #mypage_counsel_popup_infomations .popup_info_visit_date .popup_info_visit_date_content{
 	font-family: 'MinSans-Regular';
 	width : 250px;
 	height : 50px;
 }
 
 
 </style>