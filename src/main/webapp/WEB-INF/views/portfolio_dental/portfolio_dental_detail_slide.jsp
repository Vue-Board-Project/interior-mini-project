<%@ page contentType="text/html; charset=UTF-8"%>
<link href="${pageContext.request.contextPath}/resources/css/portfolio_dental/cssPortfolioDentalSlide.css" rel="stylesheet" type="text/css">
<div id="wrapper">
<div id="slider_wrap">
  <ul id="slider">
  	<c:forEach items="${interiorDList}" var="dList">
    	<li>
       		 <img src="/springframework-mini-project/portfolio_dental/portfolioDisplay?fileName=${dList.idImgPath}">
    	</li>
    </c:forEach>
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
