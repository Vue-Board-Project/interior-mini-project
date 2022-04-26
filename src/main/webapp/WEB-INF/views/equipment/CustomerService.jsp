<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/equipment/customerService.css" rel="stylesheet" type="text/css"/>   


    <div id="c_service_wrapper">
        <div id="c_service_content"><!-- 본문 작성 시작-->
            
            <div id="c_service_first">
                <div id="c_service_c1">자주 묻는 질문</div>
                <div id="makeline">　</div>
                <div id="board_information_list">
                    <div id="board_information_list1" class="card" onclick="showcontent1()">
                        <img id="board_information_list1_image"src="${pageContext.request.contextPath}/resources/subinimage/boxes.png" class="card-img-top">
                        <div class="card-body">
                        <p class="card-text">배송문의</p>
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
                        <p class="card-text">A/S 문의</p>
                        </div>
                    </div>
                    
                </div>
                <div id="c_service_second"><!--디폴트로 배송 문의 관련 내용이 들어가게-->
                    <table id="c_service_second_table">
                        <thead id="c_service_second_table_head">
                            <tr class="c_service_second_table_tr">
                                <th id="c_service_second_table_head_th">　</th>
                                <th id="c_service_second_table_head_th"></th>
                            </tr>
                        </thead>
                        <tbody id="c_service_second_table_body">
                            <tr class="c_service_second_table_tr" id="c_service_second_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ1()"></a></th>
                                <td>제 택배 언제와요?</td>                            
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a1" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>택배 문의사항에 대한 답변은 아직 테스트 중입니다. 어떤 내용이 들어가야 알맞을지요 힝구 내용 어디까지 들어가나 한번 봐보자고 봐보자고 봐보자고 봐보자고 봐봊ㄱ자
                                </td>                             
                            </tr>

                            <tr class="c_service_second_table_tr" id="c_service_second_table_tr2">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ2()"></a></th>
                                <td scope="row">내 택배도 아직 안왔어요</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a2" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>택배 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>

                            <tr class="c_service_second_table_tr" id="c_service_second_table_tr3">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ3()"></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a3" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>택배 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_second_table_tr" id="c_service_second_table_tr4">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ4()"></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a4" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>택배 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_second_table_tr" id="c_service_second_table_tr5">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ5()"></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a5" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>택배 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_second_table_tr" id="c_service_second_table_tr6">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ6()"></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a6" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>택배 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_second_table_tr" id="c_service_second_table_tr7">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ7()"></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_71" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>택배 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_second_table_tr" id="c_service_second_table_tr8">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ8()"></a></th>
                                <td scope="row">배송 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a8" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>택배 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="c_service_third">
                    <table id="c_service_third_table">
                        <thead id="c_service_third_table_head">
                            <tr class="c_service_third_table_tr">
                                <th id="c_service_third_table_head_th">　</th>
                                <th id="c_service_third_table_head_th">　</th>
                            </tr>
                        </thead>
                        <tbody id="c_service_third_table_body">
                            <tr class="c_service_third_table_tr" id="c_service_third_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ21()"></a></th>
                                <td>반품 해주세요</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a21" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>반품 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_third_table_tr" id="c_service_third_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ22()"></a></th>
                                <td scope="row">교환 해주세요</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a22" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>교환 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_third_table_tr" id="customer_third_second_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ23()"></a></th>
                                <td scope="row">환불 해주세요</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a31" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>환불 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_third_table_tr" id="c_service_third_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ24()"></a></th>
                                <td scope="row">반품/교환/환불 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a24" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>반품/교환/환불 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_third_table_tr" id="c_service_third_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ25()"></a></th>
                                <td scope="row">반품/교환/환불 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a25" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>반품/교환/환불 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div id="c_service_fourth">
                    <table id="c_service_fourth_table">
                        <thead id="c_service_fourth_table_head">
                            <tr class="c_service_fourth_table_tr">
                                <th id="c_service_fourth_table_head_th">　</th>
                                <th id="c_service_fourth_table_head_th">　</th>
                            </tr>
                        </thead>
                        <tbody id="c_service_fourth_table_body">
                            <tr class="c_service_fourth_table_tr" id="c_service_fourth_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ31()"></a></th>
                                <td>주문은 어떻게 하나요</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a31" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>주문 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>

                            <tr class="c_service_fourth_table_tr" id="c_service_fourth_table_tr2">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png"onclick="showQ32()"></a></th>
                                <td scope="row">결제는 어떻게 하나요</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a32" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>결제 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_fourth_table_tr" id="customer_fourth_second_table_tr3">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ33()"></a></th>
                                <td scope="row">주문/결제 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a33" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>주문/결제 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_fourth_table_tr" id="c_service_fourth_table_tr4">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png"onclick="showQ34()"></a></th>
                                <td scope="row">주문/결제 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a34" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>주문/결제 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_fourth_table_tr" id="c_service_fourth_table_tr5">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ35()"></a></th>
                                <td scope="row">주문/결제 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a35" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>주문/결제 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_fourth_table_tr" id="c_service_fourth_table_tr6">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ36()"></a></th>
                                <td scope="row">주문/결제 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a36" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>주문/결제 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="c_service_fifth">
                    <table id="c_service_fifth_table">
                        <thead id="c_service_fifth_table_head">
                            <tr class="c_service_fifth_table_tr">
                                <th id="c_service_fifth_table_head_th">　</th>
                                <th id="c_service_fifth_table_head_th">　</th>
                            </tr>
                        </thead>
                        <tbody id="c_service_fifth_table_body">
                            <tr class="c_service_fifth_table_tr" id="c_service_fifth_table_tr1">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ41()"></a></th>
                                <td>A/S 신청은 어떻게 하나요</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a41" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>A/S 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_fifth_table_tr" id="c_service_fifth_table_tr2">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ42()"></a></th>
                                <td scope="row">A/S 비용은 얼마나 하나요</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a42" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>A/S 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_fifth_table_tr" id="customer_fifth_second_table_tr3">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ43()"></a></th>
                                <td scope="row">A/S 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a43" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>A/S 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>
                            <tr class="c_service_fifth_table_tr" id="c_service_fifth_table_tr4">
                                <th scope="row"><a id="table_button1" class="btn btn-leght"><img id="downimage" src="${pageContext.request.contextPath}/resources/subinimage/down.png" onclick="showQ44()"></a></th>
                                <td scope="row">A/S 문의 관련 내용이 들어갑니다.</td>
                            </tr>
                            <tr class="c_service_second_a" id="c_service_second_table_a44" >
                                <th scope="row"><a id="table_button1" class="btn btn-leght"></a></th>
                                <td>A/S 문의사항에 대한 답변으로, 아직 테스트 중입니다. 숨김 처리될 내용입니다.</td>                             
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>

        </div>
<script src="${pageContext.request.contextPath}/resources/js/equipment/customerService.js"></script>
    </div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>