<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 종합 -->
<div style="width: 80%;" class="mx-auto" >
    <!-- 종합 설명 부분 -->
    <div>
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
            <div style="width: 95%; padding: 30px 30px 10px 10px;" class="bg-light rounded mx-auto my-4">
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
    <div class="my-5">
        <div style=" font-family: 'MinSans-Bold'; font-size: 20px; padding-bottom: 20px; line-height: 120%;">
            원하는 시공을 모두 골라주세요.<br/>
            <span style="font-size: 15px; color:#272723;font-family: 'MinSans-Regular';">시공분야는 전문가와 조율 가능합니다.[ 리모델링 용 ]</span> 
        </div>
        <div>
            <!--시공정류-->
            <div style="display: flex;">
                <label class="remodeling_consult_Room">
                    <input type="checkbox" name="remodeling_total_price_room_choice" value="treatment">
                    <span style="border-top-left-radius: 10px;">
                        <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/treatmentRoom.png" width="100px">
                        </div>
                        진료실
                    </span>
                </label>
                <label class="remodeling_consult_Room">
                    <input type="checkbox" name="remodeling_total_price_room_choice" value="xray">
                    <span>
                        <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/xrayRoom.png" width="100px">
                        </div>
                        X-ray실
                    </span>
                </label>
                <label class="remodeling_consult_Room">
                    <input type="checkbox" name="remodeling_total_price_room_choice" value="owner">
                    <span style="border-top-right-radius: 10px;">
                        <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/direcotorRoom.png" width="100px">
                        </div>
                        원장실
                    </span>
                </label>
            </div>

            <div style="display: flex;">
                <label class="remodeling_consult_Room">
                    <input type="checkbox" name="remodeling_total_price_room_choice" value="consult">
                    <span style="border-bottom-left-radius: 10px;">
                        <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/consultinfRoom.png" width="100px">
                        </div>
                        상담실
                    </span>
                </label>
                <label class="remodeling_consult_Room">
                    <input type="checkbox" name="remodeling_total_price_room_choice" value="equipment">
                    <span >
                        <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/equipmentRoom.png" width="100px">
                        </div>
                        기계실
                    </span>
                </label>
                <label class="remodeling_consult_Room">
                    <input type="checkbox" name="remodeling_total_price_room_choice" value="bath">
                    <span style="border-bottom-right-radius: 10px;">
                        <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/restRoom.png" width="100px">
                        </div>
                        화장실
                    </span>
                </label>
            </div>
        </div>
    </div>
    <!-- 평수 정하기 -->
    <div class="my-4">
        <div style=" font-family: 'MinSans-Bold'; font-size: 20px; padding-bottom: 20px; line-height: 120%;">
            평수-공급면적<br/>
            <span style="font-size: 15px; color:#272723;font-family: 'MinSans-Regular';">대략적인 평수를 알려주세요</span> 
        </div>
        <div style="width: 100%;" class="px-auto">
            <div>
                <input type="range" class="form-control-range" style="width: 550px;">
            </div>
            <div style="justify-content: space-between; width: 90%; display:flex;">
                <div style="display: inline-block;">0평</div>
                <div style="display: inline-block;">100평</div>
            </div>
        </div>
    </div>
    <!-- 도배 -->
    <div class="my-4">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">도배</p>
        <div style="display: flex;" class="mx-auto">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_total_papering" value="silk">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                    실크
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_total_papering" value="paper">
                <span class="waiting_papering">
                    합지
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_total_papering" value="silkpaper">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_papering">
                    실크&합지
                </span>
            </label>   
        </div>
    </div>
    <!-- 바닥재 -->
    <div class="my-4">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">바닥재</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_total_flooring" value="veneer">
                <span style="border-radius: 10px 0 0 0;" class="waiting_flooring">
                    장판
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_total_flooring" value="reinforcedfloor">
                <span class="waiting_flooring">
                    강화마루
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_total_flooring" value="riverfloor">
                <span style="border-radius: 0 10px 0 0;" class="waiting_flooring">
                    강마루
                </span>
            </label>   
        </div>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_total_flooring" value="solidwoodfloor">
                <span style="border-radius: 0 0 0 10px;" class="waiting_flooring">
                    원목마루
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_total_flooring" value="porcelaintile">
                <span class="waiting_flooring">
                    포세린타일
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_total_flooring" value="naturalmarble">
                <span style="border-radius: 0 0 10px 0;" class="waiting_flooring">
                    천연대리석
                </span>
            </label>   
        </div>
    </div>
    <!-- 도어/문틀 -->
    <div class="my-4" >
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">도어/문틀</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_total_door" value="allDoor">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_light">
                    전체 교체
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_total_door" value="partDoor">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_light">
                    부분 교체
                </span>
            </label>   
        </div>
    </div>
    <!-- 전기/조명(다중선택 가능) -->
    <div class="mt-4" style="padding-bottom: 70px;" >
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">전기/조명(다중선택 가능)</p>
        <div style="display: flex;" class="mx-auto">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="checkbox" name="remodeling_price_total_papering" value="silk">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                    스위치&콘센트
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="checkbox" name="remodeling_price_total_papering" value="paper">
                <span class="waiting_papering">
                    전기배선
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="checkbox" name="remodeling_price_total_papering" value="silkpaper">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_papering">
                    조명
                </span>
            </label>   
        </div>
    </div>
</div>