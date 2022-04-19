<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>

<div class="mypage_interior_progress_section">
		<div class = "header_section">
			<div class="text">인테리어 진행내역</div>
          	<span class="sub_text">인테리어 진행 내역을 조회합니다.</span>
          	<hr width = 90%>
         </div>
          
     	<div class="content_section">
     	
     	
     	<div id = "mypage_interior_steps">
     			<div id = "mypage_interior_step1">
     				<button class = "mypage_interior_progressbar_images" onclick = "onDisplayStep1()">
     					<img src = "${pageContext.request.contextPath}/resources/images/mypage_interior_step1.jpg" alt = "상담 예약">
     				</button>
     				<div class = "mypage_interior_step_text">
     				상담 예약
     				</div>
     			</div>
     			<div id = "mypage_interior_step2">
     				<button class = "mypage_interior_progressbar_images" onclick = "onDisplayStep2()">
     					<img src = "${pageContext.request.contextPath}/resources/images/mypage_interior_step2.jpg" alt = "견적">
     				</button>
     				<div class = "mypage_interior_step_text">
     				견적
     				</div>
     			</div>
     			<div id = "mypage_interior_step3">
     				<button class = "mypage_interior_progressbar_images" onclick = "onDisplayStep3()">
     					<img src = "${pageContext.request.contextPath}/resources/images/mypage_interior_step3.jpg" alt = "철거 공사">
     				</button>
     				<div class = "mypage_interior_step_text">
     				철거 공사
     				</div>
     			</div>
     			<div id = "mypage_interior_step4">
     				<button class = "mypage_interior_progressbar_images"  onclick = "onDisplayStep4()">
     					<img src = "${pageContext.request.contextPath}/resources/images/mypage_interior_step4.jpg" alt = "전기 설치 및 도배공사">
     				</button>
     				<div class = "mypage_interior_step_text">
     				도배 공사
     				</div>
     			</div>
     			<div id = "mypage_interior_step5">
     				<button class = "mypage_interior_progressbar_images"  onclick = "onDisplayStep5()">
     					<img src = "${pageContext.request.contextPath}/resources/images/mypage_interior_step5.png" alt = "가구 배치">
     				</button>
     				<div class = "mypage_interior_step_text">
     				가구 배치
     				</div>
     			</div>
     			<div id = "mypage_interior_step6">
     				<button class = "mypage_interior_progressbar_images"  onclick = "onDisplayStep6()">
     					<img src = "${pageContext.request.contextPath}/resources/images/mypage_interior_step6.jpg" alt = "최종 확인">
     				</button>
     				<div class = "mypage_interior_step_text">
     				최종 확인
     				</div>
     			</div>
     	</div>
     
		<div id = "interior_progress_content">
			<div id = "interior_progress_step1" class = "interior_progress_contents">
				<article class = "interior_progress_step_text_content">
					<h2>상담 예약</h2>
					프론트 짜는게 너무 바빠서 일단은 내용만 먼저 채우고 나머지는 나중에 채울게. ㄹㅇ 개정신없다. 
					나이 서른 되기도 전에 늙어죽겠네.
					개빡쳐 원영이 딸기 두 손으로 먹었다고 주변에서 다 뭐라고 함. 손 한개로 먹고 싶던 손 세개로 먹고 싶던
					내 조카딸 하고 싶은대로 하라 그래~~~~! 
					텍스틀 얼마나 넣어야 스크롤 바가 나올까...
					요즘 아이브랑 레드벨벳 말고는 딱히 들을만한 노래가 있는지 모르겠음.
					일돌이나 덕질하기엔 우리 AKB48이 예전 고전 이미지가 사라져서
					No Way Man은 진짜 최악의 가사였다. AKB는 작사가가 한명이거든
					그 사람 슬럼프거나 치매 걸린듯. 옛날 가사 느낌이 전혀 안나.
					
					이정도면 스크롤 바 뜨겠지. 보자. 
					
					이래도 안 뜸 복붙 두번 해볼게.
					
					프론트 짜는게 너무 바빠서 일단은 내용만 먼저 채우고 나머지는 나중에 채울게. ㄹㅇ 개정신없다. 
					나이 서른 되기도 전에 늙어죽겠네.
					개빡쳐 원영이 딸기 두 손으로 먹었다고 주변에서 다 뭐라고 함. 손 한개로 먹고 싶던 손 세개로 먹고 싶던
					내 조카딸 하고 싶은대로 하라 그래~~~~! 
					텍스틀 얼마나 넣어야 스크롤 바가 나올까...
					요즘 아이브랑 레드벨벳 말고는 딱히 들을만한 노래가 있는지 모르겠음.
					일돌이나 덕질하기엔 우리 AKB48이 예전 고전 이미지가 사라져서
					No Way Man은 진짜 최악의 가사였다. AKB는 작사가가 한명이거든
					그 사람 슬럼프거나 치매 걸린듯. 옛날 가사 느낌이 전혀 안나.
					프론트 짜는게 너무 바빠서 일단은 내용만 먼저 채우고 나머지는 나중에 채울게. ㄹㅇ 개정신없다. 
					나이 서른 되기도 전에 늙어죽겠네.
					개빡쳐 원영이 딸기 두 손으로 먹었다고 주변에서 다 뭐라고 함. 손 한개로 먹고 싶던 손 세개로 먹고 싶던
					내 조카딸 하고 싶은대로 하라 그래~~~~! 
					텍스틀 얼마나 넣어야 스크롤 바가 나올까...
					요즘 아이브랑 레드벨벳 말고는 딱히 들을만한 노래가 있는지 모르겠음.
					일돌이나 덕질하기엔 우리 AKB48이 예전 고전 이미지가 사라져서
					No Way Man은 진짜 최악의 가사였다. AKB는 작사가가 한명이거든
					그 사람 슬럼프거나 치매 걸린듯. 옛날 가사 느낌이 전혀 안나.
				</article>
				
				<div class = "interior_progress_step_image_content">
					<img src = "${pageContext.request.contextPath}/resources/images/interior_sample1.png" alt ="샘플 이미지1">
					<img src = "${pageContext.request.contextPath}/resources/images/interior_sample2.png" alt ="샘플 이미지2">
					<img src = "${pageContext.request.contextPath}/resources/images/interior_sample3.png" alt ="샘플 이미지3">
					<img src = "${pageContext.request.contextPath}/resources/images/interior_sample4.png" alt ="샘플 이미지4">
					<img src = "${pageContext.request.contextPath}/resources/images/interior_sample5.png" alt ="샘플 이미지5">
				</div>
			</div>
			<div id = "interior_progress_step2" class = "interior_progress_contents">
				<h2>견적</h2>
			</div>
			<div id = "interior_progress_step3" class = "interior_progress_contents">
				<h2>철거 공사</h2>
			</div>
			<div id = "interior_progress_step4" class = "interior_progress_contents">
				<h2>전기 설치 및 도배공사</h2>
			</div>
			<div id = "interior_progress_step5" class = "interior_progress_contents">
				<h2>가구 배치</h2>
			</div>
			<div id = "interior_progress_step6" class = "interior_progress_result_content">
				<h2>최종 확인</h2>
				<article>
					최종 파일은 다음과 같습니다~ 블라블라블라블라블라 
				</article>
				<a href="${pageContext.request.contextPath}/resources/images/test.pdf" download="" class= "mypage_interior_progress_downloadform">최종 파일</a>
				
			</div>
		</div>
	</div>
