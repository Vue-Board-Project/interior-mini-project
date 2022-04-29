<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>O'Molaire</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script> -->
   <link href="${pageContext.request.contextPath}/resources/css/cssHeaderAd.css" rel="stylesheet" type="text/css">
   <script src="${pageContext.request.contextPath}/resources/js/jsHeaderAd.js"></script>
   <link href="${pageContext.request.contextPath}/resources/css/cssHeader.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/cssHeaderNav.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/cssFooter.css" rel="stylesheet" type="text/css">
   <link href="${pageContext.request.contextPath}/resources/css/cssLogin.css" rel="stylesheet" type="text/css">
   <script src="${pageContext.request.contextPath}/resources/js/jsLogin.js"></script>
   <link href="${pageContext.request.contextPath}/resources/css/cssFindPassword.css" rel="stylesheet" type="text/css">
   <script src="${pageContext.request.contextPath}/resources/js/jsFindPassword.js"></script>
   <script src="https://kit.fontawesome.com/6bc10c935c.js" crossorigin="anonymous"></script>
   
   <!-- 주소찾기 daum API -->
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <style>
        @font-face {
            font-family: 'MinSans-Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Regular.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
       
        #main_wrapper{
            margin: 0px; 
            padding: 0px;
        }
    </style>
</head>
<!-- 
    주황 #ca5c0d
    진회색 #272723
    그레이베이지 #faf9f6
    베이지 #fef8d4
 -->
<body>
    <div id="main_wrapper" class="d-flex flex-column">
        <header id="main_header_wrap">
            <%@ include  file="/WEB-INF/views/common/header_ad.jsp"%>
            <div id="main_header" class="d-flex align-items-center justify-content-end">
                <a id="main_header_logo" href="${pageContext.request.contextPath}">
                    <img id="main_header_logo_img" src="${pageContext.request.contextPath}/resources/pngs/header_logo_icon.png"/>
                </a>
                <div id="main_header_img">
                    <div id="main_header_login_wrap" style="display: inline;">
                    
	                    <sec:authorize access="isAnonymous()">
	                        <a id="login_popup_open" class="btn" style="border: none; outline: none;">
	                            <img src="${pageContext.request.contextPath}/resources/pngs/login_icon.png"/>
	                            <span id="main_header_login_text" class="main_header_text">로그인</span>
	                        </a>
	                    </sec:authorize>

                    	<sec:authorize access="isAuthenticated()">
                    		<%-- 사이트간 요청 위조 방지가 활성화되어 있을 경우 --%>   
		                    <form method="post" action="${pageContext.request.contextPath}/logout" class="d-inline-block">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		                  	    <a id="logout" href="logout" class="btn" style="border: none; outline: none; box-shadow: none;">
		                            <img src="${pageContext.request.contextPath}/resources/pngs/login_icon.png"/>
		                            <span id="main_header_logout_text" class="main_header_text">로그아웃</span>
		                        </a>
		                    </form>
                    	</sec:authorize>  
                        
                        <%@ include  file="/WEB-INF/views/common/login.jsp"%>

                        <%@ include  file="/WEB-INF/views/common/find_password.jsp"%>
                        
                        <sec:authorize access="isAnonymous()">
		                    <a id="main_header_signUp" class="btn" href="${pageContext.request.contextPath}/mainSignUp" style="border: none; outline: none; box-shadow: none;">
		                        <img src="${pageContext.request.contextPath}/resources/pngs/sign_up_icon.png"/>
		                        <span id="main_header_signUp_text" class="main_header_text">회원가입</span>
		                    </a>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
		                    <a id="mypage" class="btn" href="${pageContext.request.contextPath}/mypage/device_AS" style="border: none; outline: none; box-shadow: none;">
		                        <img src="${pageContext.request.contextPath}/resources/pngs/sign_up_icon.png"/>
		                        <span id="main_header_mypage_text" class="main_header_text">마이페이지</span>
		                    </a>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
		                    <a id="main_header_cart" class="btn" href="${pageContext.request.contextPath}/equipment/shoppingcart_rentalandpurchase" style="border: none; outline: none; box-shadow: none;">
		                        <img src="${pageContext.request.contextPath}/resources/pngs/shopping_basket_icon.png"/>
		                        <span id="main_header_cart_text" class="main_header_text">장바구니</span>
		                    </a>
	                    </sec:authorize>
                </div>
            </div>
            <%@include file="/WEB-INF/views/common/header_nav.jsp" %>
        </header>   