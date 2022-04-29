<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 소독실 -->
<div style="width: 80%;" class="mx-auto">
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
     <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 벽지를 선택해주세요</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_papering" value="silk">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                    실크
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_papering" value="paper">
                <span class="waiting_papering">
                    합지
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_papering" value="silkpaper">
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
                <input type="radio" name="remodeling_pricedisinfection_flooring" value="veneer">
                <span style="border-radius: 10px 0 0 0;" class="waiting_flooring">
                    장판
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_flooring" value="reinforcedfloor">
                <span class="waiting_flooring">
                    강화마루
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_flooring" value="riverfloor">
                <span style="border-radius: 0 10px 0 0;" class="waiting_flooring">
                    강마루
                </span>
            </label>   
        </div>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_flooring" value="solidwoodfloor">
                <span style="border-radius: 0 0 0 10px;" class="waiting_flooring">
                    원목마루
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_flooring" value="porcelaintile">
                <span class="waiting_flooring">
                    포세린타일
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_flooring" value="naturalmarble">
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
                <input type="radio" name="remodeling_price_disinfection_light" value="allLight">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_light">
                    전체 교체
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_light" value="partLight">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_light">
                    부분 교체
                </span>
            </label>   
        </div>
    </div>
     <!-- 중앙공급실 장비 현황 -->
     <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">중앙공급실 장비 현황</p>
        <div>
            <div class="mb-3">
                <select class="form-control" style="font-family: 'MinSans-Light'; font-size: 20px; height: 50px; width: 90%;">
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
                <select class="form-control" style="font-family: 'MinSans-Light'; font-size: 20px; height: 50px; width: 90%;">
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
                <select class="form-control" style="font-family: 'MinSans-Light'; font-size: 20px; height: 50px; width: 90%;">
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
     <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">건조 방법을 선택해주세요</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_dryer" value="towel">
                <span style="border-radius: 10px 0 0 0;" class="waiting_furniture">
                    수건
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                <input type="radio" name="remodeling_price_disinfection_dryer" value="airgun">
                <span style="border-radius: 0 10px 0 0;" class="waiting_furniture">
                    에어건
                </span>
            </label>   
        </div>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_dryer" value="dryer">
                <span style="border-radius: 0 0 0 10px;" class="waiting_furniture">
                    건조기
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                <input type="radio" name="remodeling_price_disinfection_dryer" value="another">
                <span style="border-radius: 0 0 10px 0;" class="waiting_furniture">
                    그 외
                </span>
            </label>   
        </div>
    </div>
    <!-- 청결구역 바닥색 -->
    <div class="mb-5">
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
    <div class="mb-5">
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
     <div class="mb-5">
        <p style="font-family: 'MinSans-Bold'; font-size: 20px;">청결구역, 오염구약 분리</p>
        <div style="display: flex;">
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="remodeling_price_disinfection_pollution_separation" value="yesseparation">
                <span style="border-radius: 10px 0 0 10px;" class="waiting_light">
                    포함
                </span>
            </label>
            <label class="detail_consult_main_radio_btn_csswrap">
                <input type="radio" name="emodeling_price_disinfection_pollution_separation" value="noseparation">
                <span style="border-radius: 0 10px 10px 0;" class="waiting_light">
                    미포함
                </span>
            </label>   
        </div>
    </div>
</div>