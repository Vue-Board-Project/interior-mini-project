<%@ page contentType="text/html; charset=UTF-8"%>
<link href="${pageContext.request.contextPath}/resources/css/model_dental/cssModelDentalDetail1.css" rel="stylesheet" type="text/css">
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div id="model_dental_wrap" class="d-flex flex-column">
        <div class="text-center"><img id="model_dental_main_img" class="vw-100" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/1.PNG"/></div>
        <div id="model_dental_summary">
            <div class="d-flex justify-content-center pt-4 mr-5 ml-5" style="color: #272723;">
                <div class="mr-5"><img class="model_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/free-icon-building-188379.png"/><strong class="ml-3">모델치과</strong></div>
                <div class="mr-5"><img class="model_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/premium-icon-house-design-3769340.png"/><strong class="ml-3">50평</strong></div>
                <div><img class="model_dental_summary_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/premium-icon-interior-design-2400622.png"/><strong class="ml-3">모던스타일</strong></div>
            </div>
            <hr style="width:90%;height:2px;border:none;background-color:#b3b39f;"/>
            <div class="text-center">
                <p style="color: #272723;">화이트 톤의 모던 치과 인테리어</p>
            </div>
        </div>
        <div class="text-center mb-5"><a class="btn model_dental_detail_btn" href="interior_consult/quick_consultation">이 컨셉으로 상담신청</a></div>
        <div id="model_dental_content" class="text-center">
            <div id="model_dental_waiting_room">
                <div class="mb-5"><img class="model_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/2.PNG"/></div>
                <div class="mb-5"><img class="model_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/3.PNG"/></div>
                <div class="mb-5"><img class="model_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/4.PNG"/></div>
                <p class="mb-5">[대기실]</p>
                <p class="mb-5 model_dental_content_p">외부에서 봤을 때 적당한 크기처럼 보이는 이 치과는 내부로 들어오면서 아주 넓은 구조를 가지고 있으며
                     실제로 복도는 좁게, 진료 및 대기공간은 크게 건축을 하면서 사용하는 공간들이 포인트가 될 수 있도록하는 디자인</p>
            </div>
            <div id="model_dental_treatment_room">
                <div>
                    <div class="mb-5">
                        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/5-1.PNG" style="width: 20%;"/>
                        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/5-2.PNG" style="width: 40%;"/>
                    </div>
                    <div class="mb-5 model_dental_content_p"><img class="model_dental_content_img" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/6.PNG"/></div>
	                <p class="mb-5">[진료실]</p>
	                <p class="mb-5 model_dental_content_p">고객들이 편안하게 진료를 볼 수 있도록 프라이버시에도 많은 신경을 쓰면서
	                     의사와 고객의 편리성을 동시에 잡은 분리형 진료실</p>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>