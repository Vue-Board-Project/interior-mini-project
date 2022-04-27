<%@ page contentType="text/html; charset=UTF-8"%>

<div class = "mypage_remodeling_history">
		<h4><b><span>name</span></b>님의 <br>
			치과 리모델링 신청 내역입니다.</h4>
		<button class = "info_button" id = "mypage_remodeling_button">확인하기</button>
</div>

<style>

.mypage_remodeling_history{
		margin-top : 15px;
		padding-left : 5%;
		padding-top : 5%;
		border: 1px solid #ccc;
    	background-image : url("${pageContext.request.contextPath}/resources/images/mypage/mypage_counseling_remodeling.jpg");
    	background-size: cover;
		background-repeat: no-repeat;
		width : 95%;
		height : 95%;
    	color : #fff;
    	border-radius : 20px;
	}

</style>

<%@ include file="/WEB-INF/views/mypage/mypage_remodeling_popup.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/mypage/mypage_consult_remodeling.js"></script>