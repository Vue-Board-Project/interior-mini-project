<%@ page contentType="text/html; charset=UTF-8"%>
<div class = "mypage_popup_wrap">
	<button id="mypage_quit_popup_close" class="m-2">
		<img src="${pageContext.request.contextPath}/resources/images/mypage/popup_delete_icon.png"/>
	</button>
	<div class = "mypage_quit_popup_contents">
		오몰레어를<br>
		정말 탈퇴하시겠습니까?
	</div>
	<button type="button" class="btn btn-success" id = "mp_close_quit">취소하기</button>
	<button type="button" class="btn btn-secondary" id = "mp_confirm_quit">
	<a href = "javascript:void(0)" onClick="javascript:deleteUserPost()">탈퇴하기</a></button>
</div>

<div id="mypage_quit_mask" style="width:100%; height:100%; position:fixed; background:rgba(0,0,0,0.7) repeat; top:0; left:0;display:none;"></div>


<style>

	.mypage_popup_wrap{
		position:fixed;
		display : none;
		background-color :  #fff;
 		top: 100px; 
 		left: 700px;
 		width : 530px;
		height : 430px;
		background-color : #fff;
		
	}
	
	#mypage_quit_popup_close {
	 	border: none;
	 	outline: none; 
	 	background-color: #faf9f6; 
	 	position:absolute; 
	 	top:0; 
	 	right:0;
 	}
</style>