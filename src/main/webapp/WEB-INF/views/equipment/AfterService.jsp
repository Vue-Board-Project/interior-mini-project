<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/equipment/afterService.css" rel="stylesheet" type="text/css"/>

<div id="AfterService_wrapper">
<form id="ReservationAS" action="ReservationAS" method="post">
        <div id="as_content">
        
            <div id="as_product_choice">
                <div id="as_title1" class="as_title">1. 제품/증상 선택 <button id="btn_my_product" class="btn btn-outline-dark" onclick="javascript:openPop()">보유 제품 선택</button> 
                    <a id="red_star"> *</a> <a id="as_title1_content1"> 필수 입력 사항</a>
                </div>
                <hr id="pxup_line"/>
                <div>제품 선택<a id="red_star"> *</a> <span class="as_font_color_ccc">아래 제품을 선택해주세요</span></div>
                <hr/>
                <div>모델명 
                	<input id="as_model_input" type="text" name="modelNum" value="모델명을 입력해주세요." onFocus="clearText(this)"/>
                    <a id="howToVerifyModel" style="border: 1px solid black; border-radius: 15px;" class="btn btn-light">모델명 확인 방법
                        <span>모델명은 제품에 부착되어 있는 에너지 효율 등급표 스티커에서 확인할 수 있습니다.</span></a>
                </div>
                <div id="myModelCheck" style="margin-top: 50px;">
                    <label>보유 제품 확인하기</label>
                    <c:choose>
                        <c:when test="${empty modelList}">
                            <option>선택하실 수 있는 제품이 없습니다.</option>
                        </c:when>
                        <c:otherwise>
                            <select name="myModelSelect">
                                <option>서비스를 원하는 제품을 선택해주세요</option>
                                <c:forEach items="${modelList}" var="model">
                                    <option onclick="selectModelInfo('${model.modelNumber}', '${productDto.productName}', '${purchaseDto.inputPurchaseDate}')" 
                                    id="selectModel">${model.stringModelNumber}</option>
                                </c:forEach>
                            </select>
                        </c:otherwise>
                    </c:choose>		
            	</div>
                <div id="selectModelInfo">
                   <img style="width: 300px;"src="/springframework-mini-project/equipment/display?fileName=${productDto.pattachoname}"/>
                    <div>${productDto.productName}</div>
                </div>	

                <ul class="as_title1_content2" style="margin-top: 20px;">
                    <li>모델명(코드)를 입력하시면 정확한 수리에 도움이 됩니다.(3자리 이상 입력)</li>
                    <li>모델명(코드)가 정확하지 않은 경우 제품을 선택 후 예약을 진행해 주세요.</li>
                </ul>
                <div id="as_btn_list" class="d-flex text-center" >
                    <div>
                        <div id="categoryList">
                            <div id="as_choice_chair" class="as_btn_list_el">
                                <input type="radio" name="category" class="as_btn_list_text_el_a" checked id="inputaschair">
                                    <label for="inputaschair">
                                        <img id="btn_aschair_image" class="as_btn_list_image" src="${pageContext.request.contextPath}/resources/subinimage/dentist-chair.png">
                                        <p class="as_btn_list_text_el">유니트체어</p>
                                    </label>
                                
                            </div>  
                            <div id="as_choice_largeCam" class="as_btn_list_el">
                                <input type="radio"  name="category"class="as_btn_list_text_el_a" id="inputaslargeCam">
                                    <label for="inputaslargeCam">
                                        <img id="btn_aschair_image" class="as_btn_list_image" src="${pageContext.request.contextPath}/resources/subinimage/ct-scan-image.png">
                                        <p class="as_btn_list_text_el">대형 영상 장비</p>
                                    </label>
                                
                            </div>  
                            <div id="as_choice_smallCam" class="as_btn_list_el">
                                <input type="radio"  name="category"class="as_btn_list_text_el_a" id="inputassmallCam">
                                    <label for="inputassmallCam">
                                        <img id="btn_aschair_image" class="as_btn_list_image" src="${pageContext.request.contextPath}/resources/subinimage/smallxray.png">
                                        <p class="as_btn_list_text_el">소형 영상 장비</p>
                                    </label>
                                
                            </div>  
                            <div id="as_choice_cleaning" class="as_btn_list_el">
                                <input type="radio" name="category" class="as_btn_list_text_el_a" id="inputascleaning">
                                    <label for="inputascleaning">
                                        <img id="btn_aschair_image" class="as_btn_list_image" src="${pageContext.request.contextPath}/resources/subinimage/cleaning.png">
                                        <p class="as_btn_list_text_el">멸균 및 세척기</p>
                                    </label>
                                
                            </div>  
                            <div id="as_choice_otherequip" class="as_btn_list_el">
                                <input type="radio"  name="category" class="as_btn_list_text_el_a" id="inputasotherequip">
                                    <label for="inputasotherequip">
                                        <img id="btn_aschair_image" class="as_btn_list_image" src="${pageContext.request.contextPath}/resources/subinimage/otherequip.png">
                                        <p class="as_btn_list_text_el">기타 장비</p>
                                    </label>
                                
                            </div>  
                        </div>
                    </div> 
                    
                    <hr>
                    
                </div>
                <div id="simpleSymList" class="d-flex" style="margin-top:50px; margin-bottom:50px">
                    <p style="width: 163px;">증상 선택<span id="red_star">*</span></p>
                    <input id="sim_power" class="simpleSymEl" name="simpleSym" type="radio" checked value="전원이상"/><label for="sim_power">전원 이상</label>
                    <input id="sim_noise" class="simpleSymEl" name="simpleSym" type="radio" value="소음발생"/><label for="sim_noise">소음 발생</label>
                    <input id="sim_smell" class="simpleSymEl" name="simpleSym" type="radio" value="악취발생"/><label for="sim_smell">악취 발생</label>
                    <input id="sim_strange" class="simpleSymEl" name="simpleSym" type="radio" value="작동이상"/><label for="sim_strange">작동 이상</label>
                    <input id="sim_equ" class="simpleSymEl" name="simpleSym" type="radio" value="부품외관이상"/><label for="sim_equ">부품 외관 이상</label>
                    <input id="sim_danger" class="simpleSymEl" name="simpleSym" type="radio" value="화재및스파크"/><label for="sim_danger">화재 및 스파크</label>
                </div>
                    <div id="as_detail" class="d-flex">
                        <p style="width: 183px;">상세 증상<span id="red_star">*</span></p>
                        <input id="as_detail_input" name="detailSym" type="text" placeholder="고장 증상 상세 내용만 입력해주세요." onFocus="clearText(this)"/>
                    </div>
                    <p class="mt-3">첨부파일 <input id="as_photo_input" type="file" name="pattachoname"/></p>
                    <ul>
                    	<li class="as_detail_content">첨부 파일은 한 장씩만 첨부가 가능합니다.</li>
                    </ul>
                    
                    <p>구입년월<a id="red_star"> *</a>
                        <input type="date" name="inputPurchaseDate" id="realPurchaseDate" class="underline"/>
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
                        <p>${udt.name}</p>
                        <p>${udt.phone}</p>
                        <p>${udt.address}</p>
                    </div>
                </div>
                <div class="d-flex flex-column">
                    <div id="checked_user_update_info">
                        <!--회원정보 수정 버튼 눌렀을 경우 출력될 정보-->
                        <div class="left">
                            <div style="margin-bottom: 100px; margin-top: 100px; margin-left: 100px; text-align: center; ">
                                회원님의 정보에 변동사항이 있을 경우 마이페이지에서 변경해주세요!
                                <a id="btn_goto_userinfo" style="background-color: #ca5c0d; color: white; margin-left: 20px; "class="btn btn-light" href="/springframework-mini-project/mypage/mypage_infosetting">마이페이지 바로가기</a>
                            </div>
                            
                        </div>
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
                <div><a id="btn_select_reservation_date" class="btn btn-light">예약 가능일 조회</a></div> 
            </div> 

            <!--예약 가능일 조회하기 버튼을 눌러야 해당 div가 보이도록-->
            <div id="as_reservation_date_ch">
                <p class="as_title">3. 예약 일/시간 선택 <a id="red_star"> *</a> <a id="as_title1_content1"> 필수 입력 사항</a></p>
                <hr id="pxup_line"/>
                <p>예약 일시 <a id="red_star"> *</a><span class="as_font_color_ccc">예약 일과 시간을 선택해주세요</span></p>
                <hr/>
                <p id="as_reservation_date_ch_left_content">예약일　</p>

                	<input type="date" name="inputwantASDate" id="wantASDate" class="underline" style="margin-bottom:50px"/>
                    <!-- <p>4월</p>
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
                    <label for="option10">5일</label> -->

                <ul id="as_reservation_date_ch_right_content" class="as_font_color_ccc" style="margin-left: 160px; margin-bottom: 40px;">
                    <li>AS문의량이 많을 경우 원하는 날짜에 서비스 예약이 어려울 수 있는 점 참고 부탁드립니다.</li>                   
                    <li>전국 실시간 접수 시스템으로 예약 가능한 일시에 서비스 예약이 어려울 수 있습니다.</li>
                    <li>예약 가능한 시간만 표시됩니다.</li>
                </ul>

                <p id="as_reservation_date_ch_left_content">예약시간</p>
                <div id="check_as_time">
                    <p>오전</p>
                        <input class="wandAsTime" type="radio" id="am_time1" name="timeorder" value="am1" checked="checked">
                        <label for="am_time1">09:00</label>
                        <input class="wandAsTime" type="radio" id="am_time2" name="timeorder" value="am2">
                        <label for="am_time2" >10:00</label>
                        <input class="wandAsTime" type="radio" id="am_time3" name="timeorder" value="am3">
                        <label for="am_time3">11:00</label>
                       
                    <hr>
                    <p>오후</p>
                    <input class="wandAsTime" type="radio" id="pm_time1" name="timeorder" value="pm1">
                    <label for="pm_time1">12:00</label>
                    <input class="wandAsTime" type="radio" id="pm_time2" name="timeorder" value="pm2">
                    <label for="pm_time2">13:00</label>
                    <input class="wandAsTime" type="radio" id="pm_time3" name="timeorder" value="pm3">
                    <label for="pm_time3">14:00</label>
                    <input class="wandAsTime" type="radio" id="pm_time4" name="timeorder" value="pm4">
                    <label for="pm_time4">15:00</label>
                    <input class="wandAsTime" type="radio" id="pm_time5" name="timeorder" value="pm5">
                    <label for="pm_time5">16:00</label>
                    <input class="wandAsTime" type="radio" id="pm_time6" name="timeorder" value="pm6">
                    <label for="pm_time6">17:00</label>

                    <hr>
                </div>
            
                <div id="as_reservation_final_button">
                    <a href="/springframework-mini-project/" id="btn_reservation_input_cancellation" style="box-shadow: none;" class="btn btn-light">예약 취소</a>
                    <a id="btn_reservation_input_final"class="btn btn-light" onclick="ReservationAdd()">예약 신청</a>
                            
                </div>
            </div>
        </div>
  	<div class="popup_layer" id="popup_layer" style="display: none;">
	  <div class="popup_box">
	      <div style="height: 10px; width: 375px; float: top;">
	        <a href="javascript:closePop();"><img src="${pageContext.request.contextPath}/resources/subinimage/wantclose.svg" class="m_header-banner-close" width="30px" height="30px"></a>
	      </div>
	      <!--팝업 컨텐츠 영역-->
	      <div class="popup_cont">
	          <h5>${udt.name}님의 보유 제품입니다</h5>
	          <p>구매하신 제품 중 AS를 원하시는 상품이 있다면 체크 후 하단의 선택 버튼을 눌러주십시오.</p>
	          <p>
	          
	
	          </p>
	
	      </div>
	      <!--팝업 버튼 영역-->
	      <div class="popup_btn" style="float: bottom; margin-top: 200px;">
	          <a onclick="javascript:closePop();">닫기</a>
	          <a onclikc="">선택</a>
	      </div>
	  </div>
	  
	</div>
	
    <script src="${pageContext.request.contextPath}/resources/js/equipment/afterService.js"></script>
</form>  
  </div>
  
<%@ include file="/WEB-INF/views/common/footer.jsp" %>