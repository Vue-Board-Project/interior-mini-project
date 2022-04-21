<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<main style="background-color:#faf9f6;">
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/cssHeader.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quik.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quick_consultation.css" rel="stylesheet" type="text/css"/>
	<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/detail_consultation.css" rel="stylesheet" type="text/css"/> 
	<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/quipment_buy_request_consult.css" rel="stylesheet" type="text/css" /> 
	<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/remodeling_price.css" rel="stylesheet" type="text/css"/>
       <div class="container">
           <article id="read_precautions" class="mx-auto" style="width: 430px; padding: 80px 0 100px 0;">
                   <h3 id="read_precau_title">종합 인테리어 상담</h3>
                   <p class="read_precau_text"><span id="raed_precau_text_highlight">잠깐! <b style="color: #ca5c0d;">대면 상담</b>이 필요하다는 것 알고 계신가요?</span><br/>
                   종합리모델링의 경우, 엽체와 대면 상담은 필수입니다!<br/>
                   전화상담만으로 가견적만 내어 드리는 것은 어려워요.</p>
                   <br/>
                   <p class="read_precau_text">상담이 중단될 수 있는 경우</p>
                   <section class="p-4 rounded" id="read_precau_info" >
                       - 부동산 계약이 안된 상태<br/>
                       - 실측 불가하고, 방문도 불가능한 상태<br/>
                       - 사용 중이고 보관 이사가 불가능한 경우<br/>
                       - 단순 온라인 견적문의<br/>
                   </section>
                   <button id="read_precau_btn" class="btn my-5 py-2 px-4" onclick="js:begin()" >네, 확인했습니다</button>
           </article>
           <article id="first_quick_consultation" class="mx-auto">
               <div class="bg-white rounded" style="width: 100%;">
                   <!-- 진행 정도 상태 바 : 바뀌지 x -->
                   <div>
                       <div class="pt-4" style="height: 80px;">
                           <div class="status mx-auto rounded-lg">
                               <div class="statusbar"></div>
                           </div>
                           
                       </div>
                   </div>
                   <!-- 진행 내용 부분 : 부분1-->
                   <section class="mx-auto" style="width: 80%;" id="quick_consultation_rotation1">
                       <div class="mx-auto text-center" style="width: 100%;">
                           <div class="first_quick_new_update_btn_group ">
                               <input type="radio" name="choose_purpose_of_consultation"  id="choose_purpose_new" checked="checked" />
                               <label for="choose_purpose_new">신규 인테리어 상담신청</label>
                               <input type="radio" name="choose_purpose_of_consultation"  id="choose_purpose_update" />
                               <label for="choose_purpose_update">리모델링 상담신청</label>
                           </div>
                       </div>
                       <div class="mx-auto" style="margin: 80px 0;">
                           <div style="margin-bottom: 30px;" >
                               <div style=" font-family: 'MinSans-Bold'; font-size: 25px; padding-bottom: 20px;">
                                   시공할 공간의 사이즈는 몇평인가요?<br/>
                                   (공급면적 기준)
                               </div>
                               <div>
                                   <select class="form-control" style="font-family: 'MinSans-Light'; font-size: 20px; height: 60px;">
                                       <option value disabled>면적</option>
                                       <option value="1">3m² (1평)</option>
                                       <option value="2">6m² (2평)</option>
                                       <option value="3">9m² (3평)</option>
                                       <option value="4">13m² (4평)</option>
                                       <option value="5">16m² (5평)</option>
                                       <option value="6">19m² (6평)</option>
                                       <option value="7">23m² (7평)</option>
                                       <option value="8">26m² (8평)</option>
                                       <option value="9">29m² (0평)</option>
                                       <option value="10">33m² (10평)</option>

                                   </select>
                               </div>   
                           </div>
                           <div class="bg-light rounded m-2 mx-auto" style="width:100%; font-family: 'MinSans-Regular'; padding: 20px 30px; font-size: 1.3rem;">
                             <p><i class="fa-solid fa-circle-info"></i>   3㎡(1평)부터 1평 단위로 입력이 가능합니다.</p>  
                           </div>
                       </div>
                       <div class="mb-5" id="remodeling_consult_Room_wrapping">
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
                   </section>

                   <!-- 진행 내용 부분 : 부분 2-1 -->
                   <section class="mx-auto" style="width: 80%;"  id="quick_consultation_rotation2">
                       <div style="margin-bottom: 30px;" >
                           <div style=" font-family: 'MinSans-Bold'; font-size: 25px; padding-bottom: 20px;">
                               원하는 스타일이 있으신가요?<br/>
                               (참고용 이미지)
                           </div>
                           <div>
                               <div style="display:flex;">
                                   <label class="test_obj">
                                       <input type="radio" name="fruit" value="apple">
                                       <span style="border-top-left-radius: 10px;">
                                           <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/minimal.jpg" class="mx-auto mt-3 mb-2 qcri2_img">
                                           모던
                                       </span>
                                   </label>
                                    
                                   <label class="test_obj">
                                       <input type="radio" name="fruit" value="banana">
                                       <span>
                                           <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/chic.jpg" class="mx-auto mt-3 mb-2 qcri2_img">
                                           시크
                                       </span>
                                   </label>
                                    
                                   <label class="test_obj">
                                       <input type="radio" name="fruit" value="lemon">
                                       <span style="border-top-right-radius: 10px;">
                                           <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/northEurope.jpg"  class="mx-auto  mt-3 mb-2 qcri2_img">
                                           북유럽
                                       </span>
                                   </label>
                               </div>                            
                               <div style="display: flex;">
                                   <label class="test_obj">
                                       <input type="radio" name="fruit" value="apple">
                                       <span style="border-bottom-left-radius: 10px;">
                                           <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/natural.jpg"  class="mx-auto mt-3 mb-2 qcri2_img">
                                           내추럴
                                       </span>
                                   </label>
                                    
                                   <label class="test_obj">
                                       <input type="radio" name="fruit" value="banana">
                                       <span>
                                           <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/minimal.jpg" class="mx-auto mt-3 mb-2 qcri2_img">
                                           미니멀
                                       </span>
                                   </label>
                                    
                                   <label class="test_obj">
                                       <input type="radio" name="fruit" value="lemon">
                                       <span style="border-bottom-right-radius: 10px;">
                                           <img src="${pageContext.request.contextPath}/resources/images/interiorConsultImage/other.jpg" class="mx-auto mt-3 mb-2 qcri2_img">
                                           기타
                                       </span>
                                   </label>
                               </div>
                           </div> 
                       </div>
                       <div>
                           <div style=" font-family: 'MinSans-Bold'; font-size: 25px; padding-bottom: 20px; line-height: 120%;">
                               언제 시공이 시작되길 원하시나요?<br/>
                               <span style="font-size: 15px; color:#272723;font-family: 'MinSans-Regular';">오늘을 기준으로 공사 시작 희망 일정을 선택해주세요.</span> 
                           </div> 
                           <div>
                               <div class="mb-5 ml-2" style="font-family: 'MinSans-Light';">
                                   <div class="mb-2"><input type="radio" name="choie_Corporation_term"/>  2주 ~ 1달 이내</div>
                                   <div class="mb-2"><input type="radio" name="choie_Corporation_term"/>  1달 ~ 2달 이내</div>
                                   <div class="mb-2"><input type="radio" name="choie_Corporation_term"/>  2달 ~ 3달 이내</div>
                                   <div class="mb-2"><input type="radio" name="choie_Corporation_term"/>  3달 이후</div>
                               </div>
                           </div>
                       </div>
                   </section>
                   <!-- 진행 내용 부분 : 부분 2-2 -->
                   <section class="mx-auto" style="width: 80%;"  id="quick_consultation_rotation3">
                       <div>
                           <div style=" font-family: 'MinSans-Bold'; font-size: 25px; padding-bottom: 20px; line-height: 120%;">
                               상담 가능한 날짜와 시간을 선택해주세요.<br/>
                               <span style="font-size: 15px; color:#272723;font-family: 'MinSans-Regular';">상담 진행이 많을 경우 정확한 시간은 변경 될 수 있습니다.</span> 
                           </div>
                           <div>
                               <div>
                                   <p>예약일</p>
                                   <div>
                                       <input type="date" class="form-control" id="consult_date" style="width: 90%;"/>
                                   </div>
                                   <div style="width: 100%;" class="mt-4 mb-5">
                                       <div class="rounded" style="width: 90%; height: 140px; background-color: #e8e8db; font-family: 'MinSans-Regular';">
                                           <div>
                                               <div class="ml-3" style="display: flex; align-items: center; height: 70px; width: 90%;">
                                                   <p class="mr-3 pt-3" style="display: inline-block;">오전</p>
                                                   <label class="conult-reservation_time_wrap">
                                                       <input type="radio" name="conult-reservation_time" value="am1">
                                                       <span> 09:10 </span>
                                                   </label>
                                                   <label class="conult-reservation_time_wrap">
                                                       <input type="radio" name="conult-reservation_time" value="am2">
                                                       <span> 10:10 </span>
                                                   </label>
                                                   <label class="conult-reservation_time_wrap">
                                                       <input type="radio" name="conult-reservation_time_wrap" value="am3">
                                                       <span> 11:10 </span>
                                                   </label>
                                               </div>
                                               
                                               <div class="ml-3" style="display: flex;align-items: center; height: 70px; width: 90%; border-top: 1px solid #272723;">
                                                   <p class="mr-3 pt-3" style="display: inline-block;">오후</p>
                                                   <label class="conult-reservation_time_wrap">
                                                       <input type="radio" name="conult-reservation_time" value="pm1">
                                                       <span> 13:10 </span>
                                                   </label>
                                                   <label class="conult-reservation_time_wrap">
                                                       <input type="radio" name="conult-reservation_time" value="pm2">
                                                       <span> 14:10 </span>
                                                   </label>
                                                   <label class="conult-reservation_time_wrap">
                                                       <input type="radio" name="conult-reservation_time" value="pm3">
                                                       <span> 15:10 </span>
                                                   </label>
                                                   <label class="conult-reservation_time_wrap">
                                                       <input type="radio" name="conult-reservation_time" value="pm3">
                                                       <span> 16:10 </span>
                                                   </label>
                                                   <label class="conult-reservation_time_wrap">
                                                       <input type="radio" name="conult-reservation_time" value="pm3">
                                                       <span> 17:10 </span>
                                                   </label>
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               <div>

                               </div>
                           </div> 
                       </div>
                       <div class="mb-5">
                           <div style=" font-family: 'MinSans-Bold'; font-size: 25px; padding-bottom: 20px; line-height: 120%;">
                               전달사항.<br/>
                               <span style="font-size: 15px; color:#272723;font-family: 'MinSans-Regular';">(선택사항)</span> 
                           </div>
                           <div>
                               <textarea class="p-2" style="width: 500px; height: 150px;" cols="30" rows="5" placeholder="기타 문의사항을 남겨주시면 원활한 상담이 가능합니다."></textarea>
                           </div> 
                       </div>
                   </section>
                   <!-- 진행 내용 부분 : 부분 2-3 -->
                   <section class="mx-auto" style="width: 80%;"  id="quick_consultation_rotation4">
                       <div>
                           <div style=" font-family: 'MinSans-Bold'; font-size: 25px; padding-bottom: 20px; line-height: 120%;">
                               시공할 곳의 주소를 알려주세요.<br/>
                               <span style="font-size: 15px; color:#272723;font-family: 'MinSans-Regular';">정확한 치과 주소가 필요합니다.</span> 
                           </div> 
                           <div class="mb-5 mt-1">
                               <div style="display: flex;">
                                   <input type="text" class="form-control mr-2" style="width: 350px; display: inline-block;" readonly>
                                   <button class="btn btn-info" style="display:inline-block; width: 150px;">주소찾기</button>
                               </div>
                               <div class="mt-2">
                                   <input type="test" class="form-control" style="width: 507px" placeholder="상세 주소"/>
                               </div>
                           </div>
                       </div>
                       <div>
                            <div style=" font-family: 'MinSans-Bold'; font-size: 25px; padding-bottom: 20px; line-height: 120%;">
                               성함과 대표 번호를 입력해 주세요.<br/>
                               <span style="font-size: 15px; color:#272723;font-family: 'MinSans-Regular';">상담 가능한 번호를 입력해주세요.</span> 
                           </div> 
                           <div>
                               <div>
                                   <input type="test" class="form-control" style="width: 507px" placeholder="이름"/>
                               </div>
                               <div class="mt-3 mb-5" style="display: flex; font-family: 'MinSans-Medium';">
                                   <span class="mr-2" style="display: inline-block;"><input type="text" class="form-control"style="width: 120px;" /></span>
                                   <span class="mr-2" style="display: inline-block; font-size: 15px; font-weight: bold;">_</span>
                                   <span class="mr-2" style="display: inline-block;"><input type="text" class="form-control"style="width: 120px;"/></span>
                                   <span class="mr-2" style="display: inline-block; font-size: 15px; font-weight: bold;">_</span>
                                   <span cl style="display: inline-block;"><input type="text" class="form-control"style="width: 120px;"/></span>
                                   
                               </div>
                           </div>
                       </div>
                           <div class="mb-1" style="border-top: 2px solid #e8e8db;">
                               <div style="display: flex;" class="m-3">
                                   <span class="mr-2" style="display: inline-block;"><input type="checkbox" style="width: 30px; height: 30px;"/></span>
                                   <span style="display: inline-block; font-family: 'MinSans-Bold'; color: #ca5c0d; font-weight: bold; font-size: 20px;">모두 동의합니다</span>
                               </div>
                           </div>
                           <div class="mb-5" style="border-top: 1px solid #e8e8db;">
                               <div style="display: flex;" class="m-3">
                                   <span class="mr-2" style="display: inline-block;"><input type="checkbox" style="width: 20px; height: 20px;"/></span>
                                   <span style="display: inline-block; font-family: 'MinSans-Regular';">개인정보 수집 및 이용 동의(필수)</span>
                               </div>
                           </div>
                       <div>
                           
                       </div>
                   </section>
                    <!-- 내용 진행 바 : 바뀌지 x -->
                   <section id="quick_consult_road_btn_wrap" class="text-center" style="width: 100%; height: 100%; padding-bottom: 6rem;" >
                       <button class="btn btn-light mr-3" onclick="js:consultation_first_back_btn()" id="consultation_first_back_btn">뒤로</button>
                       <button class="btn" onclick="js:consultation_second_interior_btn()" id="consultation_second_interior_btn">다음</button>
                   </section>
                   <section id="quick_consult_finish_btn_wrap" class="text-center" style="width: 100%; height: 100%;padding-bottom: 6rem;">
                       <a class="btn mr-3 add_detail_consult_start_btn pt-3" id="add_detail_consult_start_btn" style=" width: 220px; height: 70px;" 
                       			href="${pageContext.request.contextPath}/interior_consult/detail_consultation">더 상세한 상담 신청</a>
                       <button class="btn quick_consult_finish_btn" id="quick_consult_finish_btn" style=" width: 220px; height: 70px;">빠른상담신청</button>  
                   </section>
               </div>
              

           </article>

       </div>
        <script src="${pageContext.request.contextPath}/resources/js/interior_consult_js/quick_consultation.js"></script>
   </main>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>