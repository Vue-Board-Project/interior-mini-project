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
                            <a class="dropdown-content-element" href="">유니트 체어</a>
                            <a class="dropdown-content-element" href="#">엑스레이</a>
                            <a class="dropdown-content-element" href="#">멸균 및 세척기</a>
                            <a class="dropdown-content-element" href="#">영상 장비</a>
                            <a class="dropdown-content-element" href="#">기타 장비</a>
                        </div>
                    </div>
                </div>
                <div id="dentalequipmentmain_right">
                    <p id="best_product_content">BEST ITEM</p>
                    
                    <div id="makeline">　</div>
                    <div id="eq_list1"><!--베스트 상품-->
                        <a id="go_k3chair" href="${pageContext.request.contextPath}/equipment/equipment_k3chair_detail" class="gotolink">
                            <div id="eq_list_content1" class="card">
                                <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/chair03.jpg" class="card-img-top">
                                <div class="card-body">
                                    <p id="eq_list_content1_element1" class="card-text"><img id="eq_best_icon"src="${pageContext.request.contextPath}/resources/subinimage/popularity.png"/>k3 chair</p>
                                    <hr/>
                                    <p id="eq_list_content1_element2" class="card-text">우수한 성능, 수려한 디자인을 갖춘 오스템 임플란트만의 유니트 체어</p>
                                    <p id="eq_list_content1_element3" class="card-text"><img id="eq_price_icon"src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png"/>가격</p>
                                </div>
                            </div>
                        </a>
                        
                        <a id="go_k5chair" href="${pageContext.request.contextPath}/equipment/equipment_k5chair_detail"class="gotolink">
                            <div id="eq_list_content2" class="card">
                                <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg" class="card-img-top">
                                <div class="card-body">
                                    <p id="eq_list_content1_element1" class="card-text"><img id="eq_best_icon"src="${pageContext.request.contextPath}/resources/subinimage/popularity.png"/>k5 chair</p>
                                    <hr/>
                                    <p id="eq_list_content1_element2" class="card-text">우수한 성능, 수려한 디자인을 갖춘 오스템 임플란트만의 유니트 체어</p>
                                    <p id="eq_list_content1_element3" class="card-text"><img id="eq_price_icon"src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png"/>가격</p>
                                </div>
                            </div>
                        </a>
                        <a id="go_k2chair" href="#" class="gotolink">
                            <div id="eq_list_content3" class="card">
                                <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/k2chair.PNG" class="card-img-top">
                                <div class="card-body">
                                    <p id="eq_list_content1_element1" class="card-text"><img id="eq_best_icon"src="${pageContext.request.contextPath}/resources/subinimage/popularity.png"/>k2 chair</p>
                                    <hr/>
                                    <p id="eq_list_content1_element2" class="card-text">우수한 성능, 수려한 디자인을 갖춘 오스템 임플란트만의 유니트 체어</p>
                                    <p id="eq_list_content1_element3" class="card-text"><img id="eq_price_icon"src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png"/>가격</p>
                                </div>
                            </div>
                        </a>
                    </div><div id="eq_list2">
                        
                    </div>
                    <p id="best_product_content">전체 상품</p> 
                    <p id="product_filter"><a>인기순</a>　　|　　<a>조회순</a> 　　| 　　<a>리뷰순</a> 　　| 　　<a>최신 등록순</a></p> 
                    <div id="makeline">　</div>
                    <div id="eq_list2"><!--신규 상품-->
                        <a id="go_k3chair" href="#" class="gotolink">
                            <div id="eq_list_content1" class="card">
                                <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/chair03.jpg" class="card-img-top">
                                <div class="card-body">
                                    <p id="eq_list_content1_element1" class="card-text"><img id="eq_best_icon"src="${pageContext.request.contextPath}/resources/subinimage/popularity.png"/>k3 chair</p>
                                    <hr/>
                                    <p id="eq_list_content1_element2" class="card-text">우수한 성능, 수려한 디자인을 갖춘 오스템 임플란트만의 유니트 체어</p>
                                    <p id="eq_list_content1_element3" class="card-text"><img id="eq_price_icon"src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png"/>가격</p>
                                </div>
                            </div>
                        </a>
                        
                        <a id="go_k5chair" href="#" class="gotolink">
                            <div id="eq_list_content2" class="card">
                                <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg" class="card-img-top">
                                <div class="card-body">
                                    <p id="eq_list_content1_element1" class="card-text"><img id="eq_best_icon"src="${pageContext.request.contextPath}/resources/subinimage/popularity.png"/>k5 chair</p>
                                    <hr/>
                                    <p id="eq_list_content1_element2" class="card-text">우수한 성능, 수려한 디자인을 갖춘 오스템 임플란트만의 유니트 체어</p>
                                    <p id="eq_list_content1_element3" class="card-text"><img id="eq_price_icon"src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png"/>가격</p>
                                </div>
                            </div>
                        </a>
                        <a id="go_k2chair" href="#" class="gotolink">
                            <div id="eq_list_content3" class="card">
                                <img id="eq_list_content1_image"src="${pageContext.request.contextPath}/resources/subinimage/k2chair.PNG" class="card-img-top">
                                <div class="card-body">
                                    <p id="eq_list_content1_element1" class="card-text"><img id="eq_best_icon"src="${pageContext.request.contextPath}/resources/subinimage/popularity.png"/>k2 chair</p>
                                    <hr/>
                                    <p id="eq_list_content1_element2" class="card-text">우수한 성능, 수려한 디자인을 갖춘 오스템 임플란트만의 유니트 체어</p>
                                    <p id="eq_list_content1_element3" class="card-text"><img id="eq_price_icon"src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png"/>가격</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
<script src="${pageContext.request.contextPath}/resources/js/equipment/dental_equipment_main.js"></script>
    </div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>