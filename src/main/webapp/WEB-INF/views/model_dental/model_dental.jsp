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
		                    <a style="position: relative" href="${pageContext.request.contextPath}/model_dental/model_dental_detail?ino=${list.ino}" class="model_dental_content_a">
		                        <div class="model_dental_content_img_div">
		                     	   <div class="model_dental_content_img_div_content" style="width: 280px; height: 180px; position: relative;">
			                     	   <img class="model_dental_content_img" src="/springframework-mini-project/model_dental/display?fileName=${list.imImgPath}"/>
			                     	   <div class="white_oss_logo_div" style="position: absolute; top: 35%; left: 6%; width: 280px; height: 180px;">
				                     	   <img src="${pageContext.request.contextPath}/resources/pngs/white_logo.png" style=" width: 200px;"/>
			                     	   </div>
		                     	   </div>
		                        </div>
		                        <div>
		                        	<b class="model_dental_content_b">${list.isummary}</b>
		                        	<div style="position:absolute; width: 70px; top: 10px;"><i class="far fa-eye" style="color: white;"></i><span style="color: white;" class="ml-1">${list.ihits}</span></div>
		                        	<small class="d-block model_dental_content_sm"><span># ${list.istyle}</span> <span># ${list.allColor}</span></small>
		                        </div>
		                    </a>
		                </li>
		            </c:forEach>
	            </ul>
           </section> 
        </div>
    </div>
<script>
   $(".hover").mouseleave(
        function () {
            $(this).removeClass("hover");
        }
    ); 
</script>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>