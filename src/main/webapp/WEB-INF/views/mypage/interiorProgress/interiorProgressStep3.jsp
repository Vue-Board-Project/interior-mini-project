<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		
	<!-- 추가요청사항 작성 div  -->
	<section style="width: 100%;"  class="mb-5">
		<div style="width: 90%; height: 250px; background-color: #f1f1f1;" class="mx-auto p-4">
			<p>계약 요청 사항</p>
			<c:if test="${step3.euserRequest eq null}">
				<p>없음</p>
			</c:if>
			<c:if test="${step3.euserRequest ne null}">
				<p>${step3.euserRequest}</p>
			</c:if>
		</div>
	</section>
	<!-- 첨부파일 부분 -->
	<section style="width: 100%;"  class="mb-5">
		<div style="width: 90%;" class="mx-auto">
			<div style="border-bottom: 2px solid #272723; width: 170px;" class="text-center mb-2">
				<h3>첨부파일목록</h3>
			</div>
			<div>
		<c:forEach var="step3File" items="${step3File}">
			<div class="p-3 mb-2 mypage_interior_add_file_div">
				<span>${step3File.filename}</span>
				<a href='filedownload?fileName=${step3File.filename}'>
					<button class="btn btn-sm btn-secondary">down</button>
				</a>
			</div>
		</c:forEach>
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