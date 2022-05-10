<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quik.css" rel="stylesheet" type="text/css"/>
<style>
    .consult_result_section{
        text-align: center; 
        width: 100%;
    }
    .consult_result_page_btn{
        border: 2px solid #272723; 
        font-family: 'MinSans-Medium'; 
        border-radius: 0; 
        width: 200px; 
        height: 50px; 
        font-size: 18px; 
        letter-spacing: 1px;
        padding-top: 10px;
    }
    .consult_result_page_btn:hover{
        border: 0; 
        background-color: #ca5c0d;
        color: white;
    }
    .consult_result_page_btn:focus{
        outline: none;
    }
</style>
<main style="background-color: white">
    <div>
        <section class="consult_result_section" style="padding: 200px 0 10px 0;">
            <img src="${pageContext.request.contextPath}/resources/images/errorImages/403.jpg" width="330px">
        </section>
        <section class="consult_result_section" style="padding: 20px 0 10px 0;">
            <p style="font-family: 'MinSans-Bold'; font-size: 33px; font-weight: bold;">해당 권한으로 접근이 불가능합니다.</p>
            <p style="font-family: 'MinSans-Regular'; letter-spacing: 1px; font-size: 18px;">비회원이라면 회원가입을 회원이라면 로그인을 해주세요. <br/>
               오몰레이를 이용해주셔서 감사합니다.</p>
        </section>
        <section class="consult_result_section" style="padding: 20px 0 100px 0;">
            <a class="btn consult_result_page_btn" href="${pageContext.request.contextPath}">홈으로</a>
        </section>
    </div>
</main>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>