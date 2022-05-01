<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/portfolio_dental/cssPortfolioDental.css" rel="stylesheet" type="text/css">
<div id="portfolio_model_wrap" style="margin: 0 auto; width: 996px; font-family: 'MinSans-Regular';">
        <%@ include file="/WEB-INF/views/portfolio_dental/portfolio_dental_filter.jsp" %>
        <div class="text-center mt-5 mb-5">
       		<div class="ml-3 text-left portfolio_dental_content_cnt"><p class="portfolio_dental_content_cnt_p">전체 <span>${interior.interiorCnt}</span></p></div>
            <%-- <div class="d-flex portfolio_dental_content_wrap">
                <div class="m-3 pb-3 portfolio_dental_content"> 
                    <a href="portfolioDentalDeatail3" class="portfolio_dental_content_a">
                        <img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/chungchun_waiting_room5.jpg"/>
                        <b class="mt-3 portfolio_dental_content_b">화이트 톤의 자연친화적인 인테리어</b>
                        <small class="d-block portfolio_dental_content_sm">mansik</small>
                    </a>
                </div>
                <div class="m-3 pb-3 portfolio_dental_content">
                    <a href="portfolioDentalDeatail3" class="portfolio_dental_content_a">
                        <img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_6.PNG"/>
                        <b class="mt-3 portfolio_dental_content_b">블랙 포인트를 준 시크한 인테리어</b>
                        <small class="d-block portfolio_dental_content_sm">manok</small>
                    </a>
                </div>
                <div class="m-3 pb-3 portfolio_dental_content">
                    <a href="portfolioDentalDeatail3" class="portfolio_dental_content_a">
                        <img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/treatment_room2.jpg"/>
                        <b class="mt-3 portfolio_dental_content_b">편안한 분위기의 인테리어</b>
                        <small class="d-block portfolio_dental_content_sm">manbok</small>
                    </a>
                </div>
            </div> --%>
            <div class="d-flex">
	            <c:forEach items="${interiorList}" var="list">
	            	<div class="m-3 pb-3 portfolio_dental_content"> 
	                    <a href="portfolioDentalDeatail3" class="portfolio_dental_content_a">
	                        <img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/chungchun_waiting_room5.jpg"/>
	                        <b class="mt-3 portfolio_dental_content_b">${list.isummary}</b>
	                        <small class="d-block portfolio_dental_content_sm">mansik</small>
	                    </a>
	                </div>
	            </c:forEach>
            </div>
            
            <%-- <section>
            	<div>
            		<section>
            			<ul>
            				<c:forEach items="${interiorList}" var="interiorListVar">
            					<li>
            						<div>
            							<p>${interiorListVar.isummary}</p>
            						</div>
            					</li>
            				</c:forEach>
            			</ul>
            		</section>
            	</div>
            </section> --%>
         
        </div>
    </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>