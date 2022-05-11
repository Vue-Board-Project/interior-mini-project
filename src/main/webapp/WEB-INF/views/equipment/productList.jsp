<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="eq_list2" class="eq_list"><!--전체 상품-->
      <!--href="${pageContext.request.contextPath}/equipment/dental_equipment_main?sort='salesCount'"  -->
	<c:forEach var="chair" items="${chairList}">
	    <div style="display: inline-block; width: 270px; height: 450px;" class="mx-4 ">
	        <a  href="${pageContext.request.contextPath}/equipment/equipment_detail_consult?modelNumber=${chair.modelNumber}" style="text-decoration: none; color: black;font-family: 'MinSans-Regular'; font-size: 15px;">
	        <div>
	            <img id="eq_list_content1_image"src="/springframework-mini-project/equipment/display?fileName=${chair.pattachoname}" width="270px" height="270px" style="box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;">
	        </div> 
	        <div class="mt-2">
	            <div style="color: darkgray;">${chair.modelNumber}</div>
	            <div style="display: flex; ">
	                <div style="display: inline-block" class="pt-1 mr-3">
	                    <b style="font-size: 18px;">${chair.productName}</b>
	                </div> 
	            </div>
	            <div>${chair.productIntro}</div>
	            <p><img src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png" width="20px"/><span style="font-size: 18px; box-shadow: inset 0 -5px 0 lightgray; ">가격 문의</span></p>
	        </div>
	    </a>
	    </div> 
	
	</c:forEach>

</div>