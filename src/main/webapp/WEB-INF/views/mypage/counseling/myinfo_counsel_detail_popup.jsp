<%@ page contentType="text/html; charset=UTF-8"%>

   <div class = "popup_info_space_type">
   	<div class = "popup_info_space_type_title">공간유형</div>
     <div class = "popup_info_space_type_content">${mainCon.consultInteriorStyle}</div>
   </div>
   <div class = "popup_info_width">
   	<div class = "popup_info_width_title">평형</div>
     <div class = "popup_info_width_content">${mainCon.consultAcreage} 평</div>
   </div>
    <div class = "popup_info_request">
   	<div class = "popup_info_request_title">요청사항</div>
      <div class = "popup_info_request_content">${mainCon.consultRequest}</div>
   </div>
   <div class = "popup_info_date">
   	<div class = "popup_info_date_title">상담예정일자</div>
      <div class = "popup_info_date_content">${mainCon.consultDate} ${mainCon.consultTime}</div>
   </div>
<div class = "popup_info_spot">
   	<div class = "popup_info_spot_title">공사지역</div>
      <div class = "popup_info_spot_content">${mainCon.consultAddress}</div>
   </div>
   <div class = "popup_info_visit_date">
   	<div class = "popup_info_visit_date_title">시공일자</div>
      <div class = "popup_info_visit_date_content">${mainCon.constructionDate}</div>
   </div> 
	<button type="button" class="btn" id = "interior_detail_past_btn"
      style = "margin-left : 105px; font-family: 'MinSans-Bold';"
     onclick="location.href='/springframework-mini-project/mypage/mypage_interior_progress?consultNo=${mainCon.consultNo}'">상세 보기</button>     
     