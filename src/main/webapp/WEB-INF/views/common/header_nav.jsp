<%@ page contentType="text/html; charset=UTF-8"%>
<nav id="main_header_nav" class="d-flex justify-content-center">
<div class="main_header_nav_dropdown_group h-100" id="my_main_header_nav_dropdown_group">
    <div class="main_header_nav_dropdown">
      <a class="btn main_header_nav_dropbtn" style=" border-radius: 0px;">치과장비</a>
  <div class="main_header_nav_dropdown_content">
    <a href="${pageContext.request.contextPath}/equipment/dental_equipment_main">유니트 체어</a>
    <a href="${pageContext.request.contextPath}/equipment/dental_equipment_main">X-ray</a>
    <a href="${pageContext.request.contextPath}/equipment/dental_equipment_main">멸균기</a>
  </div>
</div> 
<div class="main_header_nav_dropdown">
    <a class="btn main_header_nav_dropbtn" style=" border-radius: 0px;">인테리어</a>
    <div class="main_header_nav_dropdown_content">
      <a href="${pageContext.request.contextPath}/goPortfolioDental">포트폴리오</a>
      <a href="${pageContext.request.contextPath}/goModelDental">모델치과</a>
      <a href="${pageContext.request.contextPath}/interior_consult/remodeling_price">인테리어 견적</a>
    </div>
</div>   
<div class="main_header_nav_dropdown">
    <a class="btn main_header_nav_dropbtn" style=" border-radius: 0px;">고객센터</a>
    <div class="main_header_nav_dropdown_content">
      <a href="${pageContext.request.contextPath}/equipment/CustomerService">공지사항</a>
    </div>
</div> 
<div class="main_header_nav_btn_group text-center">
    <div id="main_header_nav_interior_btn"><a class="btn main_header_nav_btn" href="${pageContext.request.contextPath}/interior_consult/quick_consultation">인테리어 상담</a></div>
</div> 
<div class="main_header_nav_btn_group text-center">
    <div id="main_header_nav_equipment_btn"><a class="btn main_header_nav_btn" href="${pageContext.request.contextPath}/interior_consult/quipment_buy_request_consult"><span>장비상담</span></a></div>
</div> 
<a href="javascript:void(0);" class="main_header_nav_icon h-100" onclick="myFunction()">☰</a>
    </div>
</nav>