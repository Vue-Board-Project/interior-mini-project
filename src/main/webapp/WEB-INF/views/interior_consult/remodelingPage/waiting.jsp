<%@ page contentType="text/html; charset=UTF-8"%> 
<!-- 대기실 -->
<div style="width: 80%;" class="mx-auto">
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
    <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 벽지를 선택해주세요</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_papering" value="silk">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                    실크
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_papering" value="paper">
                <span class="waiting_papering">
                    합지
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_papering" value="silkpaper">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_papering">
                    실크&합지
                </span>
            </label>   
        </div>
    </div>
    <!-- 바닥 -->
    <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 바닥 종류를 선택해주세요</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_flooring" value="veneer">
                <span style="border-radius: 10px 0 0 0;" class="waiting_flooring">
                    장판
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_flooring" value="reinforcedfloor">
                <span class="waiting_flooring">
                    강화마루
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_flooring" value="riverfloor">
                <span style="border-radius: 0 10px 0 0;" class="waiting_flooring">
                    강마루
                </span>
            </label>   
        </div>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_flooring" value="solidwoodfloor">
                <span style="border-radius: 0 0 0 10px;" class="waiting_flooring">
                    원목마루
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_flooring" value="porcelaintile">
                <span class="waiting_flooring">
                    포세린타일
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_flooring" value="naturalmarble">
                <span style="border-radius: 0 0 10px 0;" class="waiting_flooring">
                    천연대리석
                </span>
            </label>   
        </div>
    </div>
     <!-- 조명 -->
    <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">조명 교체 여부를 선택해주세요</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_light" value="allLight">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_light">
                    전체 교체
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_light" value="partLight">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_light">
                    부분 교체
                </span>
            </label>   
        </div>
    </div>
     <!-- 정수기 -->
    <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">정수기 여부를 선택해주세요</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_water" value="yesentrance">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                    있음
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                <input type="radio" name="remodeling_price_waiting_water" value="noentrance">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                    없음
                </span>
            </label>   
        </div>
    </div>
     <!-- 출입구 -->
    <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">출입구 리모델링 여부를 선택해주세요</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_entrance" value="yesentrance">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                    교체
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                <input type="radio" name="remodeling_price_waiting_entrance" value="noentrance">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                    교체 안함
                </span>
            </label>   
        </div>
    </div>
     <!-- 접수실 -->
    <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">접수실 변경 여부를 선택해주세요</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_reception" value="yesreception">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                    변경
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                <input type="radio" name="remodeling_price_waiting_reception" value="noreception">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                    변경 안함
                </span>
            </label>   
        </div>
    </div>
    <!-- 놀이방 -->
    <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">놀이방 선택 선택해주세요</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_playroom" value="yesplayroom">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                    있음
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                <input type="radio" name="remodeling_price_waiting_playroom" value="noplayroom">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                    없음
                </span>
            </label>   
        </div>
    </div>
    <!-- 가구 -->
    <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">가구 종류를 선택해주세요</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_waiting_furniture" value="sofa">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                    쇼파
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                <input type="radio" name="remodeling_price_waiting_furniture" value="chair">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                    의자
                </span>
            </label>   
        </div>
    </div>
</div>