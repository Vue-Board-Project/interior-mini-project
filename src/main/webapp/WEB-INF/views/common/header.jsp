<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HomepageMain</title>
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
   <script src="${pageContext.request.contextPath}/resources/js/jsFindPassword.js"></script>
   <link href="${pageContext.request.contextPath}/resources/css/cssSignUp.css" rel="stylesheet" type="text/css">
   <%-- <script src="${pageContext.request.contextPath}/resources/js/jsSignUp.js"></script> --%>
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
                        <button id="login_popup_open" style="border: none; outline: none;">
                            <img src="${pageContext.request.contextPath}/resources/pngs/login_icon.png"/>
                            <span id="main_header_login_text" class="main_header_text">로그인</span>
                        </button>
                        
                        <%@ include  file="/WEB-INF/views/common/login.jsp"%>

                        <%@ include  file="/WEB-INF/views/common/find_password.jsp"%>
                        
                    <a id="main_header_signUp" href="mainSignUp">
                        <img src="${pageContext.request.contextPath}/resources/pngs/sign_up_icon.png"/>
                        <span id="main_header_signUp_text" class="main_header_text">회원가입</span>
                    </a>
                    
                    <a id="main_header_cart" href="${pageContext.request.contextPath}">
                        <img src="${pageContext.request.contextPath}/resources/pngs/shopping_basket_icon.png"/>
                        <span id="main_header_cart_text" class="main_header_text">장바구니</span>
                    </a>
                </div>
            </div>
            <%@include file="/WEB-INF/views/common/header_nav.jsp" %>
        </header>   