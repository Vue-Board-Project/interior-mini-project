<%@ page  contentType="text/html; charset=UTF-8" %>

<footer id="main_footer_wrap">
            <div id="main_footer" class="text-center h-100">
                <div id="main_footer_img"><img id="main_footer_img_png" src="${pageContext.request.contextPath}/resources/pngs/footer_logo_icon.png"/></div>
                <div id="main_footer_text" class="m-0">
                    <p>
                        <strong>인테리어사업본부 대표전화 </strong>
                        TEL: 070-4394-7442(상담가능시간 : 평일 09:00~18:00) 
                    </p>
                    <p>E-mail : oneweek@osstem.com</p>
                    <p>오스템임플란트 주식회사 대표이사 : 엄태관 | 사업자등록번호 : 112-81-47103</p>
                    <p>서울시 강서구 마곡중앙12로 3 오스템임플란트(주) | 대표전화 : 02-2016-7000 | 02-2016-7001</p>
                </div>
            </div>
        </footer>
        <style>
            #main_footer_wrap{
                background-color: #e8e8db; 
                height: 240px;
            }
            #main_footer{
                position: relative;
            }
            #main_footer_img{
                padding-top: 170px;
            }
            #main_footer_img_png{
                height: 60px;
            }
            #main_footer_text{
                color: #272723; 
                font-family: 'MinSans-Regular'; 
                font-size: 15px; 
                line-height: 1.2; 
                height: 140px; 
                overflow-y: auto; 
                overflow-x: hidden; 
                position: absolute; 
                top: 45%; 
                left: 50%; 
                transform: translate(-50%, -50%);
            }
        </style>
        <%@ include  file="/WEB-INF/views/common/scroll.jsp"%>
        </div>
</body>
</html>