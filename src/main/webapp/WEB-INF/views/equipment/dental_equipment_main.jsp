<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/equipment/dental_equipment_main.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/resources/css/menuheader.css" rel="stylesheet" type="text/css"/>
<div class="container-fluid p-0" >
<section class=" p-0">
    <div style="display: flex; justify-content: space-between;position: relative;">
        <div style="display: inline-block; width: 10%; height: 100px;" class="bg-dark menuheaderleft" ></div>
        <div style="display: inline-block; width: 89%; height: 100px;" class=" menuheaderright">
            <img src="${pageContext.request.contextPath}/resources/images/productmeunheader.png" width="100%" height="100%" >
        </div>
    </div>
    <div style="width: 65%;position: relative; left:10px; top: -33px;" class="mx-auto menuheadertitle">
        <span style="font-size: 50px; font-family: 'MinSans-Bold'; border-bottom: 5px solid coral; letter-spacing: 1.4px;">치과장비</span>
    </div>
</section>

<div id="dentalequipmentmain_wrapper">
 
            <div id="dentalequipmentmain_content"><!-- 본문 작성 시작-->
                <div id="dentalequipmentmain_left">
                    
                    <div >
                       <ul class="productAsideUl">
                           <li >Category</li>
                           <li>
                               <ul class="productInsideAsideUl">
                                   <li>
                                    <label>
                                        <input type="radio" name="category" value="unitchair">
                                        <span >유니트 체어</span> 
                                    </label>
                                   </li>
                                   <li>
                                    <label >
                                        <input type="radio" name="category" value="washingmachine">
                                        <span >멸균 및 세척기</span>
                                    </label>
                                   </li>
                                   <li>
                                    <label >
                                        <input type="radio" name="category" value="smallcamera">
                                        <span>소형 영상 장비</span>
                                    </label>
                                   </li>
                                   <li>
                                    <label>
                                        <input type="radio" name="category" value="etc">
                                        <span >기타 장비</span>
                                    </label>
                                   </li>
                               </ul>
                           </li>
                           <li>Filter</li>
                           <li>
                               <ul class="productInsideAsideUl">
                                   <li>
                                    <label>
                                        <input type="radio" name="sort" value="popular">
                                        <span class="ml-2">인기순</span>
                                    </label>
                                   </li>
                                   <li>
                                    <label>
                                        <input type="radio" name="sort" value="views">
                                        <span class="ml-2">조회순</span>
                                    </label>
                                   </li>
                                   <li>
                                    <label>
                                        <input type="radio" name="sort" value="reviews">
                                        <span class="ml-2">리뷰순</span>
                                    </label>
                                   </li>
                                   <li>
                                    <label>
                                        <input type="radio" name="sort" value="new">
                                        <span class="ml-2">최신 등록순</span>
                                    </label>
                                   </li>
                               </ul>
                           </li>
                       </ul>   
                           
                    </div>
            </div>
    
                    
            <div id="dentalequipmentmain_right">
                <section style="width: 90%;" class="mx-auto">
                    <p  style="font-size: 25px; font-family: 'MinSans-Medium';">BEST ITEM</p>
                    <div id="makeline">　</div>
                    <div style="width: 95%;" class="mx-auto">
                        <div style="display: flex;" ><!--베스트 상품-->
                            <c:forEach var="bestchair" items="${bestchairList}" begin="0" end="3">
                                <a  href="${pageContext.request.contextPath}/equipment/equipment_detail_consult?modelNumber=${bestchair.modelNumber}" style="text-decoration: none; color: black;font-family: 'MinSans-Regular'; font-size: 15px;">
                                    <div style="display: inline-block; width: 270px;" class="mx-4">
                                        <div>
                                            <img id="eq_list_content1_image"src="/springframework-mini-project/equipment/display?fileName=${bestchair.pattachoname}" width="270px" height="270px" style="box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;">
                                        </div>
                                        
                                        <div class="mt-2">
                                            <div style="color: darkgray;">${bestchair.modelNumber}</div>
                                            <div style="display: flex; ">
                                                <div style="display: inline-block" class="pt-1 mr-3">
                                                    <b style="font-size: 18px;">${bestchair.productName}</b>
                                                </div> 
                                                <div style="display: inline-block" >
                                                    <img src="${pageContext.request.contextPath}/resources/subinimage/popularity.png" width="20px"/>
                                                </div>
                                            </div>
                                            <div>${bestchair.productIntro}</div>
                                            <p><img src="${pageContext.request.contextPath}/resources/subinimage/price_icon.png" width="20px"/><span style="font-size: 18px; box-shadow: inset 0 -5px 0 lightgray; ">가격 문의</span></p>
                                        </div>
                                    </div> 
                                </a>
                            </c:forEach>
        
                            </div>
                    </div>
                    <div style="width: 100%;" class="mt-4">
                        <p  style="font-size: 25px; font-family: 'MinSans-Medium';" >전체 상품</p>
                        <div id="makeline">　</div>
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
                     
                    </div>
                   
                </section>
                    
            </div>
         </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>