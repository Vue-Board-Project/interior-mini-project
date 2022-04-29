<%@ page contentType="text/html; charset=UTF-8"%>                    
<!-- 도배 -->
<div style="width: 80%;" class="mx-auto"  >
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
    <div class="my-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 벽지를 선택해주세요</p>
        <div style="display: flex;" class="mx-auto">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_only_papering" value="silk">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                    실크
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_only_papering" value="paper">
                <span class="waiting_papering">
                    합지
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_only_papering" value="silkpaper">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_papering">
                    실크&합지
                </span>
            </label>  
        </div> 
    </div>
     <!-- 브랜드 -->
     <div class="my-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">벽지 브랜드는 어떤걸 선호하시나요?</p>
        <div style="display: flex;" class="mx-auto">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_only_papering_brand" value="nobrand">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                    브랜드
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_only_papering_brand" value="onlybrand">
                <span class="waiting_papering">
                    비브랜드
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_only_papering_brand" value="free">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_papering">
                    무관
                </span>
            </label>  
        </div> 
    </div>
    <!-- 규모 -->
    <div class="my-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 공간 규모가 어떻게 되나요?</p>
        <div style="display: flex;" class="mb-4">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_only_papering_celling" value="incluedceling">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_light">
                    천장포함
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_only_papering_celling" value="nonincludeceling">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_light">
                    천장미포함
                </span>
            </label>   
        </div>
        <div style="width: 100%;" class="px-auto mb-4">
            <div>
                <input type="range" class="form-control-range" style="width: 550px;">
            </div>
            <div style="justify-content: space-between; width: 90%; display:flex;">
                <div style="display: inline-block;">0평</div>
                <div style="display: inline-block;">100평</div>
            </div>
        </div>
        <div>
            <div style="display: flex;">
                <label class="remodeling_consult_Room">
                    <input type="checkbox" name="remodeling_price_only_papering_celling_room_choice" value="treatment">
                    <span style="border-top-left-radius: 10px;">
                        <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/treatmentRoom.png" width="100px">
                        </div>
                        진료실
                    </span>
                </label>
                <label class="remodeling_consult_Room">
                    <input type="checkbox" name="remodeling_price_only_papering_celling_room_choice" value="xray">
                    <span>
                        <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/xrayRoom.png" width="100px">
                        </div>
                        X-ray실
                    </span>
                </label>
                <label class="remodeling_consult_Room">
                    <input type="checkbox" name="remodeling_price_only_papering_celling_room_choice" value="owner">
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
                    <input type="checkbox" name="rremodeling_price_only_papering_celling_room_choice" value="consult">
                    <span style="border-bottom-left-radius: 10px;">
                        <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/consultinfRoom.png" width="100px">
                        </div>
                        상담실
                    </span>
                </label>
                <label class="remodeling_consult_Room">
                    <input type="checkbox" name="remodeling_price_only_papering_celling_room_choice" value="equipment">
                    <span >
                        <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/equipmentRoom.png" width="100px">
                        </div>
                        기계실
                    </span>
                </label>
                <label class="remodeling_consult_Room">
                    <input type="checkbox" name="remodeling_price_only_papering_celling_room_choice" value="bath">
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
</div>