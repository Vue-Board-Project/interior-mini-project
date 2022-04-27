<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quik.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quick_consultation.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/detail_consultation.css" rel="stylesheet" type="text/css"/> 
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quipment_buy_request_consult.css" rel="stylesheet" type="text/css" /> 
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/remodeling_price.css" rel="stylesheet" type="text/css"/>
<style>
    .consult_finish_pop-layer .consult_finish_pop-container {
        padding: 20px 25px;
      }
    
      .consult_finish_pop-layer .btn-r {
        width: 100%;
        margin: 10px 0 20px;
        padding-top: 10px;
        border-top: 1px solid #DDD;
        text-align: center;
      }
      .consult_finish_title{
        height: 200px; padding-top: 100px;
      }
      .consult_finish_pop-layer {
        display: none;
        position: absolute;
        top: 50%;
        left: 50%;
        width: 410px;
        height: auto;
        background-color: #fff;
        z-index: 10;
        border-radius: 5px;
      }
      
      .consult_finish_dim-layer {
        display: none;
        position: fixed;
        _position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 100;
      }
      
      .consult_finish_dim-layer .dimBg {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: #000;
        opacity: .5;
        filter: alpha(opacity=50);
      }
      
      .consult_finish_dim-layer .consult_finish_pop-layer {
        display: block;
      }
      
      a.btn-layerClose {
        display: inline-block;
        background-color: #272723;
        font-size: 15px;
        color: #fff;
      }
      
      a.btn-layerClose:hover {
        background-color: #ca5c0d;
        color: #fff;
      }
