<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

        

<div id="as_content">
<link href="${pageContext.request.contextPath}/resources/css/equipment/afterService.css" rel="stylesheet" type="text/css"/>
    <div id="as_product_choice">
        <p id="as_title1" class="as_title">1. 제품/증상 선택 <button id="btn_my_product" class="btn btn-outline-dark" type="submit">보유 제품 선택</button> 
            <a id="red_star"> *</a> <a id="as_title1_content1"> 필수 입력 사항</a>
        </p>
        <hr id="pxup_line"/>
        <p>제품 선택<a id="red_star"> *</a> <span class="as_font_color_ccc">아래 제품을 선택해주세요</span></p>
        <hr/>
        <p>모델명 <input id="as_model_input" type="text" value="모델명을 입력해주세요." onFocus="clearText(this)"/><a style="border: 1px solid black; border-radius: 15px;" class="btn btn-light">모델명 확인 방법</a></p>
        <ul class="as_title1_content2">
            <li>모델명(코드)를 입력하시면 정확한 수리에 도움이 됩니다.(3자리 이상 입력)</li>
            <li>모델명(코드)가 정확하지 않은 경우 제품을 선택 후 예약을 진행해 주세요.</li>
        </ul>
        <div id="as_btn_list" class="d-flex text-center">
            <div id="as_choice_chair" class="as_btn_list_el">
                <a href="#" class="as_btn_list_text_el_a">
                    <img id="btn_aschair_image" class="as_btn_list_image" src="${pageContext.request.contextPath}/resources/subinimage/dentist-chair.png">
                    <p class="as_btn_list_text_el">유니트체어</p>
                </a>

            </div>  
            <div id="as_choice_video_eq" class="as_btn_list_el" >
                <a href="#" class="as_btn_list_text_el_a">
                    <img id="btn_asvideo_image" class="as_btn_list_image" src="${pageContext.request.contextPath}/resources/subinimage/ct-scan-image.png">    
                    <p class="as_btn_list_text_el">영상 촬영 장비</p>
                </a>
            </div>
            <div id="as_choice_crown" class="as_btn_list_el" >
                <a href="#" class="as_btn_list_text_el_a">
                    <img id="btn_ascrown_image" class="as_btn_list_image" src="${pageContext.request.contextPath}/resources/subinimage/as_crown.png">    
                    <p class="as_btn_list_text_el">임플란트 장비</p>
                </a>
            </div>
            <div id="as_choice_crown" >
                <a href="#" class="as_btn_list_text_el_a">
                    <img id="btn_asSterilizationwasher_image" class="as_btn_list_image" src="${pageContext.request.contextPath}/resources/subinimage/as_Sterilization_washer.png">    
                    <p class="as_btn_list_text_el">멸균 및 세척기</p>
                </a>
            </div>
            <!-- <div id="as_btn_list_text">
                <a href="#" class="as_btn_list_text_el">유니트체어</a>
                <a href="#" class="as_btn_list_text_el">영상 촬영 장비</a>
                <a href="#" class="as_btn_list_text_el">임플란트 장비</a>
                <a href="#" style="border: none; outline: none; color: black; text-decoration: none;">멸균 및 세척기</a>
            </div> -->
            <hr>
            
        </div>
            <div id="as_detail" class="d-flex">
                <p style="width: 183px;">상세 증상<span id="red_star">*</span></p>
                <input id="as_detail_input" type="text" value="고장 증상 상세 내용만 입력해주세요." onFocus="clearText(this)"/>
            </div>
            <p class="mt-3">첨부파일 <input id="as_photo_input" type="text" value="고장 증상 이미지 파일을 첨부해 주시면 제품 수리에 도움이 됩니다." onFocus="clearText(this)"/><a style="border: 1px solid black; border-radius: 15px;" class="btn btn-light">파일 선택</a></p>
            <p><li class="as_detail_content">첨부 파일은 jpg, jpeg, png 형식만 가능합니다.</li></p>
            <p>구입년월<a id="red_star"> *</a>
                <input type="date" class="underline"/>
                <!-- <input id="buy_year_input" class="underline" value="선택"/> 년
                <input id="buy_month_input" class="underline" value="선택"/> 월 -->
                <label id="text_whenyoudontknow">모름 <input id="checkwhenyoudontknow" type='checkbox' onclick='is_checked()'></label>
            </p>
    </div>     
    <div id="as_info_input">
        <p class="as_title">
            2. 고객 정보<a id="red_star"> *</a> <a id="as_title1_content1"> 필수 입력 사항</a>
        </p>
        <hr id="pxup_line"/>
        <p><input id="checked_same_user" name="info" type="radio" checked="checked" onchange="setDisplay()">　회원 정보와 동일
            <input id="checked_user_update" name="info" type="radio" onchange="setDisplay()">　회원정보 수정<a style="font-size: 12pt;">(개인정보 보호를 위해 본인 정보로만 예약 가능)</a>
        </p>
        <hr/>
        <div id="checked_same_user_info">
            <!--회원 정보와 동일 버튼 눌렀을 경우 출력될 정보-->
            <div class="left">
                <p>성명: </p>
                <p>전화번호: </p>
                <p>주소:</p>
            </div>
            <div class="right">
                <p>홍수빈</p>
                <p>010-1234-5678</p>
                <p>서울특별시 송파구 우리집 가고싶동</p>
            </div>
        </div>
        <div class="d-flex flex-column">
            <div id="checked_user_update_info">
                <!--회원정보 수정 버튼 눌렀을 경우 출력될 정보-->
                <div class="left">
                    <div class="mb-3"><span style="margin-right: 135px;">성명</span><input type="text"/></div>
                    <div class="mb-3"><span style="margin-right: 117px;">이메일</span><input type="text"/></div>
                    <div class="mb-3"><span style="margin-right: 99px;">전화번호</span><input type="text"/></div>
                    <div class="mb-3"><span style="margin-right: 40px;">전화번호 재확인</span><input type="text"/></div>
                    <div class="mb-3">
                        <span style="margin-right: 130px;">주소</span>
                        <input class="checked_user_update_info_adr" id="member_post"  type="text" placeholder="우편번호" readonly onclick="findAddr()"/>
                        <input class="checked_user_update_info_adr" id="member_addr" type="text" placeholder="도로명 주소" readonly/> <br>
                        <input class="checked_user_update_info_adr mt-2" style="margin-left: 170px;" type="text" placeholder="상세 주소"/>
                    </div>
                    <script>
                        function findAddr(){
                            new daum.Postcode({
                                oncomplete: function(data) {
                                    
                                    console.log(data);
                                    
                                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                                    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                                    var jibunAddr = data.jibunAddress; // 지번 주소 변수
                                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                    document.getElementById('member_post').value = data.zonecode;
                                    if(roadAddr !== ''){
                                        document.getElementById("member_addr").value = roadAddr;
                                    } 
                                    else if(jibunAddr !== ''){
                                        document.getElementById("member_addr").value = jibunAddr;
                                    }
                                }
                            }).open();
                        }
                    </script>
                </div>
                <!-- <div class="right">
                    <p><input type="text"/></p>
                    <p><input type="text"/></p>
                    <p><input type="text"/></p>
                    <p><input type="text"/></p>
                    <p><input type="text"/>daum 주소 설정 api 추가해보자고~</p>
                </div> -->
                
            </div>
            <div id="before_verify_as">
                <ul>
                    <p>* AS 접수 전 꼭 확인해주세요</p>
                    <hr>
                    <li>엔지니어가 마스크 착용하고 방문하오니 서로의 안전을 위해서 고객님께서도 마스크 착용 부탁드립니다.</li>
                    <li>도서 산간 지역 예약 건은 지역 간 이동거리로 인하여 방문 일정이 변경될 수 있습니다.</li>
                    <li>일부 도서지역의 경우 관련 법령에 따라 서비스가 제한 되거나 비용이 추가될 수 있습니다.</li>
                    <li>무상 A/S 기간이 경과하였을 경우 비용이 발생할 수 있습니다.</li>
                    <li>발생하는 비용은 엔지니어가 확인 후 정확한 안내가 가능합니다.</li>
                </ul>     
            </div>
        </div>
        <hr/>
        <p><a id="btn_select_reservation_date" class="btn btn-light">예약 가능일 조회</a></p> 
    </div> 
    
    <!--예약 가능일 조회하기 버튼을 눌러야 해당 div가 보이도록-->
    <div id="as_reservation_date_ch">
        <p class="as_title">3. 예약 일/시간 선택 <a id="red_star"> *</a> <a id="as_title1_content1"> 필수 입력 사항</a></p>
        <hr id="pxup_line"/>
        <p>예약 일시 <a id="red_star"> *</a><span class="as_font_color_ccc">예약 일과 시간을 선택해주세요</span></p>
        <hr/>
        <p id="as_reservation_date_ch_left_content">예약일　</p>
        <div id="check_as_date">
            <p>4월</p>
            <hr>
            <input type="radio" id="option1" name="date" value="as_month1" checked="checked">
            <label for="option1">25일</label>
            <input type="radio" id="option2" name="date" value="as_month2">
            <label for="option2" >26일</label>
            <input type="radio" id="option3" name="date" value="as_month3">
            <label for="option3">27일</label>
            <input type="radio" id="option4" name="date" value="as_month4">
            <label for="option4">28일</label>
            <input type="radio" id="option5" name="date" value="as_month5">
            <label for="option5">29일</label>

            <p style="margin-top: 20px;">5월</p>
            <hr>
            <input type="radio" id="option6" name="date" value="as_month6">
            <label for="option6">1일</label>
            <input type="radio" id="option7" name="date" value="as_month7">
            <label for="option7">2일</label>
            <input type="radio" id="option8" name="date" value="as_month8">
            <label for="option8">3일</label>
            <input type="radio" id="option9" name="date" value="as_month9">
            <label for="option9">4일</label>
            <input type="radio" id="option10" name="date" value="as_month10">
            <label for="option10">5일</label>


        </div>
        <ul id="as_reservation_date_ch_right_content" class="as_font_color_ccc" style="margin-left: 160px; margin-bottom: 40px;">
            <li>금일 기준으로 주말을 제외한 2주 내 선택 가능한 일만 표시됩니다</li>
            <li>예약 가능한 시간만 표시됩니다.</li>
            <li>전국 실시간 접수 시스템으로 예약 가능한 일시에 서비스 예약이 어려울 수 있습니다.</li>
        </ul>

        <!--시간 없어서 일단 복붙 했어용 ㅠㅠ.. 여유 생기는대로 바꾸기-->
        <p id="as_reservation_date_ch_left_content">예약시간</p>
        <div id="check_as_time">
            <p>오전</p>
                <input type="radio" id="am_time1" name="time" value="am_time1" checked="checked">
                <label for="am_time1">09:00</label>
                <input type="radio" id="am_time2" name="time" value="am_time2">
                <label for="am_time2" >10:00</label>
                <input type="radio" id="am_time3" name="time" value="am_time3">
                <label for="am_time3">11:00</label>
               
            <hr>
            <p>오후</p>
            <input type="radio" id="pm_time1" name="time" value="pm_time1">
            <label for="pm_time1">12:00</label>
            <input type="radio" id="pm_time2" name="time" value="pm_time2">
            <label for="pm_time2">13:00</label>
            <input type="radio" id="pm_time3" name="time" value="pm_time3">
            <label for="pm_time3">14:00</label>
            <input type="radio" id="pm_time4" name="time" value="pm_time4">
            <label for="pm_time4">15:00</label>
            <input type="radio" id="pm_time5" name="time" value="pm_time5">
            <label for="pm_time5">16:00</label>
            <input type="radio" id="pm_time6" name="time" value="pm_time6">
            <label for="pm_time6">17:00</label>

            <hr>
        </div>
        <!--예약 취소(버튼 누르면 메인으로 이동), 예약 신청 버튼(누르면 정보를 다시 확인해주는 팝업 띄우기-팝업 확인 누르면 as 접수 서비스 상세 보기 창)-->
        <div id="as_reservation_final_button">
            <a href="#" id="btn_reservation_input_cancellation" style="box-shadow: none;" class="btn btn-light">예약 취소</a>
            <form action='login_page.php'>
                <input href="#reservation_check_layer" id="btn_reservation_input_final" style="box-shadow: none;" type='button' 
                       value='예약 신청' class="btn btn-light"
                       onclick='alert("예약 정보 확인하는 팝업 창입니당, 레이어 팝업으로 바꿀거야")'/>
            </form>           
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/resources/js/equipment/afterService.js"></script>
</div>
        
<%@ include file="/WEB-INF/views/common/footer.jsp" %>