<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/equipment/customerService.css" rel="stylesheet" type="text/css"/>
<div id="customer_service_wrapper">
<div id="customer_service_content"><!-- ë³¸ë¬¸ ìì± ìì-->
   
   <div id="customer_service_first">
       <div id="customer_service_c1">자주 묻는 질문</div>
       <div id="makeline">　</div>
       <div id="board_information_list">
           <div id="board_information_list1" class="card" onclick="showcontent1()">
               <img id="board_information_list1_image"src="${pageContext.request.contextPath}/resources/subinimage/boxes.png" class="card-img-top">
               <div class="card-body">
               <p class="card-text">배송문의</p>
               </div>
           </div>
           <div id="board_information_list2" class="card" onclick="showcontent2()">
               <img id="board_information_list1_image"src="${pageContext.request.contextPath}/resources/subinimage/exchange.png" class="card-img-top">
               <div class="card-body">
               <p class="card-text">반품/교환/환불</p>
               </div>
           </div>
           <div id="board_information_list3" class="card" onclick="showcontent3()">
               <img id="board_information_list1_image"src="${pageContext.request.contextPath}/resources/subinimage/ordering.png" class="card-img-top">
               <div class="card-body">
               <p class="card-text">주문/결제</p>
               </div>
           </div>
           <div id="board_information_list4" class="card" onclick="showcontent4()">
               <img id="board_information_list1_image"src="${pageContext.request.contextPath}/resources/subinimage/afterService.png" class="card-img-top">
               <div class="card-body">
               		<p class="card-text">A/S 문의</p>
               </div>
           </div>
           
       </div>
       <div id="customer_service_second"><!--ëí´í¸ë¡ ë°°ì¡ ë¬¸ì ê´ë ¨ ë´ì©ì´ ë¤ì´ê°ê²-->
           <table id="customer_service_second_table">
               <thead id="customer_service_second_table_head">
                   <tr class="customer_service_second_table_tr">
                       <th id="customer_service_second_table_head_th">　</th>
                       <th id="customer_service_second_table_head_th">　배송 문의 관련해서 자주 묻는 질문입니다.</th>
                   </tr>
               </thead>
               <tbody id="customer_service_second_table_body">
                            <tr class="customer_service_second_table_tr" id="customer_service_second_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td>제 택배 언제와요?</td>
                            </tr>
                            <tr class="customer_service_second_table_tr" id="customer_service_second_table_tr2">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">내 택배도 아직 안왔어요</td>
                            </tr>
                            <tr class="customer_service_second_table_tr" id="customer_service_second_table_tr3">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_second_table_tr" id="customer_service_second_table_tr4">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_second_table_tr" id="customer_service_second_table_tr5">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_second_table_tr" id="customer_service_second_table_tr6">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_second_table_tr" id="customer_service_second_table_tr7">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_second_table_tr" id="customer_service_second_table_tr8">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="customer_service_third">
                    <table id="customer_service_third_table">
                        <thead id="customer_service_third_table_head">
                            <tr class="customer_service_third_table_tr">
                                <th id="customer_service_third_table_head_th">　</th>
                                <th id="customer_service_third_table_head_th">반품/교환/환불 문의 관련해서 자주 묻는 질문입니다.</th>
                            </tr>
                        </thead>
                        <tbody id="customer_service_third_table_body">
                            <tr class="customer_service_third_table_tr" id="customer_service_third_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td>반품 해주세요</td>
                            </tr>
                            <tr class="customer_service_third_table_tr" id="customer_service_third_table_tr2">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">교환 해주세요</td>
                            </tr>
                            <tr class="customer_service_third_table_tr" id="customer_third_second_table_tr3">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">환불 해주세요</td>
                            </tr>
                            <tr class="customer_service_third_table_tr" id="customer_service_third_table_tr4">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">반품/교환/환불 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_third_table_tr" id="customer_service_third_table_tr5">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">반품/교환/환불 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_third_table_tr" id="customer_service_third_table_tr6">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">반품/교환/환불 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_third_table_tr" id="customer_service_third_table_tr7">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">반품/교환/환불 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_third_table_tr" id="customer_service_third_table_tr8">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">반품/교환/환불 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="customer_service_fourth">
                    <table id="customer_service_fourth_table">
                        <thead id="customer_service_fourth_table_head">
                            <tr class="customer_service_fourth_table_tr">
                                <th id="customer_service_fourth_table_head_th">　</th>
                                <th id="customer_service_fourth_table_head_th">주문/결제 문의 관련해서 자주 묻는 질문입니다.</th>
                            </tr>
                        </thead>
                        <tbody id="customer_service_fourth_table_body">
                            <tr class="customer_service_fourth_table_tr" id="customer_service_fourth_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td>주문은 어떻게 하나요</td>
                            </tr>
                            <tr class="customer_service_fourth_table_tr" id="customer_service_fourth_table_tr2">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">결제는 어떻게 하나요</td>
                            </tr>
                            <tr class="customer_service_fourth_table_tr" id="customer_fourth_second_table_tr3">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">주문/결제 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_fourth_table_tr" id="customer_service_fourth_table_tr4">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">주문/결제 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_fourth_table_tr" id="customer_service_fourth_table_tr5">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">주문/결제 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_fourth_table_tr" id="customer_service_fourth_table_tr6">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">주문/결제 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_fourth_table_tr" id="customer_service_fourth_table_tr7">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">주문/결제 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_fourth_table_tr" id="customer_service_fourth_table_tr8">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">주문/결제 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="customer_service_fifth">
                    <table id="customer_service_fifth_table">
                        <thead id="customer_service_fifth_table_head">
                            <tr class="customer_service_fifth_table_tr">
                                <th id="customer_service_fifth_table_head_th">　</th>
                                <th id="customer_service_fifth_table_head_th">A/S 문의 관련해서 자주 묻는 질문입니다.</th>
                            </tr>
                        </thead>
                        <tbody id="customer_service_fifth_table_body">
                            <tr class="customer_service_fifth_table_tr" id="customer_service_fifth_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td>A/S 신청은 어떻게 하나요</td>
                            </tr>
                            <tr class="customer_service_fifth_table_tr" id="customer_service_fifth_table_tr2">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">A/S 비용은 얼마나 하나요</td>
                            </tr>
                            <tr class="customer_service_fifth_table_tr" id="customer_fifth_second_table_tr3">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">A/S 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_fifth_table_tr" id="customer_service_fifth_table_tr4">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">A/S 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_fifth_table_tr" id="customer_service_fifth_fifth_tr5">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">A/S 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_fifth_table_tr" id="customer_service_fifth_table_tr6">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">A/S 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_fifth_table_tr" id="customer_service_fifth_table_tr7">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">A/S 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="customer_service_fifth_table_tr" id="customer_service_fifth_table_tr8">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" alt=""></a></th>
                                <td scope="row">A/S 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                        </tbody>
                    </table>
       			</div>
   			</div>
   		</div>
	<script src="${pageContext.request.contextPath}/resources/js/equipment/customerService.js"></script>
	</div>
        
<%@ include file="/WEB-INF/views/common/footer.jsp" %>