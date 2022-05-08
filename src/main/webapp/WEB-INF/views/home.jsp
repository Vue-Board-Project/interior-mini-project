<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<style>
#portfolio_model_wrap{margin: 0 auto; font-family: 'MinSans-Regular';}
.portfolio_dental_content_cnt{font-size:14px; color:#7c7c7c;}
.portfolio_dental_content_cnt_p{line-height: 0; margin:0; padding:0;}
.portfolio_dental_content_b{line-height: 3;}
.portfolio_dental_content_sm{line-height: 1;}
.portfolio_dental_content_sm span{background-color: rgba(0,0,0,.2); border-radius: 10px; padding: 0 5px;}
.portfolio_dental_content_img{width: 350px; height: 200px;}
.portfolio_dental_content{
	width: 350px;
	background-color:white;
}
.portfolio_dental_content_a{
	text-decoration: none; color: black;
}
.portfolio_dental_content_a:hover{
	text-decoration: none; color: black;
}

@keyframes slidy {
0% { left: 0%; }
20% { left: 0%; }
25% { left: -100%; }
45% { left: -100%; }
50% { left: -200%; }
70% { left: -200%; }
75% { left: -300%; }
95% { left: -300%; }
100% { left: -400%; }
}

.slide_figure{
  position: relative;
  width: 500%;
  margin: 0;
  top:0;
  left: 0;
  text-align: left;
  font-size: 0;
  -webkit-animation: 20s slidy ease-in-out infinite;
  animation: 20s slidy ease-in-out infinite; 
}

</style>
<main id="main_content_wrap" class="text-center" style="background-color: #faf9f6; font-family: 'MinSans-Regular';">
   
	<div id="model_dental_main_img" class="text-center">
		<img style="height: 400px; width: 100%;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/portfolio_dental_ad.PNG"/>
	</div> 
	
	<section class="mt-5 mb-5">
 	  <div class="pb-5 pt-5" style="width: 1114px; margin: 0 auto;">
     	  <p style="font-size: 30px;">O'Molaire Osstem</p>
      	  <p>치과 종합 인테리어, 인테리어에 영혼을 불어넣다.</p>
		  <img style="width: 1114px;" src="${pageContext.request.contextPath}/resources/illustration/art_164915725959_5bbc07.jpg">    
   	  </div>
   </section>
   
   <section data-aos="fade-up" data-aos-duration="1500" class="d-flex flex-column text-center mt-5 mb-5">
       <h2>O'Molaire Osstem Interior</h2>
       <p>오스템 인테리어</p>
       <div class="d-flex" style=" margin:0 auto;">
       		<ul id="portfolio_dental_content_wrap" class="d-flex" style="padding-left:0px; flex-wrap: wrap; width:1146px;">
	            <c:forEach items="${homeInteriorList}" var="list" begin="0" end="5">
	            	<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px; box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.2);"> 
	                    <a href="${pageContext.request.contextPath}/portfolio_dental/portfolio_dental_detail?ino=${list.ino}" class="portfolio_dental_content_a">
	                        <img class="portfolio_dental_content_img" src="/springframework-mini-project/portfolio_dental/portfolioDisplay?fileName=${list.imImgPath}"/>
	                        <b class="mt-3 ml-5 mr-5 portfolio_dental_content_b">${list.isummary}</b>
	                        <small class="d-block portfolio_dental_content_sm"><span># ${list.istyle}</span> <span># ${list.allColor}</span></small>
	                    </a>
	                </li>
	            </c:forEach>
            </ul>
       </div>
    </section>
    
   <section data-aos="fade-up" data-aos-duration="1500" class="d-flex flex-column text-center pt-3 pb-5" style="background-color:white; width: 1114px; margin: 0 auto;">
   	   <h2>O'Molaire Osstem</h2>
       <p>치과에 최적화된 인테리어로 고객의 눈높이에 맞는 맞춤제안을 제공합니다.</p>
       <div>
           <iframe width="850" height="500" src="https://www.youtube.com/embed/I_XEXqWZPBQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
       </div>
   </section>
  
     <section data-aos="fade-up" data-aos-duration="1500" class="d-flex flex-column text-center mt-5 mb-5">
           <h2>Osstem Medical Equipment</h2>
           <p>오스템 치과장비</p>
           <div class="d-flex" style=" margin:0 auto;">
	           <ul id="portfolio_dental_content_wrap" class="d-flex" style="padding-left:0px; flex-wrap: wrap; width:1146px;">
	            <c:forEach items="${homeProductList}" var="productList" begin="0" end="5">
	            	<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px; box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.2);"> 
	                    <a href="${pageContext.request.contextPath}/equipment/equipment_detail?modelNumber=${chair.modelNumber}" class="portfolio_dental_content_a">
	                        <img class="portfolio_dental_content_img" src="/springframework-mini-project/mainHome/productDisplay?fileName=${productList.pattachoname}"/>
	                        <b class="mt-3 ml-5 mr-5 portfolio_dental_content_b">${productList.productName}</b>
	                        <small class="d-block portfolio_dental_content_sm">subin</small>
	                    </a>
	                </li>
	            </c:forEach>
            </ul>
           </div>
   </section>
	<section data-aos="fade-up" data-aos-duration="1500" class="mt-5 mb-5">
       <p style="font-size: 30px;">Special Benefit</p>
       <p>오스템과 함께 인테리어를 시작하세요</p>
       <div id="slide" class="oss_img_box" val="0" max="3" style="background-color:white; width: 1114px;  margin: 0 auto; overflow: hidden;">
         <figure class="slide_figure">
	        <img id="oss_img1" style="width: 1114px;" src="${pageContext.request.contextPath}/resources/pngs/oss_ad3_1.jpg">
	        <img id="oss_img2" style="width: 1114px;" src="${pageContext.request.contextPath}/resources/pngs/oss_ad3_2.jpg">
	        <img id="oss_img3" style="width: 1114px;" src="${pageContext.request.contextPath}/resources/pngs/oss_ad3_3.jpg">
	        <img id="oss_img1" style="width: 1114px;" src="${pageContext.request.contextPath}/resources/pngs/oss_ad3_4.jpg">
		 </figure>	       
   	   </div>
   </section>
   <section data-aos="fade-up" data-aos-duration="1500" class="pb-5">
 	  <div class="pb-5 pt-5" style="background-color: white; width: 1114px; margin: 0 auto;">
     	  <p style="font-size: 30px;">PROCESS</p>
      	  <p>인테리어 접수부터 사후관리까지 체계적인 프로세스로 운영되어 믿고 맡길 수 있습니다.</p>
      	  <img style="width: 1000px;" src="${pageContext.request.contextPath}/resources/pngs/oss_process.jpg"/>
   	  </div>
   </section>
</main>
<script>
	AOS.init({
	  duration: 1000
	});
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>