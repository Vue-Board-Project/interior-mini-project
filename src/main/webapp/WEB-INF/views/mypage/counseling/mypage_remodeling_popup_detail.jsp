 <%@ page contentType="text/html; charset=UTF-8"%>
 
    <div class = "popup_info_space_type">
    	<div class = "popup_info_space_type_title">공간유형</div>
      <div class = "popup_info_space_type_content">${remodelingCon.consultInteriorStyle}</div>
    </div>
    <div class = "popup_info_width">
    	<div class = "popup_info_width_title">평형</div>
      <div class = "popup_info_width_content">${remodelingCon.consultAcreage} 평</div>
    </div>
     <div class = "popup_info_request">
    	<div class = "popup_info_request_title">요청사항</div>
       <div class = "popup_info_request_content">${remodelingCon.consultRequest}</div>
    </div>
    <div class = "popup_info_date">
    	<div class = "popup_info_date_title">상담예정일자</div>
       <div class = "popup_info_date_content">${remodelingCon.consultDate} ${remodelingCon.consultTime}</div>
    </div>
 <div class = "popup_info_spot">
    	<div class = "popup_info_spot_title">공사지역</div>
       <div class = "popup_info_spot_content">${remodelingCon.consultAddress}</div>
    </div>
    <div class = "popup_info_visit_date">
    	<div class = "popup_info_visit_date_title">시공일자</div>
       <div class = "popup_info_visit_date_content">${remodelingCon.constructionDate}</div>
    </div> 
	<button type="button" class="btn" id = "remodeling_detail_past_btn"
      style = "margin-left : 105px; font-family: 'MinSans-Bold';"
     onclick="location.href='/springframework-mini-project/mypage/mypage_interior_progress?consultNo=${remodelingCon.consultNo}'">상세 보기</button>     
     