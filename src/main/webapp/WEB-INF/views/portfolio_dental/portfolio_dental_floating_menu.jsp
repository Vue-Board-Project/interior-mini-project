<%@ page contentType="text/html; charset=UTF-8"%>
<link href="${pageContext.request.contextPath}/resources/css/portfolio_dental/cssPortfolioDentalFloatingMenu.css" rel="stylesheet" type="text/css">
<div class="floating blind mt-3" align="right" style="position: fixed;">
    <div class="d-flex flex-column mb-4">
        <p class="mr-1" style="font-size:20px;"><span style="color: #ff7513;">비슷한 스타일</span> 추천</p>
        <c:forEach items="${recommandStyleList}" var="styleList" begin="0" end="1">
        	<a class="mb-1" href="${pageContext.request.contextPath}/portfolio_dental/portfolio_dental_detail?ino=${styleList.ino}"
        	 class="portfolio_dental_content_a">
        		<img style="width: 10rem; height: 6rem;" src="/springframework-mini-project/portfolio_dental/portfolioDisplay?fileName=${styleList.imImgPath}"/>
        	</a>
        </c:forEach>
        <%-- <a href="#" class="mb-1"><img style="width: 10rem;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/3.PNG"/></a>
        <a href="#"><img style="width: 10rem;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/50py_waiting_room.jpg"/></a> --%>

    </div>

    <div class="d-flex flex-column mb-4">
        <p class="mr-2" style="font-size:20px;"><span style="color: #ff7513;">비슷한 평수</span> 추천</p>
        <c:forEach items="${recommandAreaList}" var="areaList" begin="0" end="1">
        	<a class="mb-1" href="${pageContext.request.contextPath}/portfolio_dental/portfolio_dental_detail?ino=${areaList.ino}"
        	 class="portfolio_dental_content_a">
        	 	<img style="width: 10rem; height: 6rem;" src="/springframework-mini-project/portfolio_dental/portfolioDisplay?fileName=${areaList.imImgPath}"/>
        	 </a>
        </c:forEach>
        <%-- <a href="#" class="mb-1"><img style="width: 10rem;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/chungchun_waiting_room.jpg"/></a>
        <a href="#"><img style="width: 10rem;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/waiting_room.jpg"/></a> --%>

    </div>
    <div class=""><a href="${pageContext.request.contextPath}/interior_consult/quick_consultation" class="btn" style="width: 10rem; background-color: #ca5c0d; color: white; font-size:15px;">이 컨셉으로 상담신청</a></div>
</div>
 <script src="${pageContext.request.contextPath}/resources/js/portfolio_dental/jsPortfolioDentalFloatingMenu.js"></script>