</div>

<style>

		#sidebar_mypage .mypage_list #list_interior_progress{
        	form :active;
        	color : #ca5c0d;
        	font-weight: 800;
        }
        
      
       .mypage_interior_progress_section{
        
	         position: relative;
	          background: #faf9f6;
	          min-height: 100vh;
	          top: 0;
	          left: 249px;
	          width: calc(100% - 250px);
	          transition: all 0.5s ease;
	          z-index: 2;
        }

        
       #mypage_interior_steps{
        	height : 30%;
			position : relative;
       		display: flex;
       		flex-direction: row; 
       		justify-content: space-evenly;
			
			/*flex-wrap: wrap;*/
       }
       
         .mypage_interior_progressbar_images{
        	width : 150px;
        	height : 200px;
        	border : none;
        	background : #faf9f6;
        }
        
         .mypage_interior_progressbar_images img{
        	width : 150px;
        	height : 200px;
        	padding : auto;
        }

        /*내용 적을 곳 */
        #interior_progress_content{
        	position : relative; 
        	margin-top : 210px;
        	margin-left : 5%;
        	padding : auto;
        	width : 90%;
        	height : 150%;
        	background-color : #e8e8db;
        }
        
        #interior_progress_step2{
        	display : none;
        }
        
         #interior_progress_step3{
        	display : none;
        }
        
         #interior_progress_step4{
        	display : none;
        }
        
         #interior_progress_step5{
        	display : none;
        }
        
         #interior_progress_step6{
        	display : none;
        }
        
        /*각 절차 이미지 밑에 한글 설명*/
        .mypage_interior_step_text{
        	text-align: center;
        	background-color : #e8e8db;
        	color : #272723;
        	width : 150px;
        	margin-left : 3%;
        }
        
        /*이미지랑 텍스트 설명 row로 정렬 */
        .interior_progress_contents{
       		display: flex;
       		flex-direction: row; 
       		justify-content: space-evenly;
        }
        
       /* 각 절차 설명 중 텍스트 쪽*/
        .interior_progress_step_text_content{
        	margin-top : 1%;
        	margin-left : 2%;
        	margin-right : 2%;
        	width : 45%;
        	/*나중에 화면 맞춰서 height 길이 조절해야 함.*/
        	height : 280px;
        	border : 1px solid #ca5c0d;
        	overflow : scroll;
        }
        
        .interior_progress_step_image_content{
        	margin-top : 1%;
        	margin-left : 2%;
        	margin-right : 2%;
        	width : 45%;
        	/*나중에 화면 맞춰서 height 길이 조절해야 함.*/
        	height : 280px;
        	border : 1px solid #ca5c0d;
        	overflow : scroll;
        	
        }
        
        .interior_progress_step_image_content img{
        	background-size: contain;
			background-repeat: no-repeat;
			width : 90%;
        }
        
        /*다운로드 형식 만들기*/
        .mypage_interior_progress_downloadform{
        	/*background-color : #d5d5d8;*/
        }
        
