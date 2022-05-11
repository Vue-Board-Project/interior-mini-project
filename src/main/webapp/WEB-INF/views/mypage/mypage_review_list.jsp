<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test = "${!empty reviewFin}">
	<div>
	<c:forEach var="reviewFin" items="${reviewFin}">
	   	<div class = "mypage_user_review_element" style = "display : inline-block; width : 100%; border-bottom :1px solid #ccc;">
	  			<div class = "user_product_title" style = "display : inline-block; width : 100%; border-bottom :1px solid #ccc;">
	  				<span style = "padding-left : 20px;">${reviewFin.stringProductName}</span>
	  			<span class = "user_product_modelName"><span style = "border-bottom : 3px solid #ca5c0d;">모델명 : ${reviewFin.stringModelNumber}</span></span>
	  			</div>
	   		<div class = "user_review_contents">
	   			<div class = "user_review_title">${reviewFin.reviewTitle}</div>
	   			<div class = "user_product_bought_date"><fmt:formatDate value="${reviewFin.reviewWriteDate}" pattern="yyyy-MM-dd"/></div>
	   			<div class = "user_review_image">
	   			<c:if test = "${reviewFin.fileName ne null}">
	   				<img src="/springframework-mini-project/mypage/showImage?fileName=${reviewFin.fileName}"></img>
	   			</c:if>
	   			<c:if test = "${reviewFin.fileName eq null}">
	   				<img src="${pageContext.request.contextPath}/resources/pngs/header_logo_icon.png""></img>
	   			</c:if>
	   			</div>
	   			<div class = "user_review_text">${reviewFin.reviewContent}</div>
	   		</div>
	   	</div>
	   	</c:forEach>
	</div>
	  <%--  <div  style = "width : 400px; margin-left : 520px; margin-top : 30px;">
	      <a class="btn btn-outline-secondary btn-sm" href="mypageReviewAfter?pageNo=1">처음</a>
	      <c:if test="${pager1.groupNo>1}">
	         <a class="btn btn-outline-success btn-sm" href="mypageReviewAfter?pageNo=${pager1.startPageNo-1}">이전</a>
	      </c:if>
	      
	      <c:forEach var="i" begin="${pager1.startPageNo}" end="${pager1.endPageNo}">
	         <c:if test="${pager1.pageNo != i}">
	            <a class="btn btn-outline-secondary btn-sm" href="mypageReviewAfter?pageNo=${i}">${i}</a>
	         </c:if>
	         <c:if test="${pager1.pageNo == i}">
	            <a class="btn btn-secondary btn-sm" href="mypageReviewAfter?pageNo=${i}">${i}</a>
	         </c:if>
	      </c:forEach>
	      
	      <c:if test="${pager1.groupNo<pager.totalGroupNo}">
	         <a class="btn btn-outline-secondary btn-sm" href="mypageReviewAfter?pageNo=${pager1.endPageNo+1}">다음</a>
	      </c:if>
	      <a class="btn btn-outline-secondary btn-sm" href="mypageReviewAfter?pageNo=${pager1.totalPageNo}">맨끝</a>
	   </div> --%>
</c:if>
<c:if test = "${empty reviewFin}">
		<div class = "mypage_no_review_info" 
		style = "display : inline-block; width : 100%; height : 400px; padding-top : 50px;">
		<div style = "display : inline-block; width : 85%; margin-left : 7%; margin-top : 30px;">
			<div class = "mp_noinfo_title" 
			style = "font-size : 1.5rem; font-family: 'MinSans-Regular'; text-align : center; margin-top : 200px;">
				작성한 리뷰가 없습니다.
			</div>
		</div>
	</div>
</c:if> 