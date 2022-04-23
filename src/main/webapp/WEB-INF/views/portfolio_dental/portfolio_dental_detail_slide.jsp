<%@ page contentType="text/html; charset=UTF-8"%>
<link href="${pageContext.request.contextPath}/resources/css/portfolio_dental/cssPortfolioDentalSlide.css" rel="stylesheet" type="text/css">
<div id="wrapper">
<div id="slider_wrap">
  <ul id="slider">
    <li>
        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_6.PNG">
    </li>
    
    <li>
        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_4.PNG">
    </li>
    
    <li>
        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_5.PNG">
    </li>
    
    <li>
        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_7.PNG">
    </li>
    
    <li>
        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_3.PNG">
    </li>
  </ul>
  
  <!--controls-->
  <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
  <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
  <div id="counter"></div>
    
  <div id="pagination_wrap">
  <ul>
  </ul>
  </div>
  <!--controls-->
    </div>
  </div>

   <script src="${pageContext.request.contextPath}/resources/js/portfolio_dental/jsPortfolioDentalSlide.js"></script>
