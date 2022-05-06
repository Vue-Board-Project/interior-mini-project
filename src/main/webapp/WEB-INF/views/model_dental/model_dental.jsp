<%@ page contentType="text/html; charset=UTF-8"%>
<link href="${pageContext.request.contextPath}/resources/css/model_dental/cssModelDental.css" rel="stylesheet" type="text/css">
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div id="model_dental_wrap">
	<%@ include file="/WEB-INF/views/model_dental/model_dental_filter.jsp" %>
        <div class="d-flex flex-column text-center mt-5 mb-5" id="dental_model_filter_content_wrap">
        
	        <div class="ml-3 text-left model_dental_cnt">
	        	<p class="model_dental_cnt_p">전체 <span>${fn:length(modelList)}</span></p>
	        </div>
	       	<section>
	            <ul id="portfolio_dental_content_wrap" class="d-flex" style="padding-left:0px; flex-wrap: wrap; width:996px; ">
		            <c:forEach items="${modelList}" var="list">
		            	<li class="m-3 pb-3 model_dental_content" style="list-style:none; padding-left:0px; width:300px;"> 
		                    <a href="${pageContext.request.contextPath}/model_dental/model_dental_detail?ino=${list.ino}" class="model_dental_content_a">
		                        <div class="model_dental_content_img_div">
		                     	   <div class="model_dental_content_img_div_content" style="width: 280px; height: 180px;">
			                     	   <img class="model_dental_content_img" src="/springframework-mini-project/model_dental/display?fileName=${list.imImgPath}"/>
		                     	   </div>
		                        </div>
		                        <b class="model_dental_content_b">${list.isummary}</b>
		                        <small class="d-block model_dental_content_sm">mansik</small>
		                    </a>
		                </li>
		            </c:forEach>
	            </ul>
           </section> 
        </div>
    </div>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>