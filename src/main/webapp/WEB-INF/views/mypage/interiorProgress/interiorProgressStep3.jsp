<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		
	<!-- 추가요청사항 작성 div  -->
	<section style="width: 100%;"  class="mb-5">
		<div style="width: 90%; height: 250px; background-color: #f1f1f1;" class="mx-auto p-4">
			<p>계약 요청 사항</p>
			<c:if test="${step3.euserRequest eq null}">
				<p>없음</p>
			</c:if>
			<c:if test="${step3.euserRequest ne null}">
				<p>${step3.euserRequest}</p>
			</c:if>
		</div>
	</section>
	<!-- 첨부파일 부분 -->
	<section style="width: 100%;"  class="mb-5">
		<div style="width: 90%;" class="mx-auto">
			<div style="border-bottom: 2px solid #272723; width: 170px;" class="text-center mb-2">
				<h3>첨부파일목록</h3>
			</div>
			<div>
		<c:forEach var="step3File" items="${step3File}">
			<div class="p-3 mb-2 mypage_interior_add_file_div">
				<span>${step3File.filename}</span>
				<a href='filedownload?fileName=${step3File.filename}'>
					<button class="btn btn-sm btn-secondary">down</button>
				</a>
			</div>
		</c:forEach>
			</div>
		</div>
	</section>
	<!-- 계약 참고 이미지 링크  -->
	<section style="width: 100%;"  class="mb-5">
		<div style="width: 90%;" class="mx-auto">
			<div style="border-bottom: 2px solid #272723; width: 190px;" class="text-center mb-2">
				<h3>참고 치과 모델</h3>
			</div>
         <ul id="portfolio_dental_content_wrap" class="d-flex" style="padding-left:0px; flex-wrap: wrap; width:1146px;">
			<c:forEach items="${portfolioList}" var="portfolioList">
			<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px; display : flex;"> 
			      <a href="${pageContext.request.contextPath}/portfolio_dental/portfolio_dental_detail?ino=${portfolioList.intIno}" class="portfolio_dental_content_a">
			      	  <div class="portfolio_dental_content_img_div">
			          	  <img class="portfolio_dental_content_img" src="/springframework-mini-project/portfolio_dental/portfolioDisplay?fileName=${portfolioList.stringImImgPath}"/>
			      	  </div>
			          <div style="position: relative; text-align : center;">
			          	  <b class="mt-3 portfolio_dental_content_b" >${portfolioList.stringISummary}</b>
				          <div style="position:absolute; width: 70px; top: 10px; right: 10px;"><i class="far fa-eye"></i><span class="ml-1">${portfolioList.intIHits}</span></div>
				          <small class="d-block portfolio_dental_content_sm"><span># ${portfolioList.stringIStyle}</span> <span># ${portfolioList.stringAllColor}</span></small>
			          </div>
			      </a>
			  </li>
			</c:forEach>
         </ul>
			</div>
		</div>
	</section>
	
<link href="${pageContext.request.contextPath}/resources/css/portfolio_dental/cssPortfolioDental.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/menuheader.css" rel="stylesheet" type="text/css"/>