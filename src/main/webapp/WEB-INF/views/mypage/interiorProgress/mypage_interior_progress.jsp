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
	         
	         <input type = "hidden" name = "inputNm" value="${progress.intConsultNo}"/>
	         
	         <!-- 보경 수정 -->
			 <main style="width: 1400px;" class="mx-auto mb-5">
				<div style="width: 95%;" class="mx-auto">
					<!-- 인테리어 단계별 네비바 -->
					<nav>
						<div style="display: flex;">					
						<c:if test="${progress.pexpectedDate ne null}">
							<section class="text-center mypage_interior_step_btn" title="off_interview">
								<button class="btn shadow-none misbtn_button"onclick="mypage_interior_step_btn('off_interview')">
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step1_active.png" height="80px" >
									</div>
									<p style="font-family: 'MinSans-Medium'; font-size: 20px;">현장상담</p>
								</button>
							</section>
						</c:if>
						<c:if test="${progress.pexpectedDate eq null}">
							<section class="text-center mypage_interior_step_btn" title="off_interview">
								<button class="btn shadow-none misbtn_button"onclick="mypage_interior_step_btn('off_interview')" disabled>
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step1_deactive.png" height="80px" >
									</div>
									<p style="font-family: 'MinSans-Medium'; font-size: 20px;">현장상담</p>
								</button>
							</section>
						</c:if>	
							
						<c:if test="${progress.eexpectedDate ne null}">
							<section class="text-center mypage_interior_step_btn" title="design">
								<button id = "mp_active_step2" class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('design')" >
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step2_active.png" height="80px" >
									</div>
									<p class="misbtn_button_p">설계</p>
								</button>

							</section>
						</c:if>
						<c:if test="${progress.eexpectedDate eq null}">
							<section class="text-center mypage_interior_step_btn" title="design">
								<button class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('design')" disabled>
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step2_deactive.png" height="80px" >
									</div>
									<p class="misbtn_button_p">설계</p>
								</button>

							</section>
						</c:if>	
							
						<c:if test="${progress.cstartDate ne null}">
							<section class="text-center mypage_interior_step_btn" title="contract">
								<button id = "mp_active_step3" class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('contract')">
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step3_active.png" height="80px" >
									</div>
									<p class="misbtn_button_p">계약</p>
								</button>
							</section>
						</c:if>	
						
						<c:if test="${progress.cstartDate eq null}">
							<section class="text-center mypage_interior_step_btn" title="contract">
								<button class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('contract')" disabled>
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step3_deactive.png" height="80px" >
									</div>
									<p class="misbtn_button_p">계약</p>
								</button>
							</section>
						</c:if>		
							
						<c:if test="${progress.cstartDate ne null}">
							<section class="text-center pb-2 mypage_interior_step_btn" title="currentSituation">
								<button id = "mp_active_step4" class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('currentSituation')">
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step4_active.png" height="80px" >
									</div>
									<p class="misbtn_button_p">공사현황</p>
								</button>
							</section>
						</c:if>
						<c:if test="${progress.cstartDate eq null}">
							<section class="text-center pb-2 mypage_interior_step_btn" title="currentSituation">
								<button class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('currentSituation')" disabled>
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step4_deactive.png" height="80px" >
									</div>
									<p class="misbtn_button_p">공사현황</p>
								</button>
							</section>
						</c:if>
						
						<c:if test="${progress.cstartDate ne null}">
							<section class="text-center mypage_interior_step_btn" title="complete"> 
								<button id = "mp_active_step5"  class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('complete')">
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step5_active.png" height="80px" >
									</div>
									<p class="misbtn_button_p">공사완료</p>
								</button>
							</section>
						</c:if>
						<c:if test="${progress.cendDate eq null}">
							<section class="text-center mypage_interior_step_btn" title="complete"> 
								<button class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('complete')" disabled>
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step5_deactive.png" height="80px" >
									</div>
									<p class="misbtn_button_p">공사완료</p>
								</button>
							</section>
						</c:if>	
						
						<c:if test="${progress.cendDate ne null}">
							<section class="text-center mypage_interior_step_btn" title="afterService">
								<button id = "mp_active_step6" class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('afterService')">
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step6_active.png" height="80px" >
									</div>
									<p class="misbtn_button_p">사후관리</p>
								</button>
							</section>
						</c:if>
						<c:if test="${progress.cendDate eq null}">
							<section class="text-center mypage_interior_step_btn" title="afterService">
								<button class="btn shadow-none misbtn_button" onclick="mypage_interior_step_btn('afterService')" disabled>
									<div class="p-2">
										<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/step6_deactive.png" height="80px" >
									</div>
									<p class="misbtn_button_p">사후관리</p>
								</button>
							</section>
						</c:if> 
						</div>
					</nav>
					<!-- 안쪽 내용 -->
					<div class="border" style="width: 100%;">
						<!-- (데이터 없는 경우)-->
						<c:if test="${progress eq null}">
							<div class="mx-auto py-5" style="width: 95%;" id="misb_off_interview">
								<!-- 날짜 변경 부분 -->
								<section style="width: 100;" class="mb-4  misb_calender_wrap">
									<div  class="mx-auto  misbc_calender_wrap">
										<div style="display: inline-block; width: 150px; padding: 10px; background-color: #f1f1f1;" class="border">
											설계 진행 예정
										</div>
										<div  style="display: inline-block; width: 250px;  height:50px; padding: 10px;" class="border">
											상담 신청 내역이 없습니다.
										</div>
									</div>
								</section>
								
								<!-- 기본 사항 테이블 -->
								<%@ include file="/WEB-INF/views/mypage/interiorProgress/mypageBasicTable.jsp" %>
								
								<!-- 추가요청사항 작성 div  -->
								<section style="width: 100%;"  class="mb-5">
									<div style="width: 90%; height: 250px; background-color: #f1f1f1;" class="mx-auto p-4">
										<p>추가 요청 사항</p>
										<p>없음</p>
									</div>
								</section>
								
								
							<!-- 솔루션과 도면 작성 부분 -->
								<section style="width: 100%;"  class="mb-4">
									<div style="display: flex; width: 90%;" class="mx-auto">
										<div style="display: inline-block; width: 50%;">
											<div>
												<h3>Soultion</h3>
												<div style="width: 90%; height: 300px; background-color: #f1f1f1;" class="mt-4 pl-5 pt-5">
													<p>- 없음.</p>
												</div>
											</div>
	
										</div>
										<div style="display: inline-block; width: 50%; height: 400px" class="border">
											<div style="width: 100%; height: 400px; display:flex; justify-content:center; align-items:center;">
												<img src="${pageContext.request.contextPath}/resources/images/mypage/mypageProgress/dentalDrawingSample.png" width="500px" class="my-auto">
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
												<span>첨부파일 없음.</span><button class="btn btn-sm btn-secondary">down</button>
											</div>
										</div>
									</div>
								</section>
							</div>
						</c:if>
						
						<!-- 현장상담 (데이터 있는 경우) -->
						<c:if test="${progress ne null}">
							<div class="mx-auto py-5" style="width: 95%;" id="misb_off_interview">
								<!-- 날짜 변경 부분 -->
								<section style="width: 100;" class="mb-4  misb_calender_wrap">
									<div  class="mx-auto  misbc_calender_wrap">
										<div style="display: inline-block; width: 150px; padding: 10px; background-color: #f1f1f1;" class="border">
											설계 진행 예정
										</div>
										<div  style="display: inline-block; width: 250px;  height:50px; padding: 10px;" class="border">
											<fmt:formatDate value="${progress.pexpectedDate}" pattern="yyyy-MM-dd"/>
										</div>
									</div>
								</section>
								
								<!-- 기본 사항 테이블 -->
								<%@ include file="/WEB-INF/views/mypage/interiorProgress/mypageBasicTable.jsp" %>
								
								<!-- 추가요청사항 작성 div  -->
								<section style="width: 100%;"  class="mb-5">
									<div style="width: 90%; height: 250px; background-color: #f1f1f1;" class="mx-auto p-4">
										<p>추가 요청 사항</p>
										
										<c:if test="${progress.request eq null}">
										<p>없음</p>
										</c:if>
										
										<c:if test="${progress.cendDate ne null}">
										<p>${progress.request}</p>
										</c:if>
									</div>
								</section>
								
								
							<!-- 솔루션과 도면 작성 부분 -->
								<section style="width: 100%;"  class="mb-4">
									<div style="display: flex; width: 90%;" class="mx-auto">
										<div style="display: inline-block; width: 50%;">
											<div>
												<h3>Soultion</h3>
												<div style="width: 90%; height: 300px; background-color: #f1f1f1;" class="mt-4 pl-5 pt-5">
													<c:forEach var="solution" items="${solution}">
													<p>- ${solution.scontent}</p>
													</c:forEach>
												</div>
											</div>
	
										</div>
										<div style="display: inline-block; width: 50%; height: 400px" class="border">
											<div style="width: 100%; height: 400px; display:flex; justify-content:center; align-items:center;">
												<img src="/springframework-mini-project/mypage/showImage?fileName=${progress.dentalDrawing}" width="500px" class="my-auto">
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
										<c:forEach var="step1File" items="${step1File}">
												<div class="p-3 mb-2 mypage_interior_add_file_div">
													<span>${step1File.filename}</span>
													<a href='filedownload?fileName=${step1File.filename}'>
														<button class="btn btn-sm btn-secondary">down</button>
													</a>
												</div>
											</c:forEach>
										</div>
									</div>
								</section>
							</div>
						</c:if>
						
						
						<!-- 설계 -->
						<div class="mx-auto py-5" style="width: 95%;" id="misb_design">
						<section style="width: 100;" class="mb-4">
								<div class="mx-auto misbc_calender_wrap">
									<div style="display: inline-block; width: 150px; padding: 10px; background-color: #f1f1f1;" class="border">
										계약 진행 예정
									</div>
									<div  style="display: inline-block; width: 250px;  height:50px; padding: 10px;" class="border">
										<fmt:setLocale value="en_US" scope="session"/>
										<fmt:formatDate value="${progress.eexpectedDate}" pattern="yyyy-MM-dd"/>
									</div> 
								</div>
							</section>
							
							<!-- 기본 사항 테이블 -->
							<%@ include file="/WEB-INF/views/mypage/interiorProgress/mypageBasicTable.jsp" %>
							
							<div id = "progress_step2_cover">
							<!-- ajax 통신으로 뺌 -->
							<script>
								function ajaxProgressStep2(){
							    	 let conNum =  $('input[name=inputNm]').val();
									console.log("number is ... " + conNum);
									$.ajax({
							                url : "step2",
							                data : {conNum},
							                method: "get"
							            }).done((data) => {
											$('#progress_step2_cover').html(data);
							            });
							    }
							</script>
							</div>
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
									<fmt:setLocale value="en_US" scope="session"/>
									<fmt:formatDate value="${progress.eexpectedDate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${progress.eexpectedFinDate}" pattern="yyyy-MM-dd"/>
								</div>
							</div>
						</section>
						<!-- 기본 사항 테이블 -->
							<%@ include file="/WEB-INF/views/mypage/interiorProgress/mypageBasicTable.jsp" %>
							<div id = "progress_step3_cover">
						<script>
							function ajaxProgressStep3(){
							    	 let conNum =  $('input[name=inputNm]').val();
									console.log("number is ... " + conNum);
									$.ajax({
							                url : "step3",
							                data : {conNum},
							                method: "get"
							            }).done((data) => {
											$('#progress_step3_cover').html(data);
							            });
							    }
							</script>
							</div>
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
									<c:if test="${progress.cendDate eq null}">
										<fmt:formatDate value="${progress.cstartDate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${progress.cendDate}" pattern="yyyy-MM-dd"/> (예상)
									</c:if>
									<c:if test="${progress.cendDate ne null}">
										<fmt:formatDate value="${progress.cstartDate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${progress.cendDate}" pattern="yyyy-MM-dd"/>
									</c:if>
									</div>
								</div>
							</section>
							<!-- 기본 사항 테이블 -->
							<%@ include file="/WEB-INF/views/mypage/interiorProgress/mypageBasicTable.jsp" %>
						
						<div id = "progress_step4_cover">
						<script>
							function ajaxProgressStep4(){
							    	 let conNum =  $('input[name=inputNm]').val();
									console.log("number is ... " + conNum);
									$.ajax({
							                url : "step4",
							                data : {conNum},
							                method: "get"
							            }).done((data) => {
											$('#progress_step4_cover').html(data);
							            });
							    }
							</script>
							</div>
						</div>
						
						
						
						<!-- 공사완료 -->
						<div class="mx-auto py-5" style="width: 95%;" id="misb_complete">
							<!-- 날짜 변경 부분 -->
							<section style="width: 100;" class="mb-4">
								<div class="mx-auto misbc_calender_wrap">
									<div style="display: inline-block; width: 150px; padding: 10px; background-color: #f1f1f1;" class="border">
										공사 완료일
									</div>
									<div  style="display: inline-block; width: 250px;  height:50px; padding: 10px;" class="border">
										<fmt:formatDate value="${progress.cendDate}" pattern="yyyy-MM-dd"/>
									</div>
								</div>
							</section>
							<!-- 기본 사항 테이블 -->
							<%@ include file="/WEB-INF/views/mypage/interiorProgress/mypageBasicTable.jsp" %>
							<div id = "progress_step5_cover">
								<script>
									function ajaxProgressStep5(){
									    	 let conNum =  $('input[name=inputNm]').val();
											$.ajax({
									                url : "step5",
									                data : {conNum},
									                method: "get"
									            }).done((data) => {
													$('#progress_step5_cover').html(data);
									            });
									    }
								</script>
							</div>	
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
										<fmt:formatDate value="${progress.cendDate}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${progress.asEndDate}" pattern="yyyy-MM-dd"/>
									</div>
									<div style="display: inline-block;" class="ml-3 pt-2">
										<button class="btn btn-secondary">장비 a/s 신청</button>
									</div>
								</div>
							</section>
							<!-- 기본 사항 테이블 -->
							<%@ include file="/WEB-INF/views/mypage/interiorProgress/mypageBasicTable.jsp" %>
							
							<div id = "progress_step6_cover">
								<script>
									function ajaxProgressStep6(){
									    	 let conNum =  $('input[name=inputNm]').val();
											$.ajax({
									                url : "step6",
									                data : {conNum},
									                method: "get"
									            }).done((data) => {
													$('#progress_step6_cover').html(data);
									            });
									    }
								</script>
							</div>	
							
						</div>
					</div>
				</div>

			 </main> 
	  
	</div>
</div>
<link href="${pageContext.request.contextPath}/resources/css/interior_consult_css/mypage_interior.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/resources/js/interior_consult_js/mypage_interior.js"></script>
<style>

		#mypage_progress_mask{
			 z-index: 3;
		}
		
		.mp_progress_noData_text{
			z-index: 4;
			font-family: 'MinSans-Medium'; 
			height : 500px; 
			font-size : 1.5rem; 
			
		}
		
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
<script>
$(document).ready(function(){
	
	$('#mp_active_step2').click(function(){
		ajaxProgressStep2();
	});
	
	$('#mp_active_step3').click(function(){
		ajaxProgressStep3();
	});
	
	$('#mp_active_step4').click(function(){
		ajaxProgressStep4();
	});
	
	$('#mp_active_step5').click(function(){
		ajaxProgressStep5();
	});
	
	$('#mp_active_step6').click(function(){
		ajaxProgressStep6();
	});
	
});
	

</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
