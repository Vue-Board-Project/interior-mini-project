<%@ page contentType="text/html; charset=UTF-8"%>
<div class = "mypage_counseling_slots">
	<div class = "mypage_as_history">
			<h4><b><span>${user.name}</span>님의</b><br>
				AS 신청 내역입니다.</h4>
			<button class = "info_button" id = "mypage_counseling_button" onclick="location.href='/springframework-mini-project/mypage/device_AS' ">확인하기</button>
	</div>
</div>

<style>
	.mypage_as_history{
			display : inline-block;
			border: 1px solid #ccc;
	    	background-image : url("${pageContext.request.contextPath}/resources/images/mypage/mypage_counseling_as.jpg");
	    	background-size: cover;
			background-repeat: no-repeat;
	    	border-radius : 20px;
	    	width : 85%;
	    	height : 100%;
	    	margin-left : 7%;
	    	
	    	/* 신청내역 내의 글자 스타일 */
	    	padding-left : 100px;
	    	padding-top : 50px;
	    	color : #fff;
	    	
	    	font-family: 'MinSans-Regular';
	    	font-size : 1.5rem;
	    	font-weight : 400;
		}
</style>