<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mycompany.webapp.dto.product.ProductDto" %>
<%@ page import="com.mycompany.webapp.dao.mybatis.ProductDao" %>
<%
	request.setCharacterEncoding("UTF-8");
	String mid=request.getParameter("modelNumber");
	ArrayList list=(ArrayList)session.getAttribute("");
	//만약 id가 없으면 상품 목록으로 되돌아감
	if(mid==null||mid.trim().equals("")){
		response.sendRedirect("${pageContext.request.contextPath}/equipment/dental_equipment_main");
		return;
	}
	
	
	
	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 추가를 위해서 만들어보앗읍니다!</title>
</head>
<body>

</body>
</html>