</style>

<script>
	function onDisplayStep1(){
		$('#interior_progress_step1').show();
		$('#interior_progress_step2').hide();
		$('#interior_progress_step3').hide();
		$('#interior_progress_step4').hide();
		$('#interior_progress_step5').hide();
		$('#interior_progress_step6').hide();
	}
	
	function onDisplayStep2(){
		$('#interior_progress_step1').hide();
		$('#interior_progress_step2').show();
		$('#interior_progress_step3').hide();
		$('#interior_progress_step4').hide();
		$('#interior_progress_step5').hide();
		$('#interior_progress_step6').hide();
	}

	function onDisplayStep3(){
		$('#interior_progress_step1').hide();
		$('#interior_progress_step2').hide();
		$('#interior_progress_step3').show();
		$('#interior_progress_step4').hide();
		$('#interior_progress_step5').hide();
		$('#interior_progress_step6').hide();
	}

	function onDisplayStep4(){
		$('#interior_progress_step1').hide();
		$('#interior_progress_step2').hide();
		$('#interior_progress_step3').hide();
		$('#interior_progress_step4').show();
		$('#interior_progress_step5').hide();
		$('#interior_progress_step6').hide();
	}

	function onDisplayStep5(){
		$('#interior_progress_step1').hide();
		$('#interior_progress_step2').hide();
		$('#interior_progress_step3').hide();
		$('#interior_progress_step4').hide();
		$('#interior_progress_step5').show();
		$('#interior_progress_step6').hide();
	}

	function onDisplayStep6(){
		$('#interior_progress_step1').hide();
		$('#interior_progress_step2').hide();
		$('#interior_progress_step3').hide();
		$('#interior_progress_step4').hide();
		$('#interior_progress_step5').hide();
		$('#interior_progress_step6').show();
	}

	


</script>



<%@ include file="/WEB-INF/views/common/footer.jsp" %>
