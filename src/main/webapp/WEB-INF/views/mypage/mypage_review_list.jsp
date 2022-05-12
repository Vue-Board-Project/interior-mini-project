<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test = "${!empty reviewFin}">
	<div>
	<c:forEach var="reviewFin" items="${reviewFin}">
	   	<div class = "mypage_user_review_element" style = "display : inline-block; width : 100%; border-bottom :1px solid #ccc;">
	  			<div class = "user_product_title" style = "display : inline-block; width : 100%; border-bottom :1px solid #ccc;">
	  				<span style = "float : left; margin-left : 20px; margin-top : 6px;">제목  :  ${reviewFin.reviewTitle}</span>
	  				<span class = "user_product_modelName" style = "float : right; margin-right : 30px; margin-top : 10px;">모델명 : ${reviewFin.stringModelNumber}</span>
	  				<span style = "float : right; margin-right : 50px;">${reviewFin.stringProductName}</span>
	  			
	  			</div>
	   		<div class = "user_review_contents">
	   			<div class = "user_product_bought_date" style = "margin-top : 50px;"></div>
	   			<div class = "user_review_image">
	   			<c:if test = "${reviewFin.fileName ne null}">
	   				<img src="/springframework-mini-project/mypage/showImage?fileName=${reviewFin.fileName}"></img>
	   			</c:if>
	   			<c:if test = "${reviewFin.fileName eq null}">
	   				<img src="${pageContext.request.contextPath}/resources/pngs/header_logo_icon.png""></img>
	   			</c:if>
	   			</div>
	   			<div class = "user_review_text" style = "font-family: 'MinSans-Regular';">${reviewFin.reviewContent}</div>
	   			<div style = "margin-left : 1200px; margin-top : 160px;">작성일자 : <fmt:formatDate value="${reviewFin.reviewWriteDate}" pattern="yyyy-MM-dd"/></div>
	   		</div>
	   	</div>
	   	</c:forEach>
	</div>
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