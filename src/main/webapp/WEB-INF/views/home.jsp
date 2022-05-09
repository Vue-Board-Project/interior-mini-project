<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<style>
.main-nav-list a {
 text-decoration: none; color: black;
}
</style>
<main class="pt-5 pb-5 d-flex vw-100" id="main_content_wrap" style="background-color: #faf9f6; font-family: 'MinSans-Regular';">
	<aside id="mainNav" class="">
		<ul class="main-nav-list" style="list-style:none; text-decoration: none; color: black;">
			<li class="on">
				<a class="btn">
					<div style="background-color: #272723; display: inline-block; width: 30px; height: 30px; border-radius: 15px;"><i class="fa-solid fa-house" style="color: white;"></i></div><span style="color: #272723">HOME</span>
			</a></li>
			
			<li class="">
				<a class="btn">
					<div style="background-color: #272723; display: inline-block;"><i class="fa-solid fa-paint-roller" style="color: white;"></i></div><span style="color: #272723">INTERIOR</span>
			</a></li>
			
			<li class="">
				<a class="btn">
					<div style="background-color: #272723; display: inline-block;"><i class="fa-solid fa-tooth" style="color: white;"></i></div><span style="color: #272723">PRODUCT</span>
			</a></li>
			<li class="">
				<a class="btn">
					<div style="background-color: #272723; display: inline-block;"><i class="fa-solid fa-newspaper" style="color: white;"></i></div><span style="color: #272723">NEWS</span>
			</a></li>
		</ul>
	</aside>
	<div class="d-flex" style="margin: 0 auto;">
		<div class="d-flex flex-column">
	 	    <div class="mr-5" style="width: 450px;">
	     	    <b style="font-size: 50px;">O'Molaire Osstem</b>
	      	    <p style="font-size: 15px;">치과 종합 인테리어, 인테리어에 영혼을 불어넣다.</p>
	      	    <div id="main_content_1">
		      	    <p class="mt-2" style="font-size: 20px; color: #404040;">편안하고 신뢰받는 공간 미학 <span>오몰레어 인테리어 연구소</span></p>
		      	    <p style="color: #606060;">오몰레어는 고객에게 토탈 솔루션을 제공하기 위해 치과 환경 변화에 따른 디자인 트렌드와 치과만의 디테일 디자인을 지속적으로 연구 개발하고 있습니다.</p>
	      	    </div>
	      	    <div id="main_content_2" style="display: none;">
	      	    	<p class="mt-2" style="font-size: 20px; color: #404040;"><span>개원의 필수 요소</span>인 치과 인테리어</p>
		      	    <p style="color: #606060;">치과 인테리어는 디자인과 기능적 요소가 유기적으로 결합되어야 합니다. 이제는 선택이 아닌 필수 요소인 인테리어를 오몰레어와 시작하십시오.</p>
	      	    </div>
	   	    </div>
	   	    <div class="d-flex">
	   	    	<div><button id="main_before_btn" type="button" style="border: none; background: none; width: 30px;"><i class="fa-solid fa-arrow-left-long"></i></button></div>
		   	    <div class="ml-1" style="width: 50px;">
					<p><span id="main_content_btn_1">01</span>·<span id="main_content_btn_2">02</span></p>
				</div>
				<div><button id="main_next_btn" type="button" style="border: none; background: none; width: 30px;"><i class="fa-solid fa-arrow-right-long"></i></button></div>
	   	    </div>
		</div>
		
   	    <div>
		    <img style="width: 800px;" src="${pageContext.request.contextPath}/resources/illustration/art_164915725959_5bbc07.jpg">    
   	    </div>
    </div>
   
</main>
<script src="${pageContext.request.contextPath}/resources/js/jsHome.js"></script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>