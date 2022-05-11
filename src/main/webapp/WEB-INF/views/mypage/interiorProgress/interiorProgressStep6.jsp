<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 계약 참고 이미지 링크  -->
<section style="width: 100%;"  class="mb-5">
	<div style="width: 90%;" class="mx-auto">
		<div style="border-bottom: 2px solid darkgrey; width: 230px;" class="text-center mb-2">
			<h3>치과 포트폴리오</h3>
		</div>
		
		<div class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px; display : flex;"> 
			      <a href="${pageContext.request.contextPath}/portfolio_dental/portfolio_dental_detail?ino=${step6.intIno}" class="portfolio_dental_content_a">
			      	  <div class="portfolio_dental_content_img_div">
			          	  <img class="portfolio_dental_content_img" src="/springframework-mini-project/portfolio_dental/portfolioDisplay?fileName=${step6.stringImImgPath}"/>
			      	  </div>
			          <div style="position: relative; text-align : center;">
			          	  <b class="mt-3 portfolio_dental_content_b" >${step6.stringISummary}</b>
				          <div style="position:absolute; width: 70px; top: 10px; right: 10px;"><i class="far fa-eye"></i><span class="ml-1">${step6.intIHits}</span></div>
				          <small class="d-block portfolio_dental_content_sm"><span># ${step6.stringIStyle}</span> <span># ${step6.stringAllColor}</span></small>
			          </div>
			      </a>
		</div>
</section>

<link href="${pageContext.request.contextPath}/resources/css/portfolio_dental/cssPortfolioDental.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/menuheader.css" rel="stylesheet" type="text/css"/>