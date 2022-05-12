<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/portfolio_dental/cssPortfolioDentalDetail3.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/menuheader.css" rel="stylesheet" type="text/css"/>
<section class="container-fluid p-0">
    <div style="display: flex; justify-content: space-between;position: relative;">
        <div style="display: inline-block; width: 10%; height: 100px;" class="bg-dark menuheaderleft" ></div>
        <div style="display: inline-block; width: 89%; height: 100px;" class=" menuheaderright">
            <img src="${pageContext.request.contextPath}/resources/images/interiormenuheader.png" width="100%" height="100%" >
        </div>
    </div>
    <div style="width: 65%;position: relative; left:10px; top: -33px;" class="mx-auto menuheadertitle">
        <span style="font-size: 50px; font-family: 'MinSans-Bold'; border-bottom: 5px solid coral; letter-spacing: 1.4px;">포트폴리오 상세</span>
    </div>
</section>
<div class="d-flex pt-5" style="background-color: #faf9f6;  font-family: 'MinSans-Regular';">
	<%@ include file="/WEB-INF/views/portfolio_dental/portfolio_dental_floating_menu.jsp" %>
        <div class="d-flex flex-column vw-100">
            <div id="portfolio_dental_wrap" class="mb-5" style=" background-color: white;">
                <%@ include file="/WEB-INF/views/portfolio_dental/portfolio_dental_detail_slide.jsp" %>
                <div id="portfolio_dental_summary">
                    <div class="d-flex justify-content-center pt-4 pb-2 mr-5 ml-5" style="color: #272723;">
                        <div class="mr-5"><img class="portfolio_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/free-icon-building-188379.png"/><strong class="ml-3">포트폴리오</strong></div>
                        <div class="mr-5"><img class="portfolio_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/premium-icon-house-design-3769340.png"/><strong class="ml-3">${interiorDetail.darea}평</strong></div>
                        <div><img class="portfolio_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/premium-icon-interior-design-2400622.png"/><strong class="ml-3">${interiorDetail.istyle}</strong></div>
                    </div>
                    <hr style="width:90%;height:2px;border:none;background-color:#b3b39f; margin: 0 auto;"/>
                    <div class="text-center pb-2 pt-2" style=" padding-bottom: 100px;">
                        <p style="color: #272723;">${interiorDetail.isummary}</p>
                    </div>
                </div>
                <div id="portfolio_dental_content" class="text-center pt-5">
                	<c:forEach items="${interiorDList}" var="dList">
                		<div>
                			<div class="portfolio_dental_content_title" align="left"><b class="portfolio_dental_content_title_b">${dList.cname}</b></div>
                       		<div class="mb-5"><img class="portfolio_dental_content_img" src="/springframework-mini-project/portfolio_dental/portfolioDisplay?fileName=${dList.idImgPath}"/></div>
                        	<p class="mb-5 portfolio_dental_content_p">${dList.dcontent}</p>
                		</div>
                	</c:forEach>
  
                    <div class="mb-5">
                        <p style="width:900px; margin: 0 auto;">오몰레어 오스템의 깔끔한 치과 인테리어였습니다.</p>
                        <p style="width:900px; margin: 0 auto;">다양한 시공사례 구경하시고 오몰레어에서 무료 견적 받아보세요.</p>
                    </div> 
                </div>
            </div>
        </div>
    </div>
            <%@ include file="/WEB-INF/views/common/footer.jsp" %>