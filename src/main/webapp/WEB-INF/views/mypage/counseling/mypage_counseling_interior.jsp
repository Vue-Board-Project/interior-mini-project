<%@ page contentType="text/html; charset=UTF-8"%>


<div class = "mypage_counseling_history">
		<h4><b><span>${user.name}</span>님의</b><br>
			치과 인테리어 신청 내역입니다.</h4>
			<button class = "info_button" id = "mypage_counseling_button">확인하기</button>
</div>

<style>

.mypage_counseling_history{
		padding-left : 5%;
		padding-top : 5%;
		border: 1px solid #ccc;
    	background-image : url("${pageContext.request.contextPath}/resources/images/mypage/mypage_osstem_interior_logo.png");
    	background-size: cover;
		background-repeat: no-repeat;
		width : 95%;
		height : 95%;
    	color : #fff;
    	border-radius : 20px;
	}

</style>

<%@ include file="/WEB-INF/views/mypage/counseling/myinfo_counsel_popup.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/mypage/mypage_consult_interior.js"></script>