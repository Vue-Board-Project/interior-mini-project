<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<style>
/* 메인홈 */
.main-nav-list a {
 text-decoration: none; color: black;
 padding-left: 0;
}
.main_nav_list_icon{
display: inline-block; width: 30px; height: 30px; border-radius: 15px;
}
#main_nav_list_icon_home {
background-color: #272723;
}
#main_nav_list_icon_interior{
background-color: #6a6a6a;
}
#main_nav_list_icon_product{
background-color: #6a6a6a;
}
#main_nav_list_icon_news{
background-color: #6a6a6a;
}
.main_nav_list_icon i {
color: white;
padding-top: 7px;
}
.main_nav_list hr {
 margin-left: 0; padding-left: 0;
 margin-right: 0; padding-right: 0;
}

/* 인테리어 */
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
</style>
<main class="pt-5 pb-5 d-flex" id="main_content_wrap" style="background-color: #faf9f6; font-family: 'MinSans-Regular'; height: 837px;">
	<aside id="mainNav" class="text-center" style="flex-grow: 1; margin: auto 0;">
		<ul class="main_nav_list" style="list-style:none; text-decoration: none; color: black; margin-left: 0; padding-left: 0;">
			<li class="d-flex" id="main_nav_home">
				<hr style="border: thin solid black; width: 50px"/>
				<div class="main_nav_list_icon" id="main_nav_list_icon_home"><i class="fa-solid fa-house"></i></div>
				<a id="main_nav_list_home" class="btn">
					<span style="color: #272723">HOME</span>
				</a>
			</li>
			
			<li class="d-flex" id="main_nav_interior">
				<hr style="border: thin solid black; width: 50px; visibility: hidden;"/>
				<div class="main_nav_list_icon" id="main_nav_list_icon_interior"><i class="fa-solid fa-paint-roller"></i></div>
				<a id="main_nav_list_interior" class="btn">
					<span style="color: #6a6a6a">INTERIOR</span>
				</a>
			</li>
			
			<li class="d-flex" id="main_nav_product">
				<hr style="border: thin solid black; width: 50px; visibility: hidden;"/>
				<div class="main_nav_list_icon" id="main_nav_list_icon_product"><i class="fa-solid fa-tooth"></i></div>
				<a id="main_nav_list_product" class="btn">
					<span style="color: #6a6a6a">PRODUCT</span>
				</a>
			</li>
			<li class="d-flex" id="main_nav_news">
				<hr style="border: thin solid black; width: 50px; visibility: hidden;"/>
				<div class="main_nav_list_icon" id="main_nav_list_icon_news"><i class="fa-solid fa-newspaper"></i></div>
				<a id="main_nav_list_news" class="btn">
					<span style="color: #6a6a6a">NEWS</span>
				</a>
			</li>
		</ul>
	</aside>
	<div style="margin: auto auto; flex-grow: 5">
		<div id="main_home_content" style="display: none;">
			<div class="d-flex">
				<div class="d-flex flex-column">
			 	    <div class="mr-5" style="width: 600px; height: 500px;">
			     	    <b style="font-size: 60px;">O'Molaire Osstem</b>
			      	    <p style="font-size: 20px;">치과 종합 인테리어, 국내 최초 다이렉트 인테리어</p>
			      	    <div id="main_content_1">
				      	    <p class="mt-2" style="font-size: 30px; color: #404040;">장비부터 인테리어까지 온라인으로 한번에!<span></span></p>
				      	    <p style="color: #606060;">장비 따로 상담 따로가 아닌 설계, 시공, 장비 A/S 모두를 책임지니까!</p>
				      	    <p style="color: #606060;">전문가가 구성한 트렌디하고 모던한 다양한 스타일로 실패없는 인테리어!</p>
				      	    <p style="color: #606060;">치과장비 A-Z까지 구매와 상담 설치를 동시에!</p>
			      	    </div>
			      	    <div id="main_content_2" style="display: none;">
			      	    	<p class="mt-2" style="font-size: 30px; color: #404040;"><span>개원의 필수 요소</span>인 치과 인테리어</p>
				      	    <p style="color: #606060;">치과 인테리어는 디자인과 기능적 요소가 유기적으로 결합되어야 합니다. 이제는 선택이 아닌 필수 요소인 인테리어를 오몰레어와 시작하십시오.</p>
			      	    </div>
			   	    </div>
			   	    <div class="d-flex">
			   	    	<div><button id="main_before_btn" type="button" style="border: none; background: none; width: 30px;"><i class="fa-solid fa-arrow-left-long"></i></bu치과 종합 인테리어, 인테리어에 영혼을 불어넣다.tton></div>
				   	    <div class="ml-1" style="width: 50px;">
							<p><span id="main_content_btn_1">01</span>·<span id="main_content_btn_2">02</span></p>
						</div>
						<div><button id="main_next_btn" type="button" style="border: none; background: none; width: 30px;"><i class="fa-solid fa-arrow-right-long"></i></button></div>
			   	    </div>
				</div>
				
		   	    <div class="d-flex flex-column">
			   	    <div class="d-flex" style="background-color: white; width: 800px; height: 220px; position: relative; box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.2);">
			   	    	<h3 class="m-3">O'Molaire Osstem</h3>
			   	    	<img style="height: 200px; width: 350px; position: absolute; right: 0; bottom: 0;" src="${pageContext.request.contextPath}/resources/illustration/art_164915725959_5bbc07.jpg">
			   	    	<a style="position: absolute; left: 10px; bottom: 10px; background-color: ">인테리어로 바로가기</a>
			   	    </div>
			   	    <div class="d-flex" style="background-color: white; width: 800px; height: 220px; position: relative; box-shadow: 0px 0px 8px 0px rgba(0,0,0,0.2);">
			   	    	<h3 class="m-3">Osstem Medical Equipment</h3>
			   	    	<img style="height: 200px; width: 350px; position: absolute; right: 0; bottom: 0;" src="${pageContext.request.contextPath}/resources/illustration/k2chair.png">
						<a style="position: absolute; left: 10px; bottom: 10px;">치과장비로 바로가기</a>			   	    	
			   	    </div>        
		   	    </div>
	   	    </div>
		</div>
   	    <div id="main_interior_content" style="display: none;">
	   	    <section class="d-flex flex-column text-center">
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
   	    </div>
   	    <div id="main_product_content" style="display: none;">
   	    </div>
   	    <div id="main_news_content" style="display: none;">
   	    </div> 
    </div>
   
</main>
<script src="${pageContext.request.contextPath}/resources/js/jsHome.js"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>