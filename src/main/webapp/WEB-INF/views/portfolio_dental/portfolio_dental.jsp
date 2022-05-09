<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/portfolio_dental/cssPortfolioDental.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/menuheader.css" rel="stylesheet" type="text/css"/>
<section class="container-fluid p-0">
    <div style="display: flex; justify-content: space-between;position: relative;">
        <div style="display: inline-block; width: 10%; height: 100px;" class="bg-dark menuheaderleft" ></div>
        <div style="display: inline-block; width: 89%; height: 100px;" class=" menuheaderright">
            <img src="${pageContext.request.contextPath}/resources/images/interiormenuheader.png" width="100%" height="100%" >
        </div>
    </div>
    <div style="width: 65%;position: relative; left:10px; top: -33px;" class="mx-auto menuheadertitle">
        <span style="font-size: 50px; font-family: 'MinSans-Bold'; border-bottom: 5px solid coral; letter-spacing: 1.4px;">포트폴리오</span>
    </div>
</section>
<div id="portfolio_model_wrap">
<%@ include file="/WEB-INF/views/portfolio_dental/portfolio_dental_filter.jsp" %>
 <div class="text-center mt-5 mb-5" id="portfolio_model_filter_content_wrap">
 	<div class="ml-3 text-left portfolio_dental_content_cnt">
		<p class="portfolio_dental_content_cnt_p">전체 <%-- <span>${fn:length(interiorList)}</span> --%><c:out value="${cnt}"></c:out></p>
	</div>        	
    <section>
    	<ul id="portfolio_dental_content_wrap" class="d-flex" style="padding-left:0px; flex-wrap: wrap; width:1146px;">
			<c:forEach items="${interiorList}" var="list">
			<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px;"> 
			      <a href="${pageContext.request.contextPath}/portfolio_dental/portfolio_dental_detail?ino=${list.ino}" class="portfolio_dental_content_a">
			      	  <div class="portfolio_dental_content_img_div">
			          	  <img class="portfolio_dental_content_img" src="/springframework-mini-project/portfolio_dental/portfolioDisplay?fileName=${list.imImgPath}"/>
			      	  </div>
			          <div style="position: relative">
			          	  <b class="mt-3 portfolio_dental_content_b">${list.isummary}</b>
				          <div style="position:absolute; width: 70px; top: 10px;"><i class="far fa-eye"></i><span class="ml-1">${list.ihits}</span></div>
				          <small class="d-block portfolio_dental_content_sm"><span># ${list.istyle}</span> <span># ${list.allColor}</span></small>
			          </div>
			      </a>
			  </li>
			</c:forEach>
         </ul>
    </section> 	
    </div>
</div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>