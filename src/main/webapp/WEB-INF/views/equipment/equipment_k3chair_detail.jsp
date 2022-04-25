<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/equipment/equipment_k3chair_detail.css" rel="stylesheet" type="text/css"/>
<div id="k3chair_content"><!-- 대표 이미지 설정-->

    <div id="k3chair_main_left" style="margin-left: 250px;">
        <div id="wrapper">
            <div id="slider_wrap">
              <ul id="slider">
                <li><img src="${pageContext.request.contextPath}/resources/subinimage/chair03.jpg"></li>
                <li><img src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg"></li>
                <li><img src="${pageContext.request.contextPath}/resources/subinimage/chair_image.PNG"></li>
                <li><img src="${pageContext.request.contextPath}/resources/subinimage/unit_chair1.jpg"></li>
                <li><img src="${pageContext.request.contextPath}/resources/subinimage/as_crown.png"></li>
              </ul>
              
              <!--controls-->
              <div class="btns" id="next">></div>
              <div class="btns" id="previous"><</div>
              <div id="counter"></div>
                
              <!-- <div id="pagination_wrap">
              <ul>
              </ul>
              </div> -->
              <!--controls-->
                </div>
              </div>
            <style>
            /*GLOBALS*/
            *{margin:0; padding:0; list-style:none;}
            a{text-decoration:none; color:#666;}
            a:hover{color:#1bc1a3;}
            body, hmtl{background: #ecf0f1; font-family: 'Anton', sans-serif;}
            
            
            #wrapper{
              width:900px;
              margin:50px auto;
              height:600px;
              position:relative;
              color:#fff;
              text-shadow:rgba(0,0,0,0.1) 2px 2px 0px;
            }
            
            #slider_wrap{
              width:900px;
              height:600px;
              position:relative;
              overflow:hidden;
            }
            
            #slider_wrap ul#slider{
              width:100%;
              height:100%;
              
              position:absolute;
              top:0;
              left:0;   
            }
            
            #slider_wrap ul#slider li{
              float:left;
              position:relative;
              width:900px;
              height:600px; 
            }
            
            #slider_wrap ul#slider li > div{
              position:absolute;
              top:20px;
              left:35px;  
            }
            
            #slider_wrap ul#slider li > div h3{
              font-size:36px;
              text-transform:uppercase; 
            }
            
            #slider_wrap ul#slider li > div span{
              font-family: Neucha, Arial, sans serif;
              font-size:21px;
            }
            
            #slider_wrap ul#slider li img{
              display:block;
              width:100%;
              height: 100%;
            }
            
            
            /*btns*/
            .btns{
              position:absolute;
              width:50px;
              height:60px;
              top:50%;
              margin-top:-25px;
              line-height:57px;
              text-align:center;
              cursor:pointer; 
              background:rgba(0,0,0,0.1);
              z-index:100;
              
              
              /* -webkit-user-select: none;  
              -moz-user-select: none; 
              -khtml-user-select: none; 
              -ms-user-select: none; */
              
              -webkit-transition: all 0.1s ease;
              -moz-transition: all 0.1s ease;
              -o-transition: all 0.1s ease;
              -ms-transition: all 0.1s ease;
              transition: all 0.1s ease;
            }
            
            .btns:hover{
              background:rgba(0,0,0,0.3); 
            }
            
            #next{right:-50px; border-radius:7px 0px 0px 7px;}
            #previous{left:-50px; border-radius:0px 7px 7px 7px;}
            #counter{
              top: 30px; 
              right:35px; 
              width:auto;
              position:absolute;
            }
            
            #slider_wrap.active #next{right:0px;}
            #slider_wrap.active #previous{left:0px;}
            
            
            /*bar*/
            #pagination_wrap{
              min-width:20px;
              margin-top:350px;
              margin-left: auto; 
              margin-right: auto;
              height:15px;
              position:relative;
              text-align:center;
            }
            
            #pagination_wrap ul {
              width:100%;
            }
            
            #pagination_wrap ul li{
              margin: 0 4px;
              display: inline-block;
              width:5px;
              height:5px;
              border-radius:50%;
              background:#fff;
              opacity:0.5;
              position:relative;
              top:0;
              
              
            }
            
            #pagination_wrap ul li.active{
              width:12px;
              height:12px;
              top:3px;
              opacity:1;
              box-shadow:rgba(0,0,0,0.1) 1px 1px 0px; 
            }

            /*Header*/
            h1, h2{text-shadow:none; text-align:center;}
            h1{ color: #666; text-transform:uppercase;  font-size:36px;}
            h2{ color: #7f8c8d; font-family: Neucha, Arial, sans serif; font-size:18px; margin-bottom:30px;} 

            /*ANIMATION*/
            #slider_wrap ul, #pagination_wrap ul li{
              -webkit-transition: all 0.3s cubic-bezier(1,.01,.32,1);
              -moz-transition: all 0.3s cubic-bezier(1,.01,.32,1);
              -o-transition: all 0.3s cubic-bezier(1,.01,.32,1);
              -ms-transition: all 0.3s cubic-bezier(1,.01,.32,1);
              transition: all 0.3s cubic-bezier(1,.01,.32,1); 
            }
            </style>

            
    </div>
    <div id="k3chair_main_right">
        <div>
            <P id="k3chair_main_content1">k3 chair <img id="icon_dentist" src="${pageContext.request.contextPath}/resources/subinimage/doctor.png"/></P>
            <hr/>
            <p id="k3chair_main_content2">우수한 성능, 수려한 디자인을 갖춘 오스템 임플란트만의 유니트 체어<br/>
                High Quality 옵션, 고품질, 고성능, 편의성 최대
            </p>
            <p id="k3chair_main_content3">색상
                <div id="colorcheck">
                    <label for="default1">검정 </label><input name="default1" type="radio" checked id="colorcheck_black">
                    <label for="default2">파랑 </label><input name="default1" type="radio" id="colorcheck_blue">
                    <label for="default3">빨강 </label><input name="default1" type="radio" id="colorcheck_red">
                    <label for="default4">보라 </label><input name="default1" type="radio" id="colorcheck_purple">
                    <label for="default5">초록 </label><input name="default1" type="radio" id="colorcheck_green">
                </div>
              </div></p>
            <p id="k3chair_main_content4">
                <form name='form'>
                    <table>
                     <tr>
                        <td>수량</td>
                        <td>
                            <table>
                                <tr>
                                    <td><input type='text' name='count' value='1' size='3' readonly style="text-align: center;" id="count_up_down"><td>
                                    <td>
                                        <a onclick='javascript_:change(1);'>▲</a><br>
                                        <a onclick='javascript_:change(-1);'>▼</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                     </tr>
                    </table>
                </form>
            </p>
            <p id="k3chair_main_content5">배송 가능 지역 <a id="table_button1" class="btn btn-leght" onclick="showcontent()"><img id="btn_able_delivery_loaction" src="${pageContext.request.contextPath}/resources/subinimage/down.png"></a></p>
                <div id="able_delivery_loaction_info">- 서울, 경기, 인천, 부산, 울산, 광주, 세종, 대전, 대구<hr/>이외의 지역, 제주 및 도서 산간 지역은 배송 비용 및 설치비가 추가될 수 있으며, 배송이 불가할 수 있습니다. 
                    정확한 안내를 원하시는 경우 상담 신청을 하시길 바랍니다.</div>
                    <div class="tooltip">
                        <p id="k3chair_main_content6">판매가<button id="able_delivery_loaction" type="button" class="btn btn-outline-secondary">?</button>
                        <div class="tooltip-content">
                            <p>내용 보여줘</p>
                        </div>
                </div> 
            </p>
            <hr>
            <p>
                <a id="btn_go_cart" class="btn btn-light" href="${pageContext.request.contextPath}/equipment/shoppingcart_rentalandpurchase">장바구니</a>
                <a id="btn_go_counseling" class="btn btn-light" href="${pageContext.request.contextPath}/equipment/paymentpage">구매</a>
            </p>     
        </div>
    </div>
    <div id="main_image_change">
        <a></a>

    </div>
    <script src="${pageContext.request.contextPath}/resources/js/equipment/equipment_k3chair_detail.js"></script>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
