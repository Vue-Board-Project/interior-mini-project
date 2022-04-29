<%@ page contentType="text/html; charset=UTF-8"%>
 <!-- 진료실 -->
<div style="width: 80%;" class="mx-auto" >
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
    <div class="mb-5">
       <p style="font-family: 'MinSans-Bold'; font-size: 20px;">시공할 벽지를 선택해주세요</p>
       <div style="display: flex;">
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_papering" value="silk">
               <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                   실크
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_papering" value="paper">
               <span class="waiting_papering">
                   합지
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_papering" value="silkpaper">
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
               <input type="radio" name="remodeling_price_treatment_flooring" value="veneer">
               <span style="border-radius: 10px 0 0 0;" class="waiting_flooring">
                   장판
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_flooring" value="reinforcedfloor">
               <span class="waiting_flooring">
                   강화마루
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_flooring" value="riverfloor">
               <span style="border-radius: 0 10px 0 0;" class="waiting_flooring">
                   강마루
               </span>
           </label>   
       </div>
       <div style="display: flex;">
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_flooring" value="solidwoodfloor">
               <span style="border-radius: 0 0 0 10px;" class="waiting_flooring">
                   원목마루
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_flooring" value="porcelaintile">
               <span class="waiting_flooring">
                   포세린타일
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_flooring" value="naturalmarble">
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
               <input type="radio" name="remodeling_price_treatment_light" value="allLight">
               <span style="border-radius: 10px 0 0 10px;" class="waiting_light">
                   전체 교체
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_light" value="partLight">
               <span style="border-radius: 0 10px 10px 0;" class="waiting_light">
                   부분 교체
               </span>
           </label>   
       </div>
   </div>
    <!-- 구조 -->
    <div class="mb-5">
       <p style="font-family: 'MinSans-Bold'; font-size: 20px;">구조를 선택해주세요</p>
       <div style="display: flex;">
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_structure" value="Open">
               <span style="border-radius: 10px 0 0 0;" class="waiting_furniture">
                   개방형
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap waiting_light">
               <input type="radio" name="remodeling_price_treatment_structure" value="semiopenroom">
               <span style="border-radius: 0 10px 0 0;" class="waiting_furniture">
                   반개실형
               </span>
           </label>   
       </div>
       <div style="display: flex;">
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_structure" value="open type">
               <span style="border-radius: 0 0 0 10px;" class="waiting_furniture">
                   개실형
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap waiting_light">
               <input type="radio" name="remodeling_price_treatment_structure" value="mixed">
               <span style="border-radius: 0 0 10px 0;" class="waiting_furniture">
                   혼용형
               </span>
           </label>   
       </div>
    </div>
   <!-- 유니트 체어 개수 -->
   <div class="mb-5">
       <p style="font-family: 'MinSans-Bold'; font-size: 20px;">유니트 체어 개수</p>
       <div>
           <div>
               <select class="form-control" style="font-family: 'MinSans-Light'; font-size: 20px; height: 60px; width: 90%;">
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
   <div class="mb-5">
       <p style="font-family: 'MinSans-Bold'; font-size: 20px;">유니트 체어 재설치</p>
       <div style="display: flex;">
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_unitchair" value="yesunitchair">
               <span style="border-radius: 10px 0 0 10px;" class="waiting_light">
                   포함
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_unitchair" value="nounitchair">
               <span style="border-radius: 0 10px 10px 0;" class="waiting_light">
                   미포함
               </span>
           </label>   
       </div>
   </div>
    <!-- 유니트 체어 선 -->
    <div class="mb-5">
       <p style="font-family: 'MinSans-Bold'; font-size: 20px;">유니트 체어 선 설치 방법을 선택해주세요</p>
       <div style="display: flex;">
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_unitchair_electric_wire" value="landfill">
               <span style="border-radius: 10px 0 0 10px;" class="waiting_papering">
                   매립
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_unitchair_electric_wire" value="Opening">
               <span class="waiting_papering">
                   개방
               </span>
           </label>
           <label class="detail_consult_main_radio_btn_csswrap">
               <input type="radio" name="remodeling_price_treatment_unitchair_electric_wire" value="nowire">
               <span style="border-radius: 0 10px 10px 0;" class="waiting_papering">
                   모름
               </span>
           </label>   
       </div>
   </div>
</div>