</style>
<main style="background-color: #faf9f6">
    <div class="consult_finish_dim-layer">
        <div class="dimBg"></div>
        <div id="consult_finish_btnss" class="consult_finish_pop-layer">
            <div class="consult_finish_pop-container">
                <!--content //-->
                <div class="text-center consult_finish_title">
                    <h5 style="color: black;">상담 신청이 완료되었습니다.</h5>
                </div>
                <div class="btn-r">
                    <a href="${pageContext.request.contextPath}/" class="btn-layerClose btn">Close</a>
                </div>
                <!--// content-->
            </div>
        </div>
    </div>
    <script>

        function quick_consult_finish_btn(el){
            var $el = $(el);    //레이어의 id를 $el 변수에 저장
            $('.consult_finish_dim-layer').fadeIn();
    
            var $elWidth = ~~($el.outerWidth()),
                $elHeight = ~~($el.outerHeight()),
                docWidth = $(document).width(),
                docHeight = $(document).height();
    
            // 화면의 중앙에 레이어를 띄운다.
            if ($elHeight < docHeight || $elWidth < docWidth) {
                $el.css({
                    marginTop: -$elHeight /2,
                    marginLeft: -$elWidth/2
                })
            } else {
                $el.css({top: 0, left: 0});
            }
    
            $('.layer .dimBg').click(function(){
                $('.consult_finish_dim-layer').fadeOut();
                return false;
            });
    
        } 
    </script>
	
        <div class="container">
            <article  class="mx-auto" style="width: 100%; background-color: #faf9f6; padding: 100px 0 200px 0;">
                <div class="bg-white rounded" style="width: 100%;">
                    <div style="display: flex;">
                        <!-- 어사이드바와 상세 선택 묶음 부분 -->
                        <section style="display: inline-block; width: 65%; box-sizing:content-box;">
                            <div style="display: flex;">
                                <!-- 어사이드바 부분 -->
                                <div style="display: inline-block; width: 15%;">
                                    <div style="width: 100%;" class="text-right">
                                        <ul class="detail_consult_aside_ul">
                                            <li><button class="btn detail_consult_aside_jsonci_class" value="all" onclick="js:detail_consult_aside_btn('all')">종합</button></li>
                                            <li><button class="btn detail_consult_aside_jsonci_class" value="waiting" onclick="js:detail_consult_aside_btn('waiting')">대기실</button></li>
                                            <li><button class="btn detail_consult_aside_jsonci_class"  value="treatment" onclick="js:detail_consult_aside_btn('treatment')">진료실</button></li>
                                            <li><button class="btn detail_consult_aside_jsonci_class" value="disinfection" onclick="js:detail_consult_aside_btn('disinfection')">소독실</button></li>
                                            <li><button class="btn detail_consult_aside_jsonci_class" value="machine" onclick="js:detail_consult_aside_btn('machine')">기계실</button></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- 상세 선택 부분 -->
                                <div style="display: inline-block; width: 85%;">
                                    <!-- 내부 사항 어사이드 바에 따라 변경됨 -->
                                    <div class="mx-auto mt-5 mb-5" style="width: 90%;" id="dcajcall">
                                        <div class="mb-4">
                                            <div style=" font-family: 'MinSans-Bold'; font-size: 25px; padding-bottom: 20px; line-height: 120%;">
                                                원하는 시공을 모두 골라주세요.<br/>
                                                <span style="font-size: 15px; color:#272723;font-family: 'MinSans-Regular';">시공분야는 전문가와 조율 가능합니다.[ 리모델링 용 ]</span> 
                                            </div>
                                            <div>
                                                <div>
                                                    <div style="display: flex;">
                                                        <label class="remodeling_consult_Room">
                                                            <input type="checkbox" name="fruit" value="apple">
                                                            <span style="border-top-left-radius: 10px;">
                                                                <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                                                                    <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/treatmentRoom.png" width="100px">
                                                                </div>
                                                                진료실
                                                            </span>
                                                        </label>
                                                        <label class="remodeling_consult_Room">
                                                            <input type="checkbox" name="fruit" value="apple">
                                                            <span>
                                                                <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                                                                    <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/xrayRoom.png" width="100px">
                                                                </div>
                                                                X-ray실
                                                            </span>
                                                        </label>
                                                        <label class="remodeling_consult_Room">
                                                            <input type="checkbox" name="fruit" value="apple">
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
                                                            <input type="checkbox" name="fruit" value="apple">
                                                            <span style="border-bottom-left-radius: 10px;">
                                                                <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                                                                    <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/consultinfRoom.png" width="100px">
                                                                </div>
                                                                상담실
                                                            </span>
                                                        </label>
                                                        <label class="remodeling_consult_Room">
                                                            <input type="checkbox" name="fruit" value="apple">
                                                            <span >
                                                                <div class="mx-auto bg-white mt-3" style="width: 120px; height: 100px;">
                                                                    <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/equipmentRoom.png" width="100px">
                                                                </div>
                                                                기계실
                                                            </span>
                                                        </label>
                                                        <label class="remodeling_consult_Room">
                                                            <input type="checkbox" name="fruit" value="apple">
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
                                        <div>
                                            <div>
                                                <p style="font-family: 'MinSans-Medium';">전체톤</p>
                                                <div>
                                                    <div style="display: flex;">
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="black">
                                                            <span class="mr-2" style="background-color: black;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="white">
                                                            <span class="mr-2"  style="background-color: white;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="beige">
                                                            <span class="mr-2" style="background-color: beige">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="wheat">
                                                            <span class="mr-2" style="background-color: wheat;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="brown">
                                                            <span class="mr-2" style="background-color: brown;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="red">
                                                            <span class="mr-2" style="background-color: red;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="pink">
                                                            <span class="mr-2" style="background-color: pink;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="yellow">
                                                            <span class="mr-2" style="background-color: yellow;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="lightGreen">
                                                            <span class="mr-2" style="background-color: darkseagreen;">
                                                            </span>
                                                        </label>
                                                        <label class="detail_interior_color_choie">
                                                            <input type="radio" name="allRoomTone" value="lightblue">
                                                            <span class="mr-2" style="background-color: lightblue;">
                                                            </span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <p style="font-family: 'MinSans-Medium';">벽 바닥 컬러</p>
                                                <div style="font-family: 'MinSans-Regular';">
                                                    <p>벽</p>
                                                    <div>
                                                        <div style="display: flex;">
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="black">
                                                                <span class="mr-2" style="background-color: black;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="white">
                                                                <span class="mr-2"  style="background-color: white;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="beige">
                                                                <span class="mr-2" style="background-color: beige">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="wheat">
                                                                <span class="mr-2" style="background-color: wheat;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="brown">
                                                                <span class="mr-2" style="background-color: brown;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="red">
                                                                <span class="mr-2" style="background-color: red;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="pink">
                                                                <span class="mr-2" style="background-color: pink;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="yellow">
                                                                <span class="mr-2" style="background-color: yellow;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="lightGreen">
                                                                <span class="mr-2" style="background-color: darkseagreen;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="wallpaperTone" value="lightblue">
                                                                <span class="mr-2" style="background-color: lightblue;">
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <p>바닥</p>
                                                    <div>
                                                        <div style="display: flex;">
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="black">
                                                                <span class="mr-2" style="background-color: black;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="white">
                                                                <span class="mr-2"  style="background-color: white;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="beige">
                                                                <span class="mr-2" style="background-color: beige">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="wheat">
                                                                <span class="mr-2" style="background-color: wheat;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="brown">
                                                                <span class="mr-2" style="background-color: brown;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="red">
                                                                <span class="mr-2" style="background-color: red;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="pink">
                                                                <span class="mr-2" style="background-color: pink;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="yellow">
                                                                <span class="mr-2" style="background-color: yellow;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="lightGreen">
                                                                <span class="mr-2" style="background-color: darkseagreen;">
                                                                </span>
                                                            </label>
                                                            <label class="detail_interior_color_choie">
                                                                <input type="radio" name="floorTone" value="lightblue">
                                                                <span class="mr-2" style="background-color: lightblue;">
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mx-auto mt-5 mb-5" style="width: 90%;" id="dcajcwaiting">
                                        <div class="mb-5">
                                            <p class="wating_choice_title">도배</p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_papering" value="silk">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                                                        실크
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_papering" value="paper">
                                                    <span class="waiting_papering">
                                                        합지
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_papering" value="silkpaper">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_papering">
                                                        실크&합지
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">바닥</p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="veneer">
                                                    <span style="border-radius: 10px 0 0 0;" class="waiting_flooring">
                                                        장판
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="reinforcedfloor">
                                                    <span class="waiting_flooring">
                                                        강화마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="riverfloor">
                                                    <span style="border-radius: 0 10px 0 0;" class="waiting_flooring">
                                                        강마루
                                                    </span>
                                                </label>   
                                            </div>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="solidwoodfloor">
                                                    <span style="border-radius: 0 0 0 10px;" class="waiting_flooring">
                                                        원목마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="porcelaintile">
                                                    <span class="waiting_flooring">
                                                        포세린타일
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_flooring" value="naturalmarble">
                                                    <span style="border-radius: 0 0 10px 0;" class="waiting_flooring">
                                                        천연대리석
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">조명</p>
                                            <div style="display: flex;">
                                                <label class="remodeling_light">
                                                    <input type="radio" name="watingLight" value="실링라이트">
                                                    <span style="border-radius: 10px 0 0 10px;">
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 220px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/sling.jpg" width="220px" height="120px">
                                                        </div>
                                                        실링라이트
                                                    </span>
                                                </label>
                                                <label class="remodeling_light">
                                                    <input type="radio" name="watingLight" value="다운라이트">
                                                    <span style="border-radius: 0 10px 10px 0;">
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 220px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/down.jpg" width="220px" height="120px">
                                                        </div>
                                                        다운라이트
                                                    </span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">가구</p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="waiting_furniture" value="sofa">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                                                        쇼파
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="waiting_furniture" value="chair">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                                                        의자
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mx-auto mt-5 mb-5" style="width: 90%;" id="dcajctreatment">
                                        <div class="mb-5">
                                            <p class="wating_choice_title">도배</p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_papering" value="silk">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                                                        실크
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_papering" value="paper">
                                                    <span class="waiting_papering">
                                                        합지
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_papering" value="silkpaper">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_papering">
                                                        실크&합지
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">바닥</p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="veneer">
                                                    <span style="border-radius: 10px 0 0 0;" class="waiting_flooring">
                                                        장판
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="reinforcedfloor">
                                                    <span class="waiting_flooring">
                                                        강화마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="riverfloor">
                                                    <span style="border-radius: 0 10px 0 0;" class="waiting_flooring">
                                                        강마루
                                                    </span>
                                                </label>   
                                            </div>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="solidwoodfloor">
                                                    <span style="border-radius: 0 0 0 10px;" class="waiting_flooring">
                                                        원목마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="porcelaintile">
                                                    <span class="waiting_flooring">
                                                        포세린타일
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_flooring" value="naturalmarble">
                                                    <span style="border-radius: 0 0 10px 0;" class="waiting_flooring">
                                                        천연대리석
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">조명</p>
                                            <div style="display: flex;">
                                                <label class="remodeling_light">
                                                    <input type="radio" name="watingLight" value="실링라이트">
                                                    <span style="border-radius: 10px 0 0 10px;">
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 220px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/sling.jpg" width="220px" height="120px">
                                                        </div>
                                                        실링라이트
                                                    </span>
                                                </label>
                                                <label class="remodeling_light">
                                                    <input type="radio" name="watingLight" value="다운라이트">
                                                    <span style="border-radius: 0 10px 10px 0;">
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 220px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/down.jpg" width="220px" height="120px">
                                                        </div>
                                                        다운라이트
                                                    </span>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">구조</p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_structure" value="Open">
                                                    <span style="border-radius: 10px 0 0 0;" class="waiting_furniture">
                                                        개방형
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="treatment_structure" value="semiopenroom">
                                                    <span style="border-radius: 0 10px 0 0;" class="waiting_furniture">
                                                        반개실형
                                                    </span>
                                                </label>   
                                            </div>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="treatment_structure" value="open type">
                                                    <span style="border-radius: 0 0 0 10px;" class="waiting_furniture">
                                                        개실형
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="treatment_structure" value="mixed">
                                                    <span style="border-radius: 0 0 10px 0;" class="waiting_furniture">
                                                        혼용형
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">유니트 체어 개수</p>
                                            <div>
                                                <input type="text" style="border: none; border-bottom: 2px solid #272723; outline:none" placeholder="입력">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mx-auto mt-5 mb-5" style="width: 90%;" id="dcajcdisinfection">
                                        <div class="mb-5">
                                            <p class="wating_choice_title">창고 분리 여부</p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="disinfection_warehouse_sq" value="Open">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                                                        분리형
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="disinfection_warehouse_sq" value="wseparation">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                                                        통합형
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">수도 설치 유무</p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="disinfection_capital" value="capitalyes">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                                                        설치
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="disinfection_capital" value="capitalno">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                                                        미설치
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div>
                                            <p class="wating_choice_title">멸균기, 세척기 개수</p>
                                            <div>
                                                <input type="text" style="border: none; border-bottom: 2px solid #272723; outline:none" placeholder="입력">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mx-auto mt-5 mb-5" style="width: 90%;" id="dcajcmachine">
                                        <div class="mb-5">
                                            <p class="wating_choice_title">도배</p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_papering" value="silk">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                                                        실크
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_papering" value="paper">
                                                    <span class="waiting_papering">
                                                        합지
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_papering" value="silkpaper">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_papering">
                                                        실크&합지
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">바닥</p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="veneer">
                                                    <span style="border-radius: 10px 0 0 0;" class="waiting_flooring">
                                                        장판
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="reinforcedfloor">
                                                    <span class="waiting_flooring">
                                                        강화마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="riverfloor">
                                                    <span style="border-radius: 0 10px 0 0;" class="waiting_flooring">
                                                        강마루
                                                    </span>
                                                </label>   
                                            </div>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="solidwoodfloor">
                                                    <span style="border-radius: 0 0 0 10px;" class="waiting_flooring">
                                                        원목마루
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="porcelaintile">
                                                    <span class="waiting_flooring">
                                                        포세린타일
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_flooring" value="naturalmarble">
                                                    <span style="border-radius: 0 0 10px 0;" class="waiting_flooring">
                                                        천연대리석
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">조명</p>
                                            <div style="display: flex;">
                                                <label class="remodeling_light">
                                                    <input type="radio" name="watingLight" value="실링라이트">
                                                    <span style="border-radius: 10px 0 0 10px;">
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 220px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/sling.jpg" width="220px" height="120px"/>
                                                        </div>
                                                        실링라이트
                                                    </span>
                                                </label>
                                                <label class="remodeling_light">
                                                    <input type="radio" name="watingLight" value="다운라이트">
                                                    <span style="border-radius: 0 10px 10px 0;">
                                                        <div class="mx-auto bg-white mt-2 mb-1" style="height: 120px; width: 220px;">
                                                            <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/down.jpg" width="220px" height="120px"/>
                                                        </div>
                                                        다운라이트
                                                    </span>
                                                </label>
                                            </div>
                                        </div>
                                        <div>
                                            <p>기계실 필요 장비</p>
                                            <div>
                                                <textarea cols="70" rows="5" class="p-2" placeholder="필요한 장비를 입력하면 상담 가격에 참고하겠습니다[가격 반영 x]"></textarea>
                                            </div>
                                        </div>
                                        <div class="mb-5">
                                            <p class="wating_choice_title">수도 설치 유무</p>
                                            <div style="display: flex;">
                                                <label class="detail_consult_main_radio_btn_csswrap">
                                                    <input type="radio" name="machine_capital" value="capitalyes">
                                                    <span style="border-radius: 10px 0 0 10px;" class="waiting_furniture">
                                                        설치
                                                    </span>
                                                </label>
                                                <label class="detail_consult_main_radio_btn_csswrap waiting_light">
                                                    <input type="radio" name="machine_capital" value="capitalno">
                                                    <span style="border-radius: 0 10px 10px 0;" class="waiting_furniture">
                                                        미설치
                                                    </span>
                                                </label>   
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- 견적 확인 부분 -->
                        <section style="display: inline-block; width: 35%;">
                            <div style="width: 90%;" class="mx-auto mt-5">
                                <div style="width: 100%; text-align: right;" class="mb-3">
                                    <button class="btn btn-light">초기화</button>
                                </div>
                                <div class="bg-dark mb-5 rounded text-white" style="width: 100%; height: 150px;">
                                    <div style="width: 100%; height: 50%;" class="p-4">
                                        견적 계산 기준이 뭔가요 <button class="btn pt-0"><i class="fa-solid fa-circle-info text-white"></i></button>  
                                    </div>
                                    <div style="width: 100%; height: 50%; font-size: 25px;" class="text-right p-3">
                                       2,000&nbsp;&nbsp; ~&nbsp;&nbsp; 3,000 <span style="font-size: 30px;font-family: 'MinSans-Bold';">만원</span>
                                    </div>
                                </div>
                                <div style="width: 90%;" class="mx-auto text-center" >
                                    <button class="btn mr-3 add_detail_consult_start_btn" style="width: 30%; height: 50px;">이전</button>
                                    <button class="btn quick_consult_finish_btn" onclick="js:quick_consult_finish_btn('#consult_finish_btnss')" style="width: 60%; height: 50px;">상담신청</button>
                                </div>    
                            </div>
                           
                        </section>
                    </div>
                </div>
            </article>
        </div>
         <script src="${pageContext.request.contextPath}/resources/js/interior_consult_js/detail_consultation.js"></script>
    </main>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
    
   
