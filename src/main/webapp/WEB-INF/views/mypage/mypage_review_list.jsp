<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

            <div  style = "width : 400px; margin-left : 500px; margin-top : 30px;">
               <a class="btn btn-outline-secondary btn-sm" href="mypageReview?pageNo=1">처음</a>
               <c:if test="${pager.groupNo>1}">
                  <a class="btn btn-outline-success btn-sm" href="mypageReview?pageNo=${pager.startPageNo-1}">이전</a>
               </c:if>
               
               <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
                  <c:if test="${pager.pageNo != i}">
                     <a class="btn btn-outline-secondary btn-sm" href="mypageReview?pageNo=${i}">${i}</a>
                  </c:if>
                  <c:if test="${pager.pageNo == i}">
                     <a class="btn btn-outline-success btn-sm" href="mypageReview?pageNo=${i}">${i}</a>
                  </c:if>
               </c:forEach>
               
               <c:if test="${pager.groupNo<pager.totalGroupNo}">
                  <a class="btn btn-outline-secondary btn-sm" href="mypageReview?pageNo=${pager.endPageNo+1}">다음</a>
               </c:if>
               <a class="btn btn-outline-secondary btn-sm" href="mypageReview?pageNo=${pager.totalPageNo}">맨끝</a>
            </div>
	     