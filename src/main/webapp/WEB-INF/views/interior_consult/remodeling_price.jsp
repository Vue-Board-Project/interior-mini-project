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
            <article class="mx-auto" style="width: 100%; background-color: white; display: flex;">
                <section style="display: inline-block; width: 15%;" class="border">
                    <div style="width: 100%;" class="text-right pr-2">
                        <ul class="remodeling_price_quote_main_radio_btn">
                            <li><button class="btn remodeling_price_aside_jsonci_class rpajc" value="all" onclick="js:remodeling_price_aside_btn('all')" style="color: #ca5c0d; font-weight: bold; ">종합</button></li>
                            <li><button class="btn remodeling_price_aside_jsonci_class rpajc" value="papering" onclick="js:remodeling_price_aside_btn('papering')">도배</button></li>
                            <li><button class="btn remodeling_price_aside_jsonci_class rpajc" value="waiting" onclick="js:remodeling_price_aside_btn('waiting')">대기실</button></li>
                            <li><button class="btn remodeling_price_aside_jsonci_class rpajc" value="treatment" onclick="js:remodeling_price_aside_btn('treatment')">진료실</button></li>
                            <li><button class="btn remodeling_price_aside_jsonci_class rpajc" value="disinfection" onclick="js:remodeling_price_aside_btn('disinfection')">소독실</button></li>
                        </ul> 
                    </div>
                </section>
                <section style="display: inline-block; width: 85%; padding-top: 40px;;" class="border" id="includeRemodeling">
                     <!-- 어사이드 따라서 변할 부분 -->
                    <!-- 종합 -->
                    <div style="width: 80%;" class="mx-auto" id="rpajcall">
                        <!-- 종합 설명 부분 -->
                        <div class="mb-5">
                            <div style="display: flex; justify-content: space-between;">
                                <div style="display: inline-block; font-family: 'MinSans-Bold';">
                                    <h3>종합 리모델링
                                    <br/>
                                    견적 계산</h3>
                                </div>
                                <div style="display: inline-block; font-family: 'MinSans-Medium';" >
                                    <button class="btn badge-light"><i class="fa-solid fa-rotate-left"></i>초기화</button>
                                </div>
                            </div>
                            <div>
                                <div style="width: 100%; padding: 30px 30px 10px 10px;" class="bg-light rounded mx-auto my-4">
                                    <ul class="total_remodeling_price_coment_wrap">
                                        <li>치과 종합리모델링 평균 금액으로, 자가거주 용도와 견적이 다를 수 있습니다.</li>
                                        <li>본 금액은 참고용입니다. 상세 조건, 시공지 상황, 업체별 자재비, 인건비, 상세 시공방법 등에 따라 금액이 달라질 수 있으니, 참고로만 이용해 주세요.</li>
                                        <li>기계는 기본 설치와 기계 구매 가격대로 환산한 금액으로 견적을 제공합니다.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- 견적 종류 순서대로-->
                        <!-- 원하는 시공 종류 -->
                        <div class="rp_maginunder" >
                            <div style=" font-family: 'MinSans-Bold'; font-size: 20px; padding-bottom: 20px; line-height: 120%;">
                                원하는 시공을 모두 골라주세요.<br/>
                                <span style="font-size: 15px; color:#272723;font-family: 'MinSans-Regular';">시공분야는 전문가와 조율 가능합니다.[ 리모델링 용 ]</span> 
                            </div>
                            <div>
                                <!--시공정류-->
                                <div style="display: flex; width: 100%;">
                                    <label class="remodeling_consult_Room price_rcR wi">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="treatment">
                                        <span style="border-top-left-radius: 10px;">
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/treatmentRoom.png" width="120px">
                                            </div>
                                            진료실
                                        </span>
                                    </label>
                                    <label class="remodeling_consult_Room price_rcR">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="xray">
                                        <span>
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/xrayRoom.png" width="120px">
                                            </div>
                                            X-ray실
                                        </span>
                                    </label>
                                    <label class="remodeling_consult_Room price_rcR">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="owner">
                                        <span style="border-top-right-radius: 10px;">
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/direcotorRoom.png" width="120px">
                                            </div>
                                            원장실
                                        </span>
                                    </label>
                                </div>
            
                                <div style="display: flex;">
                                    <label class="remodeling_consult_Room price_rcR">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="consult">
                                        <span style="border-bottom-left-radius: 10px;">
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/consultinfRoom.png" width="120px">
                                            </div>
                                            상담실
                                        </span>
                                    </label>
                                    <label class="remodeling_consult_Room price_rcR">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="equipment">
                                        <span >
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/equipmentRoom.png" width="120px">
                                            </div>
                                            기계실
                                        </span>
                                    </label>
                                    <label class="remodeling_consult_Room price_rcR">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="bath">
                                        <span style="border-bottom-right-radius: 10px;">
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/restRoom.png" width="120px">
                                            </div>
                                            화장실
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <!-- 평수 정하기 -->
                        <div class="rp_maginunder">
                            <div style=" font-family: 'MinSans-Bold'; font-size: 20px; padding-bottom: 20px; line-height: 120%;">
                                평수-공급면적<br/>
                                <span style="font-size: 15px; color:#272723;font-family: 'MinSans-Regular';">대략적인 평수를 알려주세요</span> 
                            </div>
                            <div style="width: 100%;" class="px-auto">
                                <div style="width: 95%;">
                                    <input type="range" class="form-control-range" style="width: 100%;">
                                </div>
                                <div style="justify-content: space-between; width: 95%; display:flex;">
                                    <div style="display: inline-block;">0평</div>
                                    <div style="display: inline-block;">100평</div>
                                </div>
                            </div>
                        </div>
                        <!-- 도배 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">도배</p>
                            <div style="display: flex;" class="mx-auto">
                                <label class="detail_consult_main_radio_btn_csswrap  rpmrbc" >
                                    <input type="radio" name="remodeling_price_total_papering" value="silk">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        실크
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap  rpmrbc" >
                                    <input type="radio" name="remodeling_price_total_papering" value="paper">
                                    <span class="remodeling_price_papering">
                                        합지
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap  rpmrbc" >
                                    <input type="radio" name="remodeling_price_total_papering" value="silkpaper">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        실크&합지
                                    </span>
                                </label>   
                            </div>
                        </div>
                        <!-- 바닥재 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">바닥재</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_total_flooring" value="veneer">
                                    <span style="border-radius: 10px 0 0 0;" class="remodeling_price_papering">
                                        장판
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_total_flooring" value="reinforcedfloor">
                                    <span class="remodeling_price_papering">
                                        강화마루
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_total_flooring" value="riverfloor">
                                    <span style="border-radius: 0 10px 0 0;" class="remodeling_price_papering">
                                        강마루
                                    </span>
                                </label>   
                            </div>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_total_flooring" value="solidwoodfloor">
                                    <span style="border-radius: 0 0 0 10px;" class="remodeling_price_papering">
                                        원목마루
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_total_flooring" value="porcelaintile">
                                    <span class="remodeling_price_papering">
                                        포세린타일
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_total_flooring" value="naturalmarble">
                                    <span style="border-radius: 0 0 10px 0;" class="remodeling_price_papering">
                                        천연대리석
                                    </span>
                                </label>   
                            </div>
                        </div>
                        <!-- 도어/문틀 -->
                        <div class="rp_maginunder"  >
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">도어/문틀</p>
                            <div style="display: flex; width: 100%;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_total_door" value="allDoor">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        전체 교체
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_total_door" value="partDoor">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        부분 교체
                                    </span>
                                </label>   
                            </div>
                        </div>
                        <!-- 전기/조명(다중선택 가능) -->
                        <div class="rp_maginunder" style="padding-bottom: 70px;" >
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">전기/조명(다중선택 가능)</p>
                            <div style="display: flex;" class="mx-auto">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="checkbox" name="remodeling_price_total_papering" value="silk">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        스위치&콘센트
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="checkbox" name="remodeling_price_total_papering" value="paper">
                                    <span class="remodeling_price_papering">
                                        전기배선
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="checkbox" name="remodeling_price_total_papering" value="silkpaper">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        조명
                                    </span>
                                </label>   
                            </div>
                        </div>
                    </div>
                    <!-- 도배 -->
                    <div style="width: 80%;" class="mx-auto"  id="rpajcpapering">
                         <!-- 도배 설명 부분 -->
                         <div>
                            <div style="display: flex; justify-content: space-between;">
                                <div style="display: inline-block; font-family: 'MinSans-Bold';">
                                    <h3>도배 견적 계산</h3>
                                </div>
                                <div style="display: inline-block; font-family: 'MinSans-Medium';" >
                                    <button class="btn badge-light"><i class="fa-solid fa-rotate-left"></i>초기화</button>
                                </div>
                            </div>
                        </div>
                        <!-- 벽지 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 벽지를 선택해주세요</p>
                            <div style="display: flex;" class="mx-auto">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_only_papering" value="silk">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        실크
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_only_papering" value="paper">
                                    <span class="remodeling_price_papering">
                                        합지
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_only_papering" value="silkpaper">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        실크&합지
                                    </span>
                                </label>  
                            </div> 
                        </div>
                         <!-- 브랜드 -->
                         <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">벽지 브랜드는 어떤걸 선호하시나요?</p>
                            <div style="display: flex;" class="mx-auto">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_only_papering_brand" value="nobrand">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        브랜드
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_only_papering_brand" value="onlybrand">
                                    <span class="remodeling_price_papering">
                                        비브랜드
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_only_papering_brand" value="free">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        무관
                                    </span>
                                </label>  
                            </div> 
                        </div>
                        <!-- 규모 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 공간 규모가 어떻게 되나요?</p>
                            <div style="display: flex;" class="mb-4">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_only_papering_celling" value="incluedceling">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        천장포함
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_only_papering_celling" value="nonincludeceling">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        천장미포함
                                    </span>
                                </label>   
                            </div>
                            <div style="width: 100%;" class="px-auto mb-4">
                                
                                <div style="width: 100%;">
                                    <input type="range" class="form-control-range" style="width: 100%;">
                                </div>
                                <div style="justify-content: space-between; width: 100%; display:flex;">
                                     <div style="display: inline-block;">0평</div>
                                      <div style="display: inline-block;">100평</div>
                                </div>
                               
                            </div>
                            <div>
                                <div style="display: flex; width: 100%;">
                                    <label class="remodeling_consult_Room price_rcR wi">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="treatment">
                                        <span style="border-top-left-radius: 10px;">
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/treatmentRoom.png" width="120px">
                                            </div>
                                            진료실
                                        </span>
                                    </label>
                                    <label class="remodeling_consult_Room price_rcR">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="xray">
                                        <span>
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/xrayRoom.png" width="120px">
                                            </div>
                                            X-ray실
                                        </span>
                                    </label>
                                    <label class="remodeling_consult_Room price_rcR">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="owner">
                                        <span style="border-top-right-radius: 10px;">
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/direcotorRoom.png" width="120px">
                                            </div>
                                            원장실
                                        </span>
                                    </label>
                                </div>
            
                                <div style="display: flex;">
                                    <label class="remodeling_consult_Room price_rcR">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="consult">
                                        <span style="border-bottom-left-radius: 10px;">
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/consultinfRoom.png" width="120px">
                                            </div>
                                            상담실
                                        </span>
                                    </label>
                                    <label class="remodeling_consult_Room price_rcR">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="equipment">
                                        <span >
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/equipmentRoom.png" width="120px">
                                            </div>
                                            기계실
                                        </span>
                                    </label>
                                    <label class="remodeling_consult_Room price_rcR">
                                        <input type="checkbox" name="remodeling_total_price_room_choice" value="bath">
                                        <span style="border-bottom-right-radius: 10px;">
                                            <div class="mx-auto bg-white mt-3 mb-1" style="width: 140px; height: 120px;">
                                                <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/restRoom.png" width="120px">
                                            </div>
                                            화장실
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 대기실 -->
                    <div style="width: 80%;" class="mx-auto"  id="rpajcwaiting">
                        <!-- 대기실 설명 부분 -->
                        <div class="mb-5">
                            <div style="display: flex; justify-content: space-between;">
                                <div style="display: inline-block; font-family: 'MinSans-Bold';">
                                    <h3>대기실 견적 계산</h3>
                                </div>
                                <div style="display: inline-block; font-family: 'MinSans-Medium';" >
                                    <button class="btn badge-light"><i class="fa-solid fa-rotate-left"></i>초기화</button>
                                </div>
                            </div>
                        </div>
                        <!-- 도배 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 벽지를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_remodeling_price_papering" value="silk">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        실크
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_remodeling_price_papering" value="paper">
                                    <span class="remodeling_price_papering">
                                        합지
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_remodeling_price_papering" value="silkpaper">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        실크&합지
                                    </span>
                                </label>   
                            </div>
                        </div>
                        <!-- 바닥 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 바닥 종류를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_waiting_flooring" value="veneer">
                                    <span style="border-radius: 10px 0 0 0;" class="remodeling_price_papering">
                                        장판
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_waiting_flooring" value="reinforcedfloor">
                                    <span class="remodeling_price_papering">
                                        강화마루
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_waiting_flooring" value="riverfloor">
                                    <span style="border-radius: 0 10px 0 0;" class="remodeling_price_papering">
                                        강마루
                                    </span>
                                </label>   
                            </div>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_waiting_flooring" value="solidwoodfloor">
                                    <span style="border-radius: 0 0 0 10px;" class="remodeling_price_papering">
                                        원목마루
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_waiting_flooring" value="porcelaintile">
                                    <span class="remodeling_price_papering">
                                        포세린타일
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_waiting_flooring" value="naturalmarble">
                                    <span style="border-radius: 0 0 10px 0;" class="remodeling_price_papering">
                                        천연대리석
                                    </span>
                                </label>   
                            </div>
                        </div>
                         <!-- 조명 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">조명 교체 여부를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_waiting_light" value="allLight">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        전체 교체
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_waiting_light" value="partLight">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        부분 교체
                                    </span>
                                </label>   
                            </div>
                        </div>
                         <!-- 정수기 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">정수기 여부를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_waiting_water" value="yesentrance">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        있음
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_waiting_water" value="noentrance">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        없음
                                    </span>
                                </label>   
                            </div>
                        </div>
                         <!-- 출입구 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">출입구 리모델링 여부를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_waiting_entrance" value="yesentrance">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        교체
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_waiting_entrance" value="noentrance">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        교체 안함
                                    </span>
                                </label>   
                            </div>
                        </div>
                         <!-- 접수실 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">접수실 변경 여부를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_waiting_reception" value="yesreception">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        변경
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_waiting_reception" value="noreception">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        변경 안함
                                    </span>
                                </label>   
                            </div>
                        </div>
                        <!-- 놀이방 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">놀이방 선택 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_waiting_playroom" value="yesplayroom">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        있음
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo ">
                                    <input type="radio" name="remodeling_price_waiting_playroom" value="noplayroom">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        없음
                                    </span>
                                </label>   
                            </div>
                        </div>
                        <!-- 가구 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">가구 종류를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_waiting_furniture" value="sofa">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        쇼파
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo ">
                                    <input type="radio" name="remodeling_price_waiting_furniture" value="chair">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        의자
                                    </span>
                                </label>   
                            </div>
                        </div>
                    </div>
                     <!-- 진료실 -->
                     <div style="width: 80%;" class="mx-auto"  id="rpajctreatment">
                         <!-- 진료실 설명 부분 -->
                        <div class="mb-5">
                            <div style="display: flex; justify-content: space-between;">
                                <div style="display: inline-block; font-family: 'MinSans-Bold';">
                                    <h3>진료실 견적 계산</h3>
                                </div>
                                <div style="display: inline-block; font-family: 'MinSans-Medium';" >
                                    <button class="btn badge-light"><i class="fa-solid fa-rotate-left"></i>초기화</button>
                                </div>
                            </div>
                        </div>
                         <!-- 도배 -->
                         <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 벽지를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_papering" value="silk">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        실크
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_papering" value="paper">
                                    <span class="remodeling_price_papering">
                                        합지
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_papering" value="silkpaper">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        실크&합지
                                    </span>
                                </label>   
                            </div>
                        </div>
                        <!-- 바닥 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 바닥 종류를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_flooring" value="veneer">
                                    <span style="border-radius: 10px 0 0 0;" class="remodeling_price_papering">
                                        장판
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_flooring" value="reinforcedfloor">
                                    <span class="remodeling_price_papering">
                                        강화마루
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_flooring" value="riverfloor">
                                    <span style="border-radius: 0 10px 0 0;" class="remodeling_price_papering">
                                        강마루
                                    </span>
                                </label>   
                            </div>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_flooring" value="solidwoodfloor">
                                    <span style="border-radius: 0 0 0 10px;" class="remodeling_price_papering">
                                        원목마루
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_flooring" value="porcelaintile">
                                    <span class="remodeling_price_papering">
                                        포세린타일
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_flooring" value="naturalmarble">
                                    <span style="border-radius: 0 0 10px 0;" class="remodeling_price_papering">
                                        천연대리석
                                    </span>
                                </label>   
                            </div>
                        </div>
                         <!-- 조명 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">조명 교체 여부를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_treatment_light" value="allLight">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        전체 교체
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_treatment_light" value="partLight">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        부분 교체
                                    </span>
                                </label>   
                            </div>
                        </div>
                         <!-- 구조 -->
                         <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">구조를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_treatment_structure" value="Open">
                                    <span style="border-radius: 10px 0 0 0;" class="remodeling_price_papering">
                                        개방형
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_treatment_structure" value="semiopenroom">
                                    <span style="border-radius: 0 10px 0 0;" class="remodeling_price_papering">
                                        반개실형
                                    </span>
                                </label>   
                            </div>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_treatment_structure" value="open type">
                                    <span style="border-radius: 0 0 0 10px;" class="remodeling_price_papering">
                                        개실형
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo ">
                                    <input type="radio" name="remodeling_price_treatment_structure" value="mixed">
                                    <span style="border-radius: 0 0 10px 0;" class="remodeling_price_papering">
                                        혼용형
                                    </span>
                                </label>   
                            </div>
                         </div>
                        <!-- 유니트 체어 개수 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">유니트 체어 개수</p>
                            <div>
                                <div>
                                    <select class="form-control" style="font-family: 'MinSans-Light'; font-size: 20px; height: 60px; width: 100%;">
                                        <option value>유니트 체어 개수</option>
                                        <option value="1">1개</option>
                                        <option value="2">2개</option>
                                        <option value="3">3개</option>
                                        <option value="4">4개</option>
                                        <option value="5">5개</option>
                                        <option value="6">6개</option>
                                        <option value="7">7개</option>
                                    </select>
                                </div>   
                            </div>
                        </div>
                        <!-- 유니트 체어 재설치 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">유니트 체어 재설치</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_treatment_unitchair" value="yesunitchair">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering                                        포함
                                    ">
                                        포함
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_treatment_unitchair" value="nounitchair">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering                                        포함
                                    ">
                                        미포함
                                    </span>
                                </label>   
                            </div>
                        </div>
                         <!-- 유니트 체어 선 -->
                         <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">유니트 체어 선 설치 방법을 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_unitchair_electric_wire" value="landfill">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        매립
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_unitchair_electric_wire" value="Opening">
                                    <span class="remodeling_price_papering">
                                        개방
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_treatment_unitchair_electric_wire" value="nowire">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        모름
                                    </span>
                                </label>   
                            </div>
                        </div>
                    </div>
                    <!-- 소독실 -->
                    <div style="width: 80%;" class="mx-auto"  id="rpajcdisinfection">
                         <!-- 소독실 설명 부분 -->
                         <div class="mb-5">
                            <div style="display: flex; justify-content: space-between;">
                                <div style="display: inline-block; font-family: 'MinSans-Bold';">
                                    <h3>소독실 견적 계산</h3>
                                </div>
                                <div style="display: inline-block; font-family: 'MinSans-Medium';" >
                                    <button class="btn badge-light"><i class="fa-solid fa-rotate-left"></i>초기화</button>
                                </div>
                            </div>
                        </div>
                         <!-- 도배 -->
                         <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 벽지를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_disinfection_papering" value="silk">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        실크
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_disinfection_papering" value="paper">
                                    <span class="remodeling_price_papering">
                                        합지
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_disinfection_papering" value="silkpaper">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        실크&합지
                                    </span>
                                </label>   
                            </div>
                        </div>
                         <!-- 바닥 -->
                         <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 바닥 종류를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_pricedisinfection_flooring" value="veneer">
                                    <span style="border-radius: 10px 0 0 0;" class="remodeling_price_papering">
                                        장판
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_disinfection_flooring" value="reinforcedfloor">
                                    <span class="remodeling_price_papering">
                                        강화마루
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_disinfection_flooring" value="riverfloor">
                                    <span style="border-radius: 0 10px 0 0;" class="remodeling_price_papering">
                                        강마루
                                    </span>
                                </label>   
                            </div>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_disinfection_flooring" value="solidwoodfloor">
                                    <span style="border-radius: 0 0 0 10px;" class="remodeling_price_papering">
                                        원목마루
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_disinfection_flooring" value="porcelaintile">
                                    <span class="remodeling_price_papering">
                                        포세린타일
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbc">
                                    <input type="radio" name="remodeling_price_disinfection_flooring" value="naturalmarble">
                                    <span style="border-radius: 0 0 10px 0;" class="remodeling_price_papering">
                                        천연대리석
                                    </span>
                                </label>   
                            </div>
                        </div>
                         <!-- 조명 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">조명 교체 여부를 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_disinfection_light" value="allLight">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        전체 교체
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_disinfection_light" value="partLight">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        부분 교체
                                    </span>
                                </label>   
                            </div>
                        </div>
                         <!-- 중앙공급실 장비 현황 -->
                         <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">중앙공급실 장비 현황</p>
                            <div>
                                <div class="mb-3">
                                    <select class="form-control" style="font-family: 'MinSans-Light'; font-size: 20px; height: 50px; width: 100%;">
                                        <option value>초음파 세척기 개수</option>
                                        <option value="1">1개</option>
                                        <option value="2">2개</option>
                                        <option value="3">3개</option>
                                        <option value="4">4개</option>
                                        <option value="5">5개</option>
                                        <option value="6">6개</option>
                                        <option value="7">7개</option>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <select class="form-control" style="font-family: 'MinSans-Light'; font-size: 20px; height: 50px; width: 100%;">
                                        <option value>멸균기 개수</option>
                                        <option value="1">1개</option>
                                        <option value="2">2개</option>
                                        <option value="3">3개</option>
                                        <option value="4">4개</option>
                                        <option value="5">5개</option>
                                        <option value="6">6개</option>
                                        <option value="7">7개</option>
                                    </select>
                                </div>   
                                <div class="mb-3">
                                    <select class="form-control" style="font-family: 'MinSans-Light'; font-size: 20px; height: 50px; width: 100%;">
                                        <option value>그 외 장비 개수</option>
                                        <option value="1">1개</option>
                                        <option value="2">2개</option>
                                        <option value="3">3개</option>
                                        <option value="4">4개</option>
                                        <option value="5">5개</option>
                                        <option value="6">6개</option>
                                        <option value="7">7개</option>
                                    </select>
                                </div>      
                            </div>
                        </div>
                         <!-- 건조 방법 -->
                         <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">건조 방법을 선택해주세요</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_disinfection_dryer" value="towel">
                                    <span style="border-radius: 10px 0 0 0;" class="remodeling_price_papering">
                                        수건
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_disinfection_dryer" value="airgun">
                                    <span style="border-radius: 0 10px 0 0;" class="remodeling_price_papering">
                                        에어건
                                    </span>
                                </label>   
                            </div>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_disinfection_dryer" value="dryer">
                                    <span style="border-radius: 0 0 0 10px;" class="remodeling_price_papering">
                                        건조기
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_disinfection_dryer" value="another">
                                    <span style="border-radius: 0 0 10px 0;" class="remodeling_price_papering">
                                        그 외
                                    </span>
                                </label>   
                            </div>
                        </div>
                        <!-- 청결구역 바닥색 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">청결구역 바닥색을 선택해주세요</p>
                            <div>
                                <div style="display: flex;">
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_clean_color" value="black">
                                        <span class="mr-3" style="background-color: black;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_clean_color" value="white">
                                        <span class="mr-3"  style="background-color: white;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_clean_color" value="beige">
                                        <span class="mr-3" style="background-color: beige">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_clean_color" value="wheat">
                                        <span class="mr-3" style="background-color: wheat;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_clean_color" value="brown">
                                        <span class="mr-3" style="background-color: brown;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_clean_color" value="red">
                                        <span class="mr-3" style="background-color: red;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_clean_color" value="pink">
                                        <span class="mr-3" style="background-color: pink;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_clean_color" value="yellow">
                                        <span class="mr-3" style="background-color: yellow;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_clean_color" value="lightGreen">
                                        <span class="mr-3" style="background-color: darkseagreen;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_clean_color" value="lightblue">
                                        <span class="mr-3" style="background-color: lightblue;">
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <!-- 오염구역 바닥색 -->
                        <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">오염구역 바닥색을 선택해주세요</p>
                            <div>
                                <div style="display: flex;">
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_pollution_color" value="black">
                                        <span class="mr-3" style="background-color: black;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_pollution_color" value="white">
                                        <span class="mr-3"  style="background-color: white;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_pollution_color" value="beige">
                                        <span class="mr-3" style="background-color: beige">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_pollution_color" value="wheat">
                                        <span class="mr-3" style="background-color: wheat;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_pollution_color" value="brown">
                                        <span class="mr-3" style="background-color: brown;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_pollution_color" value="red">
                                        <span class="mr-3" style="background-color: red;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_pollution_color" value="pink">
                                        <span class="mr-3" style="background-color: pink;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_pollution_color" value="yellow">
                                        <span class="mr-3" style="background-color: yellow;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_pollution_color" value="lightGreen">
                                        <span class="mr-3" style="background-color: darkseagreen;">
                                        </span>
                                    </label>
                                    <label class="detail_interior_color_choie">
                                        <input type="radio" name="remodeling_price_disinfection_pollution_color" value="lightblue">
                                        <span class="mr-3" style="background-color: lightblue;">
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                         <!-- 청결구역, 오염구약 분리 -->
                         <div class="rp_maginunder">
                            <p style="font-family: 'MinSans-Bold'; font-size: 20px;">청결구역, 오염구약 분리</p>
                            <div style="display: flex;">
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="remodeling_price_disinfection_pollution_separation" value="yesseparation">
                                    <span style="border-radius: 10px 0 0 10px;" class="remodeling_price_papering">
                                        포함
                                    </span>
                                </label>
                                <label class="detail_consult_main_radio_btn_csswrap rpmrbctwo">
                                    <input type="radio" name="emodeling_price_disinfection_pollution_separation" value="noseparation">
                                    <span style="border-radius: 0 10px 10px 0;" class="remodeling_price_papering">
                                        미포함
                                    </span>
                                </label>   
                            </div>
                        </div>
                    </div> 
                </section>
            </article>
        </div>
        <div class="pt-3" style="text-align: center; width: 100%; height: 60px; background-color: #272723;background-color:rgba(0, 0, 0, 0.7);">
            <p style="color: white; font-family: 'MinSans-Medium'; font-size: 20px;" >모든 항목을 선택해주세요</p>
        </div>
         <script src="${pageContext.request.contextPath}/resources/js/interior_consult_js/remodeling_price.js"></script>
    </main>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>