<%@ page contentType="text/html; charset=UTF-8"%>
<div id="main_header_ad">
                <div id="main_header_ad_text" class="text-white text-center">
                    <p id="main_header_ad_text1" class="m-0">DENTAL INTERIOR</p>
                    <p id="main_header_ad_text2" class="m-0"><strong>TOTAL SOLUTION</strong></p>
                    <p id="main_header_ad_text3" class="m-0">치과에 최적화된 인테리어로 고객의 눈높이에 맞는 맞춤제안을 제공합니다.</p>
                </div>
                <div id="main_header_ad_delete" align="right" class="p-2">
                    <button id="main_header_ad_close" style="border: none; outline: none; background-color: #272723;"><img src="${pageContext.request.contextPath}/resources/pngs/main_header_ad_delete_icon.png"/></button>
                </div>
            </div>
            <script>
                $(document).ready(function(){
                    $("#main_header_ad_close").on("click", function() {
                        $("#main_header_ad").slideUp();
                    });
                });
            </script>
            <style>
                #main_header_ad{
                    background-color: #272723; 
                    height: 70px; 
                    position: relative;
                }
                #main_header_ad_text{
                    font-family: 'MinSans-Regular'; 
                    height: 60px; 
                    overflow-y: auto; 
                    overflow-x: hidden; 
                    position: absolute; 
                    top: 50%; 
                    left: 50%; 
                    transform: translate(-50%, -50%);
                }
                #main_header_ad_text1{
                    font-size: 5px; 
                    line-height: 1.5;
                }
                #main_header_ad_text2{
                    font-size: 15px; 
                    line-height: 1.5;
                }
                #main_header_ad_text3{
                    font-size: 11px; 
                    line-height: 1.5;
                }
            </style>