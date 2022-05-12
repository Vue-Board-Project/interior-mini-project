<%@ page contentType="text/html; charset=UTF-8"%>
<nav id="main_header_nav" class="d-flex justify-content-center">
<div class="main_header_nav_dropdown_group h-100" id="my_main_header_nav_dropdown_group">
    <div class="main_header_nav_dropdown">
      <a href="${pageContext.request.contextPath}/equipment/dental_equipment_main?category=all" class="btn main_header_nav_dropbtn headernavLoading" style=" border-radius: 0px;">치과장비</a>
  <div class="main_header_nav_dropdown_content">
    <a href="${pageContext.request.contextPath}/equipment/dental_equipment_main?category=unitchair" class="headernavLoading">유니트 체어</a>
    <a href="${pageContext.request.contextPath}/equipment/dental_equipment_main?category=largecamera" class="headernavLoading">대형 영상 장비</a>
    <a href="${pageContext.request.contextPath}/equipment/dental_equipment_main?category=washingmachine" class="headernavLoading">멸균 및 세척기</a>
    <a href="${pageContext.request.contextPath}/equipment/dental_equipment_main?category=smallcamera" class="headernavLoading">소형 영상 장비</a>
    <a href="${pageContext.request.contextPath}/equipment/dental_equipment_main?category=etc" class="headernavLoading">기타 장비</a>
  </div>
</div> 
<div class="main_header_nav_dropdown">
    <a class="btn main_header_nav_dropbtn" style=" border-radius: 0px;"  class="headernavLoading" >인테리어</a>
    <div class="main_header_nav_dropdown_content">
      <a href="${pageContext.request.contextPath}/goPortfolioDental" class="headernavLoading">포트폴리오</a>
      <a href="${pageContext.request.contextPath}/goModelDental" class="headernavLoading">모델치과</a>
      <a href="${pageContext.request.contextPath}/interior_consult/remodeling_price" class="headernavLoading">인테리어 견적</a>
    </div>
</div>   
<div class="main_header_nav_dropdown">
    <a class="btn main_header_nav_dropbtn" style=" border-radius: 0px;" >고객센터</a>
    <div class="main_header_nav_dropdown_content">
      <a href="${pageContext.request.contextPath}/equipment/CustomerService" class="headernavLoading">공지사항</a>
    </div>
</div> 
<div class="main_header_nav_btn_group text-center">
    <div id="main_header_nav_interior_btn"><a class="btn main_header_nav_btn" href="${pageContext.request.contextPath}/interior_consult/quick_consultation" class="headernavLoading">인테리어 상담</a></div>
</div> 
<div class="main_header_nav_btn_group text-center">
    <div id="main_header_nav_equipment_btn"><a class="btn main_header_nav_btn" href="${pageContext.request.contextPath}/productConsult/product_buy_request_consult" class="headernavLoading"><span>장비구매 상담</span></a></div>
</div> 
<a href="javascript:void(0);" class="main_header_nav_icon h-100" onclick="myFunction()">☰</a>
    </div>
</nav>
<script src="${pageContext.request.contextPath}/resources/js/equipment/dental_equipment_main.js"></script> 