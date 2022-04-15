<%@ page contentType="text/html; charset=UTF-8"%>
<nav id="main_header_nav" class="d-flex justify-content-center">
                <div class="main_header_nav_dropdown_group h-100" id="my_main_header_nav_dropdown_group">
                    <div class="main_header_nav_dropdown">
                      <a class="btn main_header_nav_dropbtn" style=" border-radius: 0px;">치과장비</a>
                      <div class="main_header_nav_dropdown_content">
                        <a href="#">유니트 체어</a>
                        <a href="#">X-ray</a>
                        <a href="#">멸균기</a>
                      </div>
                    </div> 
                    <div class="main_header_nav_dropdown">
                        <a class="btn main_header_nav_dropbtn" style=" border-radius: 0px;">인테리어</a>
                        <div class="main_header_nav_dropdown_content">
                          <a href="#">포트폴리오</a>
                          <a href="#">모델치과</a>
                        </div>
                    </div>   
                    <div class="main_header_nav_dropdown">
                        <a class="btn main_header_nav_dropbtn" style=" border-radius: 0px;">고객센터</a>
                        <div class="main_header_nav_dropdown_content">
                          <a href="#">공지사항</a>
                        </div>
                    </div> 
                    <div class="main_header_nav_btn_group text-center">
                        <div id="main_header_nav_interior_btn"><a class="btn main_header_nav_btn">인테리어 상담</a></div>
                    </div> 
                    <div class="main_header_nav_btn_group text-center">
                        <div id="main_header_nav_equipment_btn"><a class="btn main_header_nav_btn"><span>장비상담</span></a></div>
                    </div> 
                    <a href="javascript:void(0);" class="main_header_nav_icon h-100" onclick="myFunction()">☰</a>
                </div>
            </nav>
            <style>
                #main_header_nav{
                    background-color: white; 
                    height: 45px;
                }
                .main_header_nav_dropdown_group {
                    overflow: hidden;
                    font-family: 'MinSans-Regular';
                    /* margin-left: 18%; */
                }
                .main_header_nav_dropdown_content a {
                    float: left;
                    display: block;
                    color: #272723;
                    text-align: center;
                    padding: 14px 16px;
                    text-decoration: none;
                    font-size: 17px;
                }
                .main_header_nav_dropdown {
                    float: left;
                    overflow: hidden;
                }
                .main_header_nav_dropdown .main_header_nav_dropbtn {
                    font-size: 17px;    
                    border: none;
                    outline: none;
                    color: #272723;
                    padding: 9.75px 17px;
                    background-color: white;
                    font-family: inherit;
                    margin: 0;
                    width: 220px;
                }
                .main_header_nav_btn_group{
                    float: left;
                    overflow: hidden;
                    color: #272723;
                    width: 220px;
                }
                .main_header_nav_btn{
                    font-size: 16px;    
                    border: none;
                    outline: none;
                    font-family: inherit;
                    margin: 5px 0;
                    border-radius: 50px;
                    height: 35px;
                    border-radius: 50px;
                    width: 150px;
                    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.05), 0 3px 3px rgba(0, 0, 0, 0.08);
                    cursor: pointer; /* 마우스 포인터를 올렸을 때 손가락으로 바뀜 */
                    transition: box-shadow 0.1s linear;
                }
                .main_header_nav_btn:hover{
                    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2), 0 6px 4px rgba(0, 0, 0, 0.2);
                }
                .main_header_nav_dropdown_content {
                    display: none;
                    position: absolute;
                    background-color: rgb(218, 223, 228);
                    min-width: 220px;
                    z-index: 1;
                }
                .main_header_nav_dropdown_content a {
                    float: none;
                    color: #272723;
                    padding: 9.75px 17px;
                    text-decoration: none;
                    display: block;
                    text-align: left;
                }
                .main_header_nav_dropdown_content a:hover, .main_header_nav_dropdown:hover .main_header_nav_dropbtn {
                    background-color: #555;
                    color: white;
                }
                .main_header_nav_dropdown_content a:hover {
                    background-color: #d5d5d8;
                    color: black;
                }
                .main_header_nav_dropdown:hover .main_header_nav_dropdown_content {
                    display: block;
                }
                .main_header_nav_icon {
                    display: none;
                    padding: 14px 16px;
                    font-size: 15px;
                    color: #272723;
                }
            </style>
            <script>
                function myFunction() {
                  var x = document.getElementById("my-main-header-nav-dropdown-group");
                  if (x.className === "main-header-nav-dropdown-group") {
                    x.className += " responsive";
                  } else {
                    x.className = "main-header-nav-dropdown-group";
                  }
                }
            </script>