<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="reviewFin" items="${reviewFin}">
	    	<div class = "mypage_user_review_element">
    			<div class = "user_product_title">${reviewFin.stringProductName}
    			<span class = "user_product_modelName">모델명 : ${reviewFin.modelNumber}</span>
    			</div>
	    		<div class = "user_review_contents">
	    			<div class = "user_review_title">${reviewFin.reviewTitle}</div>
	    			<div class = "user_product_bought_date"><fmt:formatDate value="${reviewFin.reviewWriteDate}" pattern="yyyy-MM-dd"/></div>
	    			<div class = "user_review_image">
	    				<img src = "${pageContext.request.contextPath}/resources/images/mypage/chair.jpg"></img>
	    			</div>
	    			<div class = "user_review_text">${reviewFin.reviewContent}</div>
	    		</div>
	    	</div>
	    	</c:forEach>
	    	
	<table>
	 <tr>
           <td colspan="4" class="text-center">
              <div>
                 <a class="btn btn-outline-primary btn-sm" href="mypageReview?pageNo=1">처음</a>
                 <c:if test="${pager.groupNo>1}">
                    <a class="btn btn-outline-info btn-sm" href="mypageReview?pageNo=${pager.startPageNo-1}">이전</a>
                 </c:if>
                 
                 <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
                    <c:if test="${pager.pageNo != i}">
                       <a class="btn btn-outline-success btn-sm" href="mypageReview?pageNo=${i}">${i}</a>
                    </c:if>
                    <c:if test="${pager.pageNo == i}">
                       <a class="btn btn-danger btn-sm" href="mypageReview?pageNo=${i}">${i}</a>
                    </c:if>
                 </c:forEach>
                 
                 <c:if test="${pager.groupNo<pager.totalGroupNo}">
                    <a class="btn btn-outline-info btn-sm" href="mypageReview?pageNo=${pager.endPageNo+1}">다음</a>
                 </c:if>
                 <a class="btn btn-outline-primary btn-sm" href="mypageReview?pageNo=${pager.totalPageNo}">맨끝</a>
              </div>
           </td>
        </tr>
     </table>