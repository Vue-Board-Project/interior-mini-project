<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 추가요청사항 작성 div  -->
<section style="width: 100%;"  class="mb-5">
	<div style="width: 90%; height: 250px; background-color: #f1f1f1;" class="mx-auto p-4">
		<p>공사 완료 피드백</p>
		<c:if test="${step5.cfinishFeedback eq null}">
				<p>없음</p>
		</c:if>
		<c:if test="${step5.cfinishFeedback ne null}">
			<p>${step5.cfinishFeedback}</p>
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
			<c:forEach var="step5File" items="${step5File}">
				<div class="p-3 mb-2 mypage_interior_add_file_div">
					<span>${step5File.filename}</span>
					<a href='filedownload?fileName=${step5File.filename}'>
						<button class="btn btn-sm btn-secondary">down</button>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
</section>