<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!-- AOS 라이브러리 불러오기-->
<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<style>
#portfolio_model_wrap{margin: 0 auto; font-family: 'MinSans-Regular';}
.portfolio_dental_content_cnt{font-size:14px; color:#7c7c7c;}
.portfolio_dental_content_cnt_p{line-height: 0; margin:0; padding:0;}
.portfolio_dental_content_b{line-height: 3;}
.portfolio_dental_content_sm{line-height: 1;}
.portfolio_dental_content_img{width: 350px; height: 200px;}
.portfolio_dental_content{
	box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	width: 350px;
}
.portfolio_dental_content_a{
	text-decoration: none; color: black;
}
.portfolio_dental_content_a:hover{
	text-decoration: none; color: black;
}

</style>
<main id="main_content_wrap" class="text-center" style="background-color: #faf9f6; font-family: 'MinSans-Regular';">
<div id="model_dental_main_img" class="text-center">
	<%-- <img class="vw-100" style="height: 400px;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/portfolio_dental_ad.PNG"/></div> --%>
   <section class="d-flex flex-column text-center mt-5 mb-5">
       <h2>O'Molaire Osstem Interior</h2>
       <p>오스템 인테리어</p>
       <div class="d-flex" style=" margin:0 auto;">
       		<ul id="portfolio_dental_content_wrap" class="d-flex" style="padding-left:0px; flex-wrap: wrap; width:1146px;">
	            <c:forEach items="${homeInteriorList}" var="list" begin="0" end="5">
	            	<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px;"> 
	                    <a href="${pageContext.request.contextPath}/portfolio_dental/portfolio_dental_detail?ino=${list.ino}" class="portfolio_dental_content_a">
	                        <img class="portfolio_dental_content_img" src="/springframework-mini-project/portfolio_dental/portfolioDisplay?fileName=${list.imImgPath}"/>
	                        <b class="mt-3 ml-5 mr-5 portfolio_dental_content_b">${list.isummary}</b>
	                        <small class="d-block portfolio_dental_content_sm">mansik</small>
	                    </a>
	                </li>
	            </c:forEach>
            </ul>
       </div>
    </section>
    
   <section data-aos="fade-up" data-aos-duration="1500" class="d-flex flex-column text-center pt-3 pb-5" style="width: 1114px; background-color: white; box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); margin: 0 auto;">
   	   <h2>O'Molaire Osstem</h2>
       <p>치과에 최적화된 인테리어로 고객의 눈높이에 맞는 맞춤제안을 제공합니다.</p>
       <div>
           <iframe width="850" height="500" src="https://www.youtube.com/embed/I_XEXqWZPBQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
       </div>
   </section>
  
    <section data-aos="fade-up" data-aos-duration="1500"  class="d-flex flex-column text-center mt-5 mb-5">
           <h2>Osstem Medical Equipment</h2>
           <p>오스템 치과장비</p>
           <div class="d-flex" style=" margin:0 auto;">
	           <ul id="portfolio_dental_content_wrap" class="d-flex" style="padding-left:0px; flex-wrap: wrap; width:1146px;">
	            <c:forEach items="${homeProductList}" var="list" begin="0" end="5">
	            	<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px;"> 
	                    <a href="${pageContext.request.contextPath}/equipment/equipment_detail_consult?modelNumber=${list.modelNumber}" class="portfolio_dental_content_a">
	                        <img class="portfolio_dental_content_img" src="/springframework-mini-project/equipment/display?fileName=${list.pattachoname}"/>
	                        <b class="mt-3 ml-5 mr-5 portfolio_dental_content_b">${list.productName}</b>
	                        <small class="d-block portfolio_dental_content_sm">subin</small>
	                    </a>
	                </li>
	            </c:forEach>
            </ul>
           </div>
   </section>
   <section data-aos="fade-up" data-aos-duration="1500" class="pb-5">
       <p style="font-size: 30px;">Special Benefit</p>
       <p>오스템과 함께 인테리어를 시작하세요</p>
       <div style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); width: 1114px;  margin: 0 auto;"><img style="width: 1114px;" src="${pageContext.request.contextPath}/resources/pngs/main_benefit.PNG"/></div>
   </section> 
</main>
<script>
	AOS.init({
	  duration: 1000
	});
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>