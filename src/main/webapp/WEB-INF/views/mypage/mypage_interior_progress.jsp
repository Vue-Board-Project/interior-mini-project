<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div id = "mypage_interior_progress_jsp">
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
	     					<img src = "${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step1.png" alt = "현장">
	     				</button>
	     				<div class = "mypage_interior_step_text">
	     				상담 예약
	     				</div>
	     			</div>
	     			<div id = "mypage_interior_step2">
	     				<button class = "mypage_interior_progressbar_images" onclick = "onDisplayStep2()">
	     					<img src = "${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step2.png" alt = "컨셉미팅">
	     				</button>
	     				<div class = "mypage_interior_step_text">
	     				견적
	     				</div>
	     			</div>
	     			<div id = "mypage_interior_step3">
	     				<button class = "mypage_interior_progressbar_images" onclick = "onDisplayStep3()">
	     					<img src = "${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step3.png" alt = "시안미팅">
	     				</button>
	     				<div class = "mypage_interior_step_text">
	     				철거 공사
	     				</div>
	     			</div>
	     			<div id = "mypage_interior_step4">
	     				<button class = "mypage_interior_progressbar_images"  onclick = "onDisplayStep4()">
	     					<img src = "${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step4.png" alt = "계약">
	     				</button>
	     				<div class = "mypage_interior_step_text">
	     				도배 공사
	     				</div>
	     			</div>
	     			<div id = "mypage_interior_step5">
	     				<button class = "mypage_interior_progressbar_images"  onclick = "onDisplayStep5()">
	     					<img src = "${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step5.png" alt = "공사현황">
	     				</button>
	     				<div class = "mypage_interior_step_text">
	     				가구 배치
	     				</div>
	     			</div>
	     			<div id = "mypage_interior_step6">
	     				<button class = "mypage_interior_progressbar_images"  onclick = "onDisplayStep6()">
	     					<img src = "${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step6.png" alt = "공사완료">
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
						<%@ include file="/WEB-INF/views/mypage/samplescript.jsp" %>
					</article>
					
					<div class = "interior_progress_step_image_content">
						<img src = "${pageContext.request.contextPath}/resources/images/mypage/interior_sample1.png" alt ="샘플 이미지1">
						<img src = "${pageContext.request.contextPath}/resources/images/mypage/interior_sample2.png" alt ="샘플 이미지2">
						<img src = "${pageContext.request.contextPath}/resources/images/mypage/interior_sample3.png" alt ="샘플 이미지3">
						<img src = "${pageContext.request.contextPath}/resources/images/mypage/interior_sample4.png" alt ="샘플 이미지4">
						<img src = "${pageContext.request.contextPath}/resources/images/mypage/interior_sample5.png" alt ="샘플 이미지5">
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
						최종 파일은 다음과 같습니다. 
					</article>
					<a href="${pageContext.request.contextPath}/resources/images/test.pdf" download="" class= "mypage_interior_progress_downloadform">최종 파일</a>
					
				</div>
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
	         
	        
        }
        
        #mypage_interior_progress_jsp{
        	  background: #faf9f6;
        }

        
       #mypage_interior_steps{
        	height : 30%;
			position : relative;
       		display: flex;
       		flex-direction: row; 
       		justify-content: space-evenly;
       }
       
         .mypage_interior_progressbar_images{
        	width : 150px;
        	height : 180px;
        	border : none;
        	background : #fff;
        }
        
         .mypage_interior_progressbar_images img{
        	width : 100px;
        	height : 100px;
        	padding : auto;
        }

        /*내용 적을 곳 */
        #interior_progress_content{
        	position : relative; 
        	margin-top : 140px;
        	margin-left : 5%;
        	padding : auto;
        	width : 90%; 
        	height : 150%;
        	background-color : #fff;
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
        	background-color : #fff;
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
        	background-color : #fff;
        	border-radius : 3%;
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
        	background-color : #fff;
        	border-radius : 3%;
        }
        
        .interior_progress_step_image_content img{
        	background-size: contain;
			background-repeat: no-repeat;
			width : 90%;
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
