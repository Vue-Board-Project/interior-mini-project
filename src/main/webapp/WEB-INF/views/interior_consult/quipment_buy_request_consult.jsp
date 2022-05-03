<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<main style="background-color: #faf9f6">
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/cssHeader.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quik.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quick_consultation.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/detail_consultation.css" rel="stylesheet" type="text/css"/> 
	<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quipment_buy_request_consult.css" rel="stylesheet" type="text/css" /> 
	<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/remodeling_price.css" rel="stylesheet" type="text/css"/>
    <div class="container">
        <div style="display: flex;">
            <section style="display: inline-block; width: 75%;" class="p-4">
                <!-- 1단계  -->
                <div style="display: flex; height: 12rem;">
                    <div style="display: inline-block; width: 10%;" >
                        <div style="width: 100%; height: 3rem;" class="text-center">
                            <p style="line-height: 80%; font-size: 15px; font-family: 'MinSans-Regular';">step</p>
                            <p style="line-height: 20%; font-size: 30px; font-family: 'MinSans-Medium'; color: #ca5c0d;">01</p>
                        </div>
                        <div  style="width: 100%; height: 8rem;" class="text-right pt-2">
                            <div style="width: 50%; height: 100%; border-right: 2px dotted #272723;">
                            </div>
                        </div>
                    </div>
                    <div style="display: inline-block; width: 90%;">
                        <div style="width: 95%; height: 100%;" class="mx-auto">
                            <div style="width: 100%; height: 40%;" class="pt-3" >
                                <h5 style="font-family: 'MinSans-Regular'; font-weight: bold;">상담목적</h5> 
                            </div>
                            <div style="width: 100%; height: 60%;">
                                <div style="display: flex;">  
                                    <label class="detail_consult_main_radio_btn_csswrap mr-3">
                                        <input type="radio" name="pcPurpose" value="change">
                                        <span class="purchase_consultation_purpose rounded">
                                            장비교체
                                        </span>
                                    </label>  
                                    <label class="detail_consult_main_radio_btn_csswrap mr-3">
                                        <input type="radio" name="pcPurpose" value="remodeling">
                                        <span class="purchase_consultation_purpose rounded">
                                            리모델링
                                        </span>
                                    </label>  
                                    <label class="detail_consult_main_radio_btn_csswrap purchase_consultation_purpose mr-3">
                                        <input type="radio" name="pcPurpose" value="open">
                                        <span class="purchase_consultation_purpose rounded">
                                            개원
                                        </span>
                                    </label> 
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <!-- 2단계 -->
                <div style="display: flex;  height: 12rem;">
                    <div style="display: inline-block; width: 10%;" >
                        <div style="width: 100%; height: 3rem;" class="text-center">
                            <p style="line-height: 80%; font-size: 15px; font-family: 'MinSans-Regular';">step</p>
                            <p style="line-height: 20%; font-size: 30px; font-family: 'MinSans-Medium';color: #ca5c0d;">02</p>
                        </div>
                        <div  style="width: 100%; height: 8rem;" class="text-right">
                            <div style="width: 50%; height: 100%; border-right: 2px dotted #272723;">
                            </div>
                        </div>
                    </div>
                    <div style="display: inline-block; width: 90%;">
                        <div style="width: 95%; height: 100%;" class="mx-auto">
                            <div style="width: 100%; height: 40%;" class="pt-1">
                                <h5 style="font-family: 'MinSans-Regular'; font-weight: bold;">필요서비스[복수선택 가능]</h5> 
                            </div>
                            <div style="width: 100%; height: 60%;">
                                <div style="display: flex;">  
                                    <label class="detail_consult_main_radio_btn_csswrap mr-3">
                                        <input type="checkbox" name="wantService" value="change">
                                        <span class="purchase_consultation_purpose rounded" style="font-size: 18px; ">
                                            장비제거
                                        </span>
                                    </label>  
                                    <label class="detail_consult_main_radio_btn_csswrap mr-3">
                                        <input type="checkbox" name="wantService" value="remodeling" checked>
                                        <span class="purchase_consultation_purpose rounded" style="font-size: 18px;">
                                            장비설치
                                        </span>
                                    </label>  
                                    <label class="detail_consult_main_radio_btn_csswrap purchase_consultation_purpose mr-3">
                                        <input type="checkbox" name="wantService" value="open">
                                        <span class="purchase_consultation_purpose rounded" style="font-size: 18px; ">
                                            전기공사
                                        </span>
                                    </label> 
                                    <label class="detail_consult_main_radio_btn_csswrap purchase_consultation_purpose mr-3">
                                        <input type="checkbox" name="wantService" value="rental">
                                        <span class="purchase_consultation_purpose rounded" style="font-size: 18px; ">
                                            네트워크 공사
                                        </span>
                                    </label> 
                                    <label class="detail_consult_main_radio_btn_csswrap purchase_consultation_purpose mr-3">
                                        <input type="checkbox" name="wantService" value="rental">
                                        <span class="purchase_consultation_purpose rounded" style="font-size: 18px; ">
                                            배관 공사
                                        </span>
                                    </label> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 3단계 -->
                <div style="display: flex;" class="mb-4">
                    <div style="display: inline-block; width: 10%;">
                        <div style="width: 100%; height: 3rem;" class="text-center">
                            <p style="line-height: 80%; font-size: 15px; font-family: 'MinSans-Regular';">step</p>
                            <p style="line-height: 20%; font-size: 30px; font-family: 'MinSans-Medium';color: #ca5c0d;">03</p>
                        </div>
                        <div  style="width: 100%; height: 10rem" class="text-right" id="stepthree_height_result">
                            <div style="width: 50%; height: 100%; border-right: 2px dotted #272723;">
                            </div>
                        </div>
                    </div>
                    <div style="display: inline-block; width: 90%;" >
                        <div style="width: 95%;" class="mx-auto">
                            <div style="width: 100%;" class="pt-1 mb-5">
                                <h5 style="font-family: 'MinSans-Regular'; font-weight: bold;">상담 제품과 수량 확인</h5> 
                            </div>
                            <!-- 제품 부분 감싸기-->
                            <div tyle="width: 100%;" id="stepthree_height">
                                <div style="width: 100%;">
                                    <div class="border mb-4 bg-white" style="width: 95%; height: 160px;">
                                        <div style="display: flex;">
                                            <div style="display: inline-block; width: 90%; height: 100px;">
                                                <div style="display: flex;">
                                                    <div style="display: inline-block; width: 30%;" class="p-2">
                                                        <img class="productConsultImg" width="150px" height="110px" class="mt-2">
                                                    </div>
                                                    <div style="display: inline-block; width: 40%; height: 100px;" class="ml-3 mt-2">
                                                        <div style="font-family: 'MinSans-Medium';" class="mb-2">
                                                            <span style="font-size: 20px;">한신 멸균기</span><br/>
                                                           model1
                                                        </div>
                                                        <div style="display: flex;">
                                                            <div style="display: inline-block;" class="mr-2">색상:</div> 
                                                            <div style="display: inline-block; width: 20px; height: 20px;background-color: cornflowerblue; border-radius: 10px;" class="mt-1"></div>
                                                        </div>
                                                        <div >수량 : 2</div> 

                                                          

                                                    </div>
                                                </div>    
                                            </div>
                                            <div  style="display: inline-block; width: 10%;height: 100px;" class="text-right">
                                                <button class="btn"><i class="fa-solid fa-xmark"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                               <c:forEach var="product" items="${products}" > 
	                                <div style="width: 100%;" id="stepthree_height">
	                                    <div class="border mb-4 bg-white" style="width: 95%; height: 160px;">
	                                        <div style="display: flex;">
	                                            <div style="display: inline-block; width: 90%; height: 100px;">
	                                                <div style="display: flex;">
	                                                    <div style="display: inline-block; width: 30%;" class="p-2 product_consult_img">
	                                                 
                                                            <img src="/springframework-mini-project/interior_consult/display?fileName=${product.pattachoname}"width="150px" height="110px" class="mt-2">  
	                                                    </div>
	                                                    <div style="display: inline-block; width: 40%; height: 100px;" class="ml-3 mt-2">
	                                                        <div style="font-family: 'MinSans-Medium';" class="mb-2">
	                                                            <span style="font-size: 20px;">${product.productName}</span><br/>
	                                                            ${product.modelNumber}
	                                                        </div>
	                                                        <div style="display: flex;">
	                                                            <div style="display: inline-block;" class="mr-2">색상:</div> 
	                                                            <div style="display: inline-block; width: 20px; height: 20px;background-color: ${product.productColor}; border-radius: 10px;" class="mt-1"></div>
	                                                        </div>
	                                                        <div >수량 : ${product.consultCount}</div> 
	                                                    </div>
	                                                </div>
	    
	                                            </div>
	                                            <div  style="display: inline-block; width: 10%;height: 100px;" class="text-right">
	                                                <button class="btn"><i class="fa-solid fa-xmark"></i></button>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    
	                                </div>
                                </c:forEach>

                            </div>
                            
                        </div>
                    </div>
                </div>
                <!-- 4단계 -->
                <div style="display: flex;" class="mb-3">
                    <div style="display: inline-block; width: 10%;">
                        <div style="width: 100%; height: 3rem;" class="text-center">
                            <p style="line-height: 80%; font-size: 15px; font-family: 'MinSans-Regular';">step</p>
                            <p style="line-height: 20%; font-size: 30px; font-family: 'MinSans-Medium';color: #ca5c0d;">04</p>
                        </div>
                        <div  style="width: 100%; height: 10rem;" class="text-right">
                            <div style="width: 50%; height: 100%; border-right: 2px dotted #272723;">
                            </div>
                        </div>
                    </div>
                    <div style="display: inline-block; width: 90%;">
                        <div style="width: 95%;" class="mx-auto">
                            <div style="width: 100%;" class="pt-1">
                                <h5 style="font-family: 'MinSans-Regular'; font-weight: bold;">날짜와 상담자 정보</h5> 
                            </div>
                            <div style="width: 100%;">
                               <div>
                                    <div class="mb-4">
                                        날짜 : 
                                        <input type="date" class="form-control mr-3 ml-2" style="width: 250px; display: inline-block; font-size: 15px;">
                                    </div>
                                    <div style="width: 100%;" class="mt-4 mb-5">
                                        <div class="rounded" style="width: 100%; height: 140px; background-color: #e8e8db; font-family: 'MinSans-Regular';">
                                            <div>
                                                <div class="ml-3" style="display: flex; align-items: center; height: 70px; width: 90%;">
                                                    <p class="mr-3 pt-3" style="display: inline-block;">오전</p>
                                                    <label class="conult-reservation_time_wrap">
                                                        <input type="radio" name="consultTime" value="am1">
                                                        <span class="crs_time_span"> 09:10 </span>
                                                    </label>
                                                    <label class="conult-reservation_time_wrap">
                                                        <input type="radio" name="consultTime" value="am2">
                                                        <span class="crs_time_span"> 10:10 </span>
                                                    </label>
                                                    <label class="conult-reservation_time_wrap">
                                                        <input type="radio" name="consultTime" value="am3">
                                                        <span class="crs_time_span"> 11:10 </span>
                                                    </label>
                                                </div>
                                                
                                                <div class="ml-3" style="display: flex;align-items: center; height: 70px; width: 90%; border-top: 1px solid #272723;">
                                                    <p class="mr-3 pt-3" style="display: inline-block;">오후</p>
                                                    <label class="conult-reservation_time_wrap">
                                                        <input type="radio" name="consultTime" value="pm1">
                                                        <span class="crs_time_span"> 13:10 </span>
                                                    </label>
                                                    <label class="conult-reservation_time_wrap">
                                                        <input type="radio" name="consultTime" value="pm2">
                                                        <span class="crs_time_span"> 14:10 </span>
                                                    </label>
                                                    <label class="conult-reservation_time_wrap">
                                                        <input type="radio" name="consultTime" value="pm3">
                                                        <span class="crs_time_span"> 15:10 </span>
                                                    </label>
                                                    <label class="conult-reservation_time_wrap">
                                                        <input type="radio" name="consultTime" value="pm4">
                                                        <span class="crs_time_span"> 16:10 </span>
                                                    </label>
                                                    <label class="conult-reservation_time_wrap">
                                                        <input type="radio" name="consultTime" value="pm5">
                                                        <span class="crs_time_span"> 17:10 </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 5단계 -->
                <div style="display: flex;  height: 12rem;">
                    <div style="display: inline-block; width: 10%;" >
                        <div style="width: 100%; height: 3rem;" class="text-center">
                            <p style="line-height: 80%; font-size: 15px; font-family: 'MinSans-Regular';">step</p>
                            <p style="line-height: 20%; font-size: 30px; font-family: 'MinSans-Medium';color: #ca5c0d;">05</p>
                        </div>
                        <div  style="width: 100%; height: 8rem;" class="text-right">
                          
                        </div>
                    </div>
                    <div style="display: inline-block; width: 90%;">
                        <div style="width: 95%; height: 100%;" class="mx-auto">
                            <div style="width: 100%; height: 30%;" class="pt-1">
                                <h5 style="font-family: 'MinSans-Regular'; font-weight: bold;">세부 상담 요청 사항 [선택]</h5> 
                            </div>
                            <div style="width: 100%; height: 60%;">
                                <textarea class="p-2" cols="80" rows="5" placeholder="장비 구매나 설치에 관하여 궁금한 점을 적어주세요."></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                
            </section>
            <section style="display: inline-block; width: 30%;" class="border-left">
                <div style="width: 90%; box-shadow: 3px 3px 10px -5px;" class="bg-white rounded mx-auto mt-5">
                    <div style="width: 100%;">
                        <div style="width: 90%; padding: 10px 0;" class="mx-auto">
                            <div style="width: 100%;" class="pt-3">
                                <div style="font-family: 'MinSans-Bold'; border-bottom: 2px solid darkgray;" class=",">
                                    상담필요 상품
                                </div>
                                <div style="display: flex;font-family: 'MinSans-Regular'; justify-content: end;">
                                    <div style="display: inline-block; font-size: 20px;" class="pt-2 pr-2">
                                        총 ${fn:length(products)}건
                                    </div>
                                </div>
                            </div>
                            <div style="width: 100%;" class="pt-3">
                                <div style="font-family: 'MinSans-Bold'; border-bottom: 2px solid darkgray;">
                                    신청자
                                </div>
                                <div style="font-family: 'MinSans-Regular'; font-size: 18px;" class="pt-3">
                                    <p>성명 : 심보경</p>
                                    <p>주소 : 마곡나루 12 오스템 본사 203호</p>
                                </div>
                            </div>
                            <div class="text-center">
                                <button class="btn btn-info" style="background-color: #ca5c0d; border: 0; width: 180px; font-family: 'MinSans-Bold'; font-size: 18px;">상담 신청</button>
                            </div>
                        </div>
                    </div>
                    

                </div>
            </section>

        </div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/interior_consult_js/quipment_buy_request_consult.js"></script>
 
</main>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>