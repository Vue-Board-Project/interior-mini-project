<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/equipment/dental_equipment_main.css" rel="stylesheet" type="text/css"/>
<div id="dentalequipmentmain_wrapper">

        <div id="eq_main_image_list" class="eq_slider">
            <input type="radio" name="slide" id="slide1" checked>
            <input type="radio" name="slide" id="slide2">
            <input type="radio" name="slide" id="slide3">
            <input type="radio" name="slide" id="slide4">
            <ul id="imgholder" class="imgs">
                <li><img src="${pageContext.request.contextPath}/resources/subinimage/eqimage2.PNG"></li>
                <li><img src="${pageContext.request.contextPath}/resources/subinimage/eqimage3.PNG"></li>
                <li><img src="${pageContext.request.contextPath}/resources/subinimage/eqimage4.PNG"></li>
                <li><img src="${pageContext.request.contextPath}/resources/subinimage/chair_slider.PNG"></li>
            </ul>
            <div class="bullets">
                <label for="slide1">&nbsp;</label>
                <label for="slide2">&nbsp;</label>
                <label for="slide3">&nbsp;</label>
                <label for="slide4">&nbsp;</label>
            </div>
            <!--<img id="eq_main_image1" class="eq_main_image" src="/subinimage/eqimage3.jpg">
            <img id="eq_main_image2" class="eq_main_image" src="/subinimage/eqimage3.PNG">
            <img id="eq_main_image3" class="eq_main_image" src="/subinimage/eqimage4.PNG">-->
        </div>
            <div id="dentalequipmentmain_content"><!-- 본문 작성 시작-->
                <div id="dentalequipmentmain_left">
                    <div class="dropdown">
                        <button class="dropdown-button">Category</button>
                        <div class="dropdown-content">
                            <a class="dropdown-content-element" href="${pageContext.request.contextPath}/equipment/dental_equimpent_chair">유니트 체어</a>
                            <a class="dropdown-content-element" href="#">대형 영상 장비</a>
                            <a class="dropdown-content-element" href="#">멸균 및 세척기</a>
                            <a class="dropdown-content-element" href="#">소형 영상 장비</a>
                            <a class="dropdown-content-element" href="#">기타 장비</a>
                        </div>
                    </div>
                </div>
                <div id="dentalequipmentmain_right">
                    <p id="best_product_content">BEST ITEM</p>
                    
                    <div id="makeline">　</div>
                    <div id="eq_list1" class="eq_list"><!--베스트 상품-->
                    <c:forEach var="bestchair" items="${bestchairList}" begin="0" end="2">
                        <a id="go_k3chair" href="${pageContext.request.contextPath}/equipment/equipment_${bestchair.productName}_detail" class="gotolink">
                            <div id="eq_list_content1" class="card">
                                <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/chair03.jpg" class="card-img-top">
                                <div class="card-body">
                                    <p id="eq_list_content1_element1" class="card-text"><img id="eq_best_icon"src="${pageContext.request.contextPath}/resources/subinimage/popularity.png"/>${bestchair.productName}</p>
                                    <hr/>
                                    <p id="eq_list_content1_element2" class="card-text">${bestchair.productIntro}</p>
                                    <p id="eq_list_content1_element3" class="card-text"><img id="eq_price_icon"src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png"/>가격</p>
                                </div>
                            </div>
                        </a>
                    </c:forEach>

                    </div><div id="eq_list2">
                        <!--href="${pageContext.request.contextPath}/equipment/dental_equipment_main?sort='salesCount'"  -->
                    </div>
                    <p id="best_product_content" >전체 상품</p> 
                    <form id="product_filter" action="Sort" method="get">
                    	<input type="hidden"
                    	name="sort" value="1"></input><input class="btn btn-link-dark" type="submit" value="인기순"/>　　|　　
                    	<a 
                    	name="sort" value="2">조회순</a> 　　| 　　
                    	<a 
                    	name="sort" value="3">리뷰순</a> 　　| 　　
                    	<a 
                    	name="sort" value="4">최신 등록순</a>
                    </form> 
                    <div id="makeline">　</div>
                    <div id="eq_list2" class="eq_list"><!--신규 상품-->
                    
					<c:forEach var="chair" items="${chairList}">
                        <a id="go_k3chair" href="${pageContext.request.contextPath}/equipment/equipment_${chair.productName}_detail" class="gotolink">
                            <div id="eq_list_content1" class="card">
                                <img id="eq_list_content1_image"src="" class="card-img-top">
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
            </div>
<script src="${pageContext.request.contextPath}/resources/js/equipment/dental_equipment_main.js"></script>
    </div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>