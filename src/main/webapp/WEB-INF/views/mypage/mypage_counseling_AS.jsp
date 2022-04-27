<%@ page contentType="text/html; charset=UTF-8"%>

<div class = "mypage_as_history">
		<h4><b><span>name</span>님의</b><br>
			AS 신청 내역입니다.</h4>
		<button class = "info_button" id = "mypage_counseling_button" onclick="location.href='/springframework-mini-project/mypage/device_AS' ">확인하기</button>
</div>

<style>
	.mypage_as_history{
			margin-top : 15px;
			padding-left : 5%;
			padding-top : 5%;
			border: 1px solid #ccc;
	    	background-image : url("${pageContext.request.contextPath}/resources/images/mypage/mypage_counseling_as.jpg");
	    	background-size: cover;
			background-repeat: no-repeat;
			width : 95%;
			height : 95%;
	    	color : #383838;
	    	border-radius : 20px;
		}
</style>