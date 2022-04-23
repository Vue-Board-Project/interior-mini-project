<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/portfolio_dental/cssPortfolioDentalDetail3.css" rel="stylesheet" type="text/css">
        <div id="model_dental_main_img" class="text-center"><img class="vw-100" style="height: 450px;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/portfolio_dental_ad.PNG"/></div>
<div class="d-flex pt-5" style="background-color: #faf9f6;  font-family: 'MinSans-Regular';">
	<%@ include file="/WEB-INF/views/portfolio_dental/portfolio_dental_floating_menu.jsp" %>
        <div class="d-flex flex-column vw-100">
            <div id="portfolio_dental_wrap" class="mb-5" style=" background-color: white;">
                <%@ include file="/WEB-INF/views/portfolio_dental/portfolio_dental_detail_slide.jsp" %>
                <div id="portfolio_dental_summary">
                    <div class="d-flex justify-content-center pt-4 pb-2 mr-5 ml-5" style="color: #272723;">
                        <div class="mr-5"><img class="portfolio_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/free-icon-building-188379.png"/><strong class="ml-3">모델치과</strong></div>
                        <div class="mr-5"><img class="portfolio_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/premium-icon-house-design-3769340.png"/><strong class="ml-3">100평</strong></div>
                        <div><img class="portfolio_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/premium-icon-interior-design-2400622.png"/><strong class="ml-3">모던스타일</strong></div>
                    </div>
                    <hr style="width:90%;height:2px;border:none;background-color:#b3b39f; margin: 0 auto;"/>
                    <div class="text-center pb-2 pt-2" style=" padding-bottom: 100px;">
                        <p style="color: #272723;">화이트 베이스와 블랙 포인트가 들어간 모던 치과 인테리어</p>
                    </div>
                </div>
                <div id="portfolio_dental_content" class="text-center pt-5">
                    <div>
                    	<div class="portfolio_dental_content_title" align="left"><b class="portfolio_dental_content_title_b">입구</b></div>
                        <div class="mb-5"><img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_1.PNG"/></div>
                        <p class="mb-5 portfolio_dental_content_p">치과 입구 모습입니다.
                            입구는 블랙톤으로 무게감있게 연출했습니다.</p>
                    </div>
                    <div>
                    	<div class="portfolio_dental_content_title" align="left"><b class="portfolio_dental_content_title_b">치과 내부</b></div>
                        <div class="mb-5"><img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_2.PNG"/></div>
                        <p class="mb-5 portfolio_dental_content_p">치과 내부 모습입니다.
                            화이트톤을 기반으로 청결한 이미지를 중점적으로 연출했습니다</p>
                    </div>
                    <div id="model_dental_waiting_room">
                	    <div class="portfolio_dental_content_title" align="left"><b class="portfolio_dental_content_title_b">진료실</b></div>
                        <div class="mb-5"><img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_3.PNG"/></div>
                        <div class="mb-5"><img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_6.PNG"/></div>
                        <p class="mb-5 portfolio_dental_content_p">진료실 내부 모습입니다.
                            화이트와 블랙의 대비감을 이용해 더 널어 보이게 연출했습니다.</p>
                    </div>
                    <div id="model_dental_X-ray_room">
            	        <div class="portfolio_dental_content_title" align="left"><b class="portfolio_dental_content_title_b">X-ray실</b></div>
                        <div class="mb-5"><img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_4.PNG"/></div>
                        <p class="mb-5 portfolio_dental_content_p">X-ray촬영실은 블랙으로 포인트를 주었습니다.</p>
                    </div>
                    <div id="model_dental_makeup_corner">
                    	<div class="portfolio_dental_content_title" align="left"><b class="portfolio_dental_content_title_b">특진실</b></div>
                        <div class="mb-5"><img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_5.PNG"/></div>
                        <p class="mb-5 portfolio_dental_content_p">VIP를 위한 특진실 내부 모습입니다.
                            그레이톤 벽에 치과와 관련된 그래픽을 넣어 포인트를 주었습니다.</p>
                    </div>
                    <div id="model_dental_doctor_room">
               		    <div class="portfolio_dental_content_title" align="left"><b class="portfolio_dental_content_title_b">상담실</b></div>
                        <div class="mb-5"><img class="portfolio_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_7.PNG"/></div>
                        <p class="portfolio_dental_content_p">상담실입니다.
                            벽을 유리로 시공해 시각적으로 더 넓어 보이는 느낌을 주었습니다.</p>
                    </div>
                    <div class="mb-5">
                        <p style="width:900px; margin: 0 auto;">오몰레어 오스템의 깔끔한 치과 인테리어였습니다.</p>
                        <p style="width:900px; margin: 0 auto;">다양한 시공사례 구경하시고 오몰레어에서 무료 견적 받아보세요.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
            <%@ include file="/WEB-INF/views/common/footer.jsp" %>