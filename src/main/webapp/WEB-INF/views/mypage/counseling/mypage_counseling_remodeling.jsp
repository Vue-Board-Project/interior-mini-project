<%@ page contentType="text/html; charset=UTF-8"%>

<div class = "mypage_counseling_slots">
	<div class = "mypage_remodeling_history">
		<b><span>${user.name}</span></b>님의 <br>
			치과 리모델링 신청 내역입니다.
	<button class = "info_button" id = "mypage_remodeling_button">확인하기</button>
	</div>
</div>
<style>

.mypage_remodeling_history{
		display : inline-block;
		border: 1px solid #ccc;
    	background-image : url("${pageContext.request.contextPath}/resources/images/mypage/mypage_counseling_remodeling.jpg");
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

<%@ include file="/WEB-INF/views/mypage/counseling/mypage_remodeling_popup.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/mypage/mypage_consult_remodeling.js"></script>