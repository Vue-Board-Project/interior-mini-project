<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div id="eq_list2" class="eq_list"><!--전체 상품-->
      <!--href="${pageContext.request.contextPath}/equipment/dental_equipment_main?sort='salesCount'"  -->
  <c:forEach var="chair" items="${chairList}">
      <a id="go_k3chair" href="${pageContext.request.contextPath}/equipment/equipment_detail_consult?modelNumber=${chair.modelNumber}" class="gotolink">
          <div id="eq_list_content1" class="card">
              <img id="eq_list_content1_image"src="/springframework-mini-project/equipment/display?fileName=${chair.pattachoname}" class="card-img-top">
              <div class="card-body">
                  <p id="eq_list_content1_element1" class="card-text">${chair.productName}</p>
                  <hr/>
                  <p id="eq_list_content1_element2" class="card-text">${chair.productIntro}</p>
                  <p id="eq_list_content1_element3" class="card-text"><img id="eq_price_icon"src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png"/>가격</p>
              </div>
          </div>
      </a>
  </c:forEach>

</div>