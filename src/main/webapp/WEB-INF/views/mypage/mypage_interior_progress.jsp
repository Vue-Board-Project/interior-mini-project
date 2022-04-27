<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

</div>
<div id = "mypage_interior_progress_jsp">
	<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
	
	<div class="mypage_interior_progress_section">
			<div class = "header_section">
				<div class="text">인테리어 진행내역</div>
	          	<span class="sub_text">인테리어 진행 내역을 조회합니다.</span>
	          	<hr width = 90%>
	         </div>
	         <!-- 보경 수정 -->
			 <main style="width: 1400px;" class="mx-auto mb-5">
				<div style="width: 95%;" class="mx-auto">
					<!-- 인테리어 단계별 네비바 -->
					<nav>
						<div style="display: flex;">
							<section class="text-center mypage_interior_step_btn" title="off_interview">
								<button class="btn shadow-none misbtn_button"onclick="mypage_interior_step_btn('off_interview')">
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step1.png" height="80px" >
									</div>
									<p style="font-family: 'MinSans-Medium'; font-size: 20px;">현장상담</p>
								</button>
							</section>
							<section 
								
								class="text-center mypage_interior_step_btn" title="design">
								<button class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('design')" >
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step2.png" height="80px" >
									</div>
									<p class="misbtn_button_p">설계</p>
								</button>

							</section>
							<section class="text-center mypage_interior_step_btn" title="contract">
								<button class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('contract')">
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step3.png" height="80px" >
									</div>
									<p class="misbtn_button_p">계약</p>
								</button>
							</section>
							<section class="text-center pb-2 mypage_interior_step_btn" title="currentSituation">
								<button class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('currentSituation')">
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step4.png" height="80px" >
									</div>
									<p class="misbtn_button_p">공사현황</p>
								</button>

							</section>
							<section class="text-center mypage_interior_step_btn" title="complete"> 
								<button class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('complete')">
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step5.png" height="80px" >
									</div>
									<p class="misbtn_button_p">공사완료</p>
								</button>
							</section>
							<section class="text-center mypage_interior_step_btn" title="afterService">
								<button class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('afterService')">
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/interior_progress_step6.png" height="80px" >
									</div>
									<p class="misbtn_button_p">사후관리</p>
								</button>
							</section>
						</div>
					</nav>
					<!-- 안쪽 내용 -->
					<div class="border" style="width: 100%;">
						<!-- 버튼 선택 시 변경될 div -->
						<!-- 현장상담 -->
						<div class="mx-auto py-5" style="width: 95%;" id="misb_off_interview">
							<!-- 날짜 변경 부분 -->
							<section style="width: 100;" class="mb-4  misb_calender_wrap">
								<div  class="mx-auto  misbc_calender_wrap">
									<div style="display: inline-block; width: 150px; padding: 10px; background-color: #f1f1f1;" class="border">
										설계 진행 예정
									</div>
									<div  style="display: inline-block; width: 250px;  height:50px; padding: 10px;" class="border">
										2022.06.25
									</div>
								</div>
							</section>
							<!-- 기본 사항 테이블 -->
							<section style="width: 100%;" class="mb-4">
								<table class="table table-bordered mx-auto" style="width: 90%;">
									<tr>
										<td style="background-color: #f1f1f1;">
											접수번호
										</td>
										<td>
											테스트
										</td>
										<td style="background-color: #f1f1f1;">
											이름
										</td>
										<td>
											테스트
										</td>
									</tr>
									<tr>
										<td  style="background-color: #f1f1f1;">
											평수
										</td>
										<td>
											테스트
										</td>
										<td  style="background-color: #f1f1f1;">
											스타일
										</td>
										<td>
											테스트
										</td>
									</tr>
								</table>
							</section>
							<!-- 추가요청사항 작성 div  -->
							<section style="width: 100%;"  class="mb-5">
								<div style="width: 90%; height: 250px; background-color: #f1f1f1;" class="mx-auto p-4">
									<p>추가 요청 사항</p>
									<p>없음.</p>
								</div>
							</section>
							<!-- 솔루션과 도면 작성 부분 -->
							<section style="width: 100%;"  class="mb-4">
								<div style="display: flex; width: 90%;" class="mx-auto">
									<div style="display: inline-block; width: 50%;">
										<div>
											<h3>Soultion</h3>
											<div style="width: 90%; height: 300px; background-color: #f1f1f1;" class="mt-4 pl-5 pt-5">
												<p>1. 테스트</p>
												<p>1. 테스트</p>
												<p>1. 테스트</p>
												<p>1. 테스트</p>
											</div>
										</div>

									</div>
									<div style="display: inline-block; width: 50%; height: 400px" class="border">
										<div style="width: 100%; height: 400px; display:flex; justify-content:center; align-items:center;">
											<img src="${pageContext.request.contextPath}/resources/images/mypage/drawing2.jpg" width="500px" class="my-auto">
										</div>
									</div>
								</div>
							</section>
							<!-- 첨부파일 부분 -->
							<section style="width: 100%;"  class="mb-4">
								<div style="width: 90%;" class="mx-auto">
									<div style="border-bottom: 2px solid #272723; width: 170px;" class="text-center mb-2">
										<h3>첨부파일목록</h3>
									</div>
									<div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
									</div>
								</div>
							</section>
						</div>
						<!-- 설계 -->
						<div class="mx-auto py-5" style="width: 95%;" id="misb_design">
							<!-- 날짜 변경 부분 -->
							<section style="width: 100;" class="mb-4">
								<div class="mx-auto misbc_calender_wrap">
									<div style="display: inline-block; width: 150px; padding: 10px; background-color: #f1f1f1;" class="border">
										계약 진행 예정
									</div>
									<div  style="display: inline-block; width: 250px;  height:50px; padding: 10px;" class="border">
										2022.06.25
									</div>
								</div>
							</section>
							<!-- 기본 사항 테이블 -->
							<section style="width: 100%;" class="mb-4">
								<table class="table table-bordered mx-auto" style="width: 90%;">
									<tr>
										<td style="background-color: #f1f1f1;">
											접수번호
										</td>
										<td>
											테스트
										</td>
										<td style="background-color: #f1f1f1;">
											이름
										</td>
										<td>
											테스트
										</td>
									</tr>
									<tr>
										<td  style="background-color: #f1f1f1;">
											평수
										</td>
										<td>
											테스트
										</td>
										<td  style="background-color: #f1f1f1;">
											스타일
										</td>
										<td>
											테스트
										</td>
									</tr>
								</table>
							</section>
							<!-- 추가요청사항 작성 div  -->
							<section style="width: 100%;"  class="mb-5">
								<div style="width: 90%; height: 250px; background-color: #f1f1f1;" class="mx-auto p-4">
									<p>설계 피드백</p>
									<p>없음.</p>
								</div>
							</section>
							<!-- 첨부파일 부분 -->
							<section style="width: 100%;"  class="mb-4">
								<div style="width: 90%;" class="mx-auto">
									<div style="border-bottom: 2px solid #272723; width: 170px;" class="text-center mb-2">
										<h3>첨부파일목록</h3>
									</div>
									<div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
									</div>
								</div>
							</section>
						</div>
						<!-- 계약 -->
						<div class="mx-auto py-5" style="width: 95%;" id="misb_contract">
							<!-- 날짜 변경 부분 -->
							<section style="width: 100;" class="mb-4">
								<div class="mx-auto misbc_calender_wrap">
									<div style="display: inline-block; width: 150px; padding: 10px; background-color: #f1f1f1;" class="border">
										공사 진행 예정
									</div>
									<div  style="display: inline-block; width: 250px;  height:50px; padding: 10px;" class="border">
										2022.06.25 ~ 2024.06.25
									</div>
								</div>
							</section>
							<!-- 기본 사항 테이블 -->
							<section style="width: 100%;" class="mb-4">
								<table class="table table-bordered mx-auto" style="width: 90%;">
									<tr>
										<td style="background-color: #f1f1f1;">
											접수번호
										</td>
										<td>
											테스트
										</td>
										<td style="background-color: #f1f1f1;">
											이름
										</td>
										<td>
											테스트
										</td>
									</tr>
									<tr>
										<td  style="background-color: #f1f1f1;">
											평수
										</td>
										<td>
											테스트
										</td>
										<td  style="background-color: #f1f1f1;">
											스타일
										</td>
										<td>
											테스트
										</td>
									</tr>
								</table>
							</section>
							<!-- 추가요청사항 작성 div  -->
							<section style="width: 100%;"  class="mb-5">
								<div style="width: 90%; height: 250px; background-color: #f1f1f1;" class="mx-auto p-4">
									<p>계약 요청 사항</p>
									<p>없음.</p>
								</div>
							</section>
							<!-- 첨부파일 부분 -->
							<section style="width: 100%;"  class="mb-5">
								<div style="width: 90%;" class="mx-auto">
									<div style="border-bottom: 2px solid #272723; width: 170px;" class="text-center mb-2">
										<h3>첨부파일목록</h3>
									</div>
									<div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
									</div>
								</div>
							</section>
							<!-- 계약 참고 이미지 링크  -->
							<section style="width: 100%;"  class="mb-5">
								<div style="width: 90%;" class="mx-auto">
									<div style="border-bottom: 2px solid #272723; width: 190px;" class="text-center mb-2">
										<h3>참고 치과 모델</h3>
									</div>
									<div class="d-flex" style=" margin:0 auto;">
										<div class="m-3 text-center" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); width: 350px; height: 300px;">
											<a href="portfolioDentalDeatail3" style="text-decoration: none; color: black;">
												<div>
													<img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_6.PNG" style="width: 350px; height: 200px;"/>
												</div>
												<div>
													<b class="mt-3" style="line-height: 3;">블랙 포인트를 준 시크한 인테리어</b>
													<small class="d-block" style="line-height: 1;">manok</small>
												</div>
											</a>
										</div>
										<div class="m-3 text-center" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); width: 350px; height: 300px;">
											<a href="portfolioDentalDeatail3" style="text-decoration: none; color: black;">
												<div>
													<img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_6.PNG" style="width: 350px; height: 200px;"/>
												</div>
												<div>
													<b class="mt-3" style="line-height: 3;">블랙 포인트를 준 시크한 인테리어</b>
													<small class="d-block" style="line-height: 1;">manok</small>
												</div>
											</a>
										</div>
										<div class="m-3 text-center" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); width: 350px; height: 300px;">
											<a href="portfolioDentalDeatail3" style="text-decoration: none; color: black;">
												<div>
													<img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_6.PNG" style="width: 350px; height: 200px;"/>
												</div>
												<div>
													<b class="mt-3" style="line-height: 3;">블랙 포인트를 준 시크한 인테리어</b>
													<small class="d-block" style="line-height: 1;">manok</small>
												</div>
											</a>
										</div>
									</div>
								</div>
							</section>
						</div>
						<!-- 공사현황 -->
						<div class="mx-auto py-5" style="width: 95%;" id="misb_currentSituation">
							<!-- 날짜 변경 부분 -->
							<section style="width: 100;" class="mb-4">
								<div class="mx-auto misbc_calender_wrap">
									<div style="display: inline-block; width: 150px; padding: 10px; background-color: #f1f1f1;" class="border">
										공사 진행 기간
									</div>
									<div  style="display: inline-block; width: 250px;  height:50px; padding: 10px;" class="border">
										2022.06.25 ~ 2022.06.27
									</div>
								</div>
							</section>
							<!-- 기본 사항 테이블 -->
							<section style="width: 100%;" class="mb-4">
								<table class="table table-bordered mx-auto" style="width: 90%;">
									<tr>
										<td style="background-color: #f1f1f1;">
											접수번호
										</td>
										<td>
											테스트
										</td>
										<td style="background-color: #f1f1f1;">
											이름
										</td>
										<td>
											테스트
										</td>
									</tr>
									<tr>
										<td  style="background-color: #f1f1f1;">
											평수
										</td>
										<td>
											테스트
										</td>
										<td  style="background-color: #f1f1f1;">
											스타일
										</td>
										<td>
											테스트
										</td>
									</tr>
								</table>
							</section>
							<!-- 추가요청사항 작성 div  -->
							<section style="width: 100%;"  class="mb-5">
								<div style="width: 90%; height: 250px; background-color: #f1f1f1;" class="mx-auto p-4">
									<p>공사 중 피드백</p>
									<p>없음.</p>
								</div>
							</section>
							<!-- 첨부파일 부분 -->
							<section style="width: 100%;"  class="mb-5">
								<div style="width: 90%;" class="mx-auto">
									<div style="border-bottom: 2px solid #272723; width: 170px;" class="text-center mb-2">
										<h3>첨부파일목록</h3>
									</div>
									<div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
									</div>
								</div>
							</section>
						</div>
						<!-- 공사완료 -->
						<div class="mx-auto py-5" style="width: 95%;" id="misb_complete">
							<!-- 날짜 변경 부분 -->
							<section style="width: 100;" class="mb-4">
								<div class="mx-auto misbc_calender_wrap">
									<div style="display: inline-block; width: 150px; padding: 10px; background-color: #f1f1f1;" class="border">
										설계 진행 예정
									</div>
									<div  style="display: inline-block; width: 250px;  height:50px; padding: 10px;" class="border">
										2022.06.25
									</div>
								</div>
							</section>
							<!-- 기본 사항 테이블 -->
							<section style="width: 100%;" class="mb-4">
								<table class="table table-bordered mx-auto" style="width: 90%;">
									<tr>
										<td style="background-color: #f1f1f1;">
											접수번호
										</td>
										<td>
											테스트
										</td>
										<td style="background-color: #f1f1f1;">
											이름
										</td>
										<td>
											테스트
										</td>
									</tr>
									<tr>
										<td  style="background-color: #f1f1f1;">
											평수
										</td>
										<td>
											테스트
										</td>
										<td  style="background-color: #f1f1f1;">
											스타일
										</td>
										<td>
											테스트
										</td>
									</tr>
								</table>
							</section>
							<!-- 추가요청사항 작성 div  -->
							<section style="width: 100%;"  class="mb-5">
								<div style="width: 90%; height: 250px; background-color: #f1f1f1;" class="mx-auto p-4">
									<p>공사 완료 피드백</p>
									<p>없음.</p>
								</div>
							</section>
							<!-- 첨부파일 부분 -->
							<section style="width: 100%;"  class="mb-5">
								<div style="width: 90%;" class="mx-auto">
									<div style="border-bottom: 2px solid #272723; width: 170px;" class="text-center mb-2">
										<h3>첨부파일목록</h3>
									</div>
									<div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
										<div class="p-3 mb-2 mypage_interior_add_file_div">
											<span>확정레이아웃.pdf</span><button class="btn btn-sm btn-secondary">down</button>
										</div>
									</div>
								</div>
							</section>
						</div>
						<!--사후관리 -->
						<div class="mx-auto py-5" style="width: 95%;" id="misb_afterService">
							<!-- 날짜 변경 부분 -->
							<section style="width: 100;" class="mb-4">
								<div class="mx-auto" style="width: 90%;">
									<div style="border-bottom: 2px solid #272723;" class="text-center mb-2">
										<h3>2022.03.04 신청 인테리어</h3>
									</div>
								</div>
							</section>
							<!-- 날짜 변경 부분 -->
							<section style="width: 100;" class="mb-4">
								<div class="mx-auto misbc_calender_wrap">
									<div style="display: inline-block; width: 150px; padding: 10px; background-color: #f1f1f1;" class="border">
										A/S 가능 기간
									</div>
									<div  style="display: inline-block; width: 250px;  height:50px; padding: 10px;" class="border">
										2022.06.25 ~ 2024.06-25
									</div>
									<div style="display: inline-block;" class="ml-3 pt-2">
										<button class="btn btn-secondary">장비 a/s 신청</button>
									</div>
								</div>
							</section>
							<!-- 기본 사항 테이블 -->
							<section style="width: 100%;" class="mb-4">
								<table class="table table-bordered mx-auto" style="width: 90%;">
									<tr>
										<td style="background-color: #f1f1f1;">
											접수번호
										</td>
										<td>
											테스트
										</td>
										<td style="background-color: #f1f1f1;">
											이름
										</td>
										<td>
											테스트
										</td>
									</tr>
									<tr>
										<td  style="background-color: #f1f1f1;">
											평수
										</td>
										<td>
											테스트
										</td>
										<td  style="background-color: #f1f1f1;">
											스타일
										</td>
										<td>
											테스트
										</td>
									</tr>
								</table>
							</section>
							<!-- 계약 참고 이미지 링크  -->
							<section style="width: 100%;"  class="mb-5">
								<div style="width: 90%;" class="mx-auto">
									<div style="border-bottom: 2px solid darkgrey; width: 230px;" class="text-center mb-2">
										<h3>치과 포트폴리오</h3>
									</div>
									<div class="d-flex" style=" margin:0 auto;">
										<div class="m-3 text-center" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); width: 350px; height: 300px;">
											<a href="portfolioDentalDeatail3" style="text-decoration: none; color: black;">
												<div>
													<img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_6.PNG" style="width: 350px; height: 200px;"/>
												</div>
												<div>
													<b class="mt-3" style="line-height: 3;">블랙 포인트를 준 시크한 인테리어</b>
													<small class="d-block" style="line-height: 1;">manok</small>
												</div>
											</a>
										</div>
								</div>
							</section>
						</div>
					</div>
				</div>

			 </main> 
	  
	</div>
</div>
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/mypage_interior.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/interior_consult_js/mypage_interior.js"></script>
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

        
    
       
        

</style>


<%@ include file="/WEB-INF/views/common/footer.jsp" %>
