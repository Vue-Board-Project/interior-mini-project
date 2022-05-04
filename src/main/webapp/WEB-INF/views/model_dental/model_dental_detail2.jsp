<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/model_dental/cssModelDentalDetail2.css" rel="stylesheet" type="text/css">
<div id="model_dental_wrap" class="d-flex flex-column" style="background-color: #faf9f6; font-family: 'MinSans-Regular';">
        <div id="model_dental_main_img" class="text-center"><img class="vw-100" style="height: 450px;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_main.png"/></div>
        <div id="model_dental_summary" style="background-color: #d5d5d8; margin: 3rem auto; border-radius: 50px;">
            <div class="d-flex justify-content-center pt-4 mr-5 ml-5" style="color: #272723;">
                <div class="mr-5"><img class="model_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/free-icon-building-188379.png"/><strong class="ml-3">모델치과</strong></div>
                <div class="mr-5"><img class="model_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/premium-icon-house-design-3769340.png"/><strong class="ml-3">${interiorDetail2.darea}평</strong></div>
                <div><img class="model_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/premium-icon-interior-design-2400622.png"/><strong class="ml-3">${interiorDetail2.istyle}</strong></div>
            </div>
            <hr style="width:90%;height:2px;border:none;background-color:#b3b39f;"/>
            <div class="text-center pb-2 pt-2" style=" padding-bottom: 100px;">
                <p style="color: #272723;">${interiorDetail2.isummary}</p>
            </div>
        </div>

        <div class="text-center mb-5">
        	<a class="btn model_dental_detail_button" href="interior_consult/quick_consultation">이 컨셉으로 상담신청</a>
        </div>
        <div id="model_dental_content" class="text-center">
	        <c:forEach items="${interiorDList2}" var="dList">
           		<div>
           			<div class="model_dental_content_text" align="left"><b class="model_dental_content_b">${dList.cname}</b></div>
                  		<div class="mb-5"><img class="model_dental_content_img" src="/springframework-mini-project/portfolio_dental/display?fileName=${dList.idImgPath}"/></div>
                   	<p class="mb-5 model_dental_content_p">${dList.dcontent}</p>
           		</div>
           	</c:forEach>
        <%--     <div>
            	<div class="model_dental_content_text" align="left"><b class="model_dental_content_b">입구</b></div>
                <div class="mb-5"><img class="model_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_1.PNG"/></div>
                <p class="model_dental_content_p">치과 입구 모습입니다. 입구는 블랙톤으로 무게감있게 연출했습니다.</p>
            </div>
            <div>
            	<div class="model_dental_content_text" align="left"><b class="model_dental_content_b">치과 내부</b></div>
                <div class="mb-5"><img class="model_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_2.PNG"/></div>
                <p class="model_dental_content_p">치과 내부 모습입니다. 화이트톤을 기반으로 청결한 이미지를 중점적으로 연출했습니다</p>
            </div>
            <div id="model_dental_waiting_room">
           		<div class="model_dental_content_text" align="left"><b class="model_dental_content_b">진료실</b></div>
                <div class="mb-3"><img class="model_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_3.PNG"/></div>
                <div class="mb-5"><img class="model_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_6.PNG"/></div>
                <p class="model_dental_content_p">진료실 내부 모습입니다. 화이트와 블랙의 대비감을 이용해 더 널어 보이게 연출했습니다.</p>
            </div>
            <div id="model_dental_X-ray_room">
            	<div class="model_dental_content_text" align="left"><b class="model_dental_content_b">X-ray실</b></div>
                <div class="mb-5"><img class="model_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_4.PNG"/></div>
                <p class="model_dental_content_p">X-ray촬영실은 블랙으로 포인트를 주었습니다.</p>
            </div>
            <div id="model_dental_makeup_corner">
            	<div class="model_dental_content_text" align="left"><b class="model_dental_content_b">특진실</b></div>
                <div class="mb-5"><img class="model_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_5.PNG"/></div>
                <p class="model_dental_content_p">VIP를 위한 특진실 내부 모습입니다. 그레이톤 벽에 치과와 관련된 그래픽을 넣어 포인트를 주었습니다.</p>
            </div>
            <div id="model_dental_doctor_room">
            	<div class="model_dental_content_text" align="left"><b class="model_dental_content_b">상담실</b></div>
                <div class="mb-5"><img class="model_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_7.PNG"/></div>
                <p class="model_dental_content_p">상담실입니다. 벽을 유리로 시공해 시각적으로 더 넓어 보이는 느낌을 주었습니다.</p>
            </div> --%>
            <div style="margin-bottom: 100px">
            	<p> 오몰레어 오스템의 깔끔한 치과 인테리어였습니다.</p>
                <p>다양한 시공사례 구경하시고 오몰레어에서 무료 견적 받아보세요.</p>
            </div>
        </div>
    </div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>