<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/portfolio_dental/cssPortfolioDental.css" rel="stylesheet" type="text/css">
<div id="portfolio_model_wrap">
        <%@ include file="/WEB-INF/views/portfolio_dental/portfolio_dental_filter.jsp" %>
        <div class="text-center mt-5 mb-5">
    		<div class="ml-3 text-left portfolio_dental_content_cnt">
    			<p class="portfolio_dental_content_cnt_p">전체 <c:out value="${cnt}"></c:out></p>
    		</div>        	
            <section>
	            <ul id="portfolio_dental_content_wrap" class="d-flex" style="padding-left:0px; flex-wrap: wrap; width:1146px;">
		            <c:forEach items="${interiorList}" var="list">
		            	<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px;"> 
		                    <a href="portfolioDentalDeatail3" class="portfolio_dental_content_a">
		                        <img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/chungchun_waiting_room5.jpg"/>
		                        <b class="mt-3 portfolio_dental_content_b">${list.isummary}</b>
		                        <small class="d-block portfolio_dental_content_sm">mansik</small>
		                    </a>
		                </li>
		            </c:forEach>
	            </ul>
            </section> 
        </div>
    </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>