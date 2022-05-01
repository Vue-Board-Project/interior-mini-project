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
                                        <input type="radio" name="purchase_consultation_purpose" value="change">
                                        <span class="purchase_consultation_purpose rounded">
                                            장비교체
                                        </span>
                                    </label>  
                                    <label class="detail_consult_main_radio_btn_csswrap mr-3">
                                        <input type="radio" name="purchase_consultation_purpose" value="remodeling">
                                        <span class="purchase_consultation_purpose rounded">
                                            리모델링
                                        </span>
                                    </label>  
                                    <label class="detail_consult_main_radio_btn_csswrap purchase_consultation_purpose mr-3">
                                        <input type="radio" name="purchase_consultation_purpose" value="open">
                                        <span class="purchase_consultation_purpose rounded">
                                            개원
                                        </span>
                                    </label> 
                                    <label class="detail_consult_main_radio_btn_csswrap purchase_consultation_purpose mr-3">
                                        <input type="radio" name="purchase_consultation_purpose" value="rental">
                                        <span class="purchase_consultation_purpose rounded">
                                            렌탈
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
                                <h5 style="font-family: 'MinSans-Regular'; font-weight: bold;">필요서비스</h5> 
                            </div>
                            <div style="width: 100%; height: 60%;">
                                <div style="display: flex;">  
                                    <label class="detail_consult_main_radio_btn_csswrap mr-3">
                                        <input type="radio" name="purchase_consultation_purpose" value="change">
                                        <span class="purchase_consultation_purpose rounded" style="font-size: 18px; ">
                                            장비제거
                                        </span>
                                    </label>  
                                    <label class="detail_consult_main_radio_btn_csswrap mr-3">
                                        <input type="radio" name="purchase_consultation_purpose" value="remodeling">
                                        <span class="purchase_consultation_purpose rounded" style="font-size: 18px; ">
                                            장비설치
                                        </span>
                                    </label>  
                                    <label class="detail_consult_main_radio_btn_csswrap purchase_consultation_purpose mr-3">
                                        <input type="radio" name="purchase_consultation_purpose" value="open">
                                        <span class="purchase_consultation_purpose rounded" style="font-size: 18px; ">
                                            전기공사
                                        </span>
                                    </label> 
                                    <label class="detail_consult_main_radio_btn_csswrap purchase_consultation_purpose mr-3">
                                        <input type="radio" name="purchase_consultation_purpose" value="rental">
                                        <span class="purchase_consultation_purpose rounded" style="font-size: 18px; ">
                                            네트워크 공사
                                        </span>
                                    </label> 
                                    <label class="detail_consult_main_radio_btn_csswrap purchase_consultation_purpose mr-3">
                                        <input type="radio" name="purchase_consultation_purpose" value="rental">
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
                            <div style="width: 100%;" class="pt-1">
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
                                                        <div>
                                                            <div class="mt-3">
                                                                <div class="border rounded" style="width: 90px; height: 30px; display: flex;">
                                                                    <div style="display: inline-block;"><button class="pb-1" style="width: 30px; height: 30px; border-radius: 5px; background-color: #ca5c0d; color: white; border: 0;">+</button></div>
                                                                    <div style="display: inline-block; width: 30px;" class="text-center"><span >1</span></div>
                                                                    <div style="display: inline-block;"><button  class="pb-1" style="width: 30px; height: 30px; border-radius: 5px; background-color: #ca5c0d; color: white; border: 0;">-</button></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>    
                                            </div>
                                            <div  style="display: inline-block; width: 10%;height: 100px;" class="text-right">
                                                <button class="btn"><i class="fa-solid fa-xmark"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                               <c:forEach var="image" items="${images}" > 
	                                <div style="width: 100%;" id="stepthree_height">
	                                    <div class="border mb-4 bg-white" style="width: 95%; height: 160px;">
	                                        <div style="display: flex;">
	                                            <div style="display: inline-block; width: 90%; height: 100px;">
	                                                <div style="display: flex;">
	                                                    <div style="display: inline-block; width: 30%;" class="p-2">
	                                                        <img src="data:image/png;base64;${image}" width="150px" height="110px" class="mt-2">
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
	                                                        <div>
	                                                            <div class="mt-3">
	                                                                <div class="border rounded" style="width: 90px; height: 30px; display: flex;">
	                                                                    <div style="display: inline-block;"><button class="pb-1" style="width: 30px; height: 30px; border-radius: 5px; background-color: #ca5c0d; color: white; border: 0;">+</button></div>
	                                                                    <div style="display: inline-block; width: 30px;" class="text-center"><span >1</span></div>
	                                                                    <div style="display: inline-block;"><button  class="pb-1" style="width: 30px; height: 30px; border-radius: 5px; background-color: #ca5c0d; color: white; border: 0;">-</button></div>
	                                                                </div>
	                                                            </div>
	                                                        </div>
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
                <div style="display: flex;">
                    <div style="display: inline-block; width: 10%;">
                        <div style="width: 100%; height: 3rem;" class="text-center">
                            <p style="line-height: 80%; font-size: 15px; font-family: 'MinSans-Regular';">step</p>
                            <p style="line-height: 20%; font-size: 30px; font-family: 'MinSans-Medium';color: #ca5c0d;">04</p>
                        </div>
                        <div  style="width: 100%; height: 15rem;" class="text-right">
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
                                        시간 : 
                                        <select class="form-control ml-2" style="width: 250px; display: inline-block; font-size: 15px;">
                                            <option>시간선택</option>
                                            <option>09:10</option>
                                            <option>10:10</option>
                                            <option>11:10</option>
                                            <option>13:10</option>
                                            <option>14:10</option>
                                            <option>15:10</option>
                                            <option>16:10</option>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        이름 :<input type="text" class="form-control mr-3 ml-3" style="width: 200px; display: inline-block;  font-size: 15px;">
                                        전화번호 :<input type="text" class="form-control ml-2" style="width: 270px;  display: inline-block; font-size: 15px;" placeholder="(-)을 제외한 숫자만 입력해주세요">
                                    </div>
                               </div>
                               <div class="mb-4">
                                    <div style="display: flex;">
                                        <div style="display: inline-block; width: 20%;" >
                                                배송주소 : 
                                        </div>
                                        <div style="display: inline-block; width: 80%;" >
                                            <div class="mb-2">
                                                <input type="text" class="form-control mr-3" style="width: 380px; display: inline-block; font-size: 15px;" readonly>
                                                <button class="btn" style="border: 2px solid #ca5c0d; background-color: white; color: #ca5c0d;">주소 찾기</button>
                                            </div>
                                            <div>
                                                <input type="text" class="form-control mr-3" style="width: 495px; display: inline-block;  font-size: 15px;">
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
                <div style="width: 90%; height: 300px; box-shadow: 3px 3px 10px -5px;" class="bg-white rounded mx-auto mt-5">
                    <div style="width: 90%;" class="mx-auto">
                        <div style="width: 100%;" class="pt-3">
                            <div style="font-family: 'MinSans-Bold'; border-bottom: 2px solid darkgray;">
                                상담필요 상품
                            </div>
                            <div style="display: flex; justify-content: space-between; font-family: 'MinSans-Regular';">
                                <div style="display: inline-block;" class="pt-1">
                                    총 2건
                                </div>
                                <div style="display: inline-block; font-size: 20px;" class="pt-4">
                                    6개 주문
                                </div>
                            </div>
                        </div>
                        <div style="width: 100%;" class="pt-3">
                            <div style="font-family: 'MinSans-Bold'; border-bottom: 2px solid darkgray;">
                                신청자
                            </div>
                            <div style="font-family: 'MinSans-Regular'; font-size: 18px;" class="pt-3">
                                <h5>성명 : 심보경</h5>
                                <h5>주소 : 마곡나루 12 오스템 본사 203호</h5>
                            </div>
                        </div>
                        <div class="text-center">
                            <button class="btn btn-info" style="background-color: #ca5c0d; border: 0; width: 180px; font-family: 'MinSans-Bold'; font-size: 18px;">상담 신청</button>
                        </div>
                    </div>

                </div>
            </section>

        </div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/interior_consult_js/quipment_buy_request_consult.js"></script>
 
</main>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>