<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/equipment/dental_equipment_main.css" rel="stylesheet" type="text/css"/>
    <div id="dentalequipmentmain_wrapper">
        
        <div id="eq_main_image_list">
            <img id="eq_main_image1" class="eq_main_image" src="${pageContext.request.contextPath}/resources/subinimage/eqimage3.jpg">
            <img id="eq_main_image2" class="eq_main_image" src="${pageContext.request.contextPath}/resources/subinimage/eqimage3.PNG">
            <img id="eq_main_image3" class="eq_main_image" src="${pageContext.request.contextPath}/resources/subinimage/eqimage4.PNG">
        </div>
            <div id="dentalequipmentmain_content"><!-- 본문 작성 시작-->
                <div id="dentalequipmentmain_left">
                    <div class="dropdown">
                        <button class="dropdown-button">Category</button>
                        <div class="dropdown-content">
                            <a class="dropdown-content-element" href="http://127.0.0.1:5500/DentalEquipment_unitchair.html">유니트 체어</a>
                            <a class="dropdown-content-element" href="#">엑스레이</a>
                            <a class="dropdown-content-element" href="#">멸균 및 세척기</a>
                            <a class="dropdown-content-element" href="#">영상 장비</a>
                            <a class="dropdown-content-element" href="#">기타 장비</a>
                        </div>
                    </div>
                </div>
                <div id="dentalequipmentmain_right">
                    <p id="best_product_content">베스트 상품</p> 
                    <div id="makeline">　</div>
                    <div id="eq_list1"><!--베스트 상품-->
                    	<a href="${pageContext.request.contextPath}/equipment/equipment_k3chair_detail">
	                        <div id="eq_list_content1" class="card">
	                            <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg" class="card-img-top">
	                            <div class="card-body">
	                                <p id="eq_list_content1_element1" class="card-text"><img id="eq_best_icon"src="${pageContext.request.contextPath}/resources/subinimage/popularity.png"/>k3 chair</p>
	                                <hr/>
	                                <p id="eq_list_content1_element2" class="card-text">우수한 성능, 수려한 디자인을 갖춘 오스템 임플란트만의 유니트 체어</p>
	                                <p id="eq_list_content1_element3" class="card-text"><img id="eq_price_icon"src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png"/>가격</p>
	                            </div>
	                        </div>
                      	</a>
                        <div id="eq_list_content2" class="card">
                            <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/DentalScanner1.jpg" class="card-img-top">
                            <div class="card-body">
                                <p id="eq_list_content1_element1" class="card-text"><img id="eq_best_icon"src="${pageContext.request.contextPath}/resources/subinimage/popularity.png"/>구강 스캐너</p>
                                <hr/>
                                <p id="eq_list_content1_element2" class="card-text">우수한 성능, 수려한 디자인을 갖춘 오스템 임플란트만의 구강 스캐너</p>
                                <p id="eq_list_content1_element3" class="card-text"><img id="eq_price_icon"src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png"/>가격</p>
                            </div>
                        </div>
                        <div id="eq_list_content3" class="card">
                            <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/Portable_x-ray1.png" class="card-img-top">
                            <div class="card-body">
                                <p id="eq_list_content1_element1" class="card-text"><img id="eq_best_icon"src="${pageContext.request.contextPath}/resources/subinimage/popularity.png"/>Portable X-Ray</p>
                                <hr/>
                                <p id="eq_list_content1_element2" class="card-text">정확한 진단은 물론, 사용감도 우수한 구강 스캐너</p>
                                <p id="eq_list_content1_element3" class="card-text"><img id="eq_price_icon"src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png"/>가격</p>
                            </div>
                        </div>
                    </div><div id="eq_list2">
                        <div id="eq_list2_content1" class="card">
                            <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg" class="card-img-top">
                            <div class="card-body">
                            <p class="card-text">k5 chair</p>
                            <p class="card-text">오스템 임플란트 체어</p>
                            <p id="" class="card-text">가격</p>
                            </div>
                        </div>
                        <div id="eq_list2_content2" class="card">
                            <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg" class="card-img-top">
                            <div class="card-body">
                            <p class="card-text">k5 chair</p>
                            <p class="card-text">오스템 임플란트 체어</p>
                            <p id="" class="card-text">가격</p>
                            </div>
                        </div>
                        <div id="eq_list2_content3" class="card">
                            <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg" class="card-img-top">
                            <div class="card-body">
                            <p class="card-text">k5 chair</p>
                            <p class="card-text">오스템 임플란트 체어</p>
                            <p id="" class="card-text">가격</p>
                            </div>
                        </div>
                    </div>
                    신규 상품 
                    <div id="makeline">　</div>
                    <div id="eq_list3"><!--신규 상품-->
                        <div id="eq_list3_content1" class="card">
                            <img id="eq_list_content1_image" src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg" class="card-img-top">
                            <div class="card-body">
                            <p class="card-text">k5 chair</p>
                            <p class="card-text">오스템 임플란트 체어</p>
                            <p id="" class="card-text">가격</p>
                            </div>
                        </div>
                        <div id="eq_list3_content2" class="card">
                            <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg" class="card-img-top">
                            <div class="card-body">
                            <p class="card-text">k5 chair</p>
                            <p class="card-text">오스템 임플란트 체어</p>
                            <p id="" class="card-text">가격</p>
                            </div>
                        </div>
                        <div id="eq_list3_content3" class="card">
                            <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg" class="card-img-top">
                            <div class="card-body">
                            <p class="card-text">k5 chair</p>
                            <p class="card-text">오스템 임플란트 체어</p>
                            <p id="" class="card-text">가격</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<script src="${pageContext.request.contextPath}/resources/js/equipment/dental_equipment_main.js"></script>
    </div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>