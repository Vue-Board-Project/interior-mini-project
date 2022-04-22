<%@ page contentType="text/html; charset=UTF-8"%>

<style>
	@font-face {
	    font-family: 'MinSans-Bold';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Bold.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
		@font-face {
	    font-family: 'MinSans-Medium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Medium.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
	@font-face {
	    font-family: 'MinSans-Regular';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Regular.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	@font-face {
	    font-family: 'MinSans-Light';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Light.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	@font-face {
	    font-family: 'MinSans-Thin';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Thin.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	/*사이드바 움직이면 밑에 흰 배경 보여서 전체 화면에 한번 색 깔음.*/
	.card{
		background: #faf9f6;
	}
	
	/*  마이페이지 사이드바  */
      #sidebar_mypage{
        position: fixed;
        left: 0;
        height: 100%;
        width: 250px;
        padding: 3px 14px; 
        top : 217px;
       /* z-index: 99; */
        background: #faf9f6;
      }


 	.mypage_list{
     	position: relative;
      	border : 1px solid #ca5c0d;
      }
      
      #sidebar_mypage .mypage_list .mypage_list_element .links_name {
		  pointer-events: none;
          color: #272723;
          font-size: 20px;
          font-weight: 400;
          white-space: nowrap;
          pointer-events: none;
          font-family: 'MinSans-Medium';
          
	}
      
      .mypage_menubar_link{
      	 text-decoration:none !important;
      
      }

      .mypage_list li{
      		list-style: none;
      		 margin: 20px 0;
      }

		.header_section .text{
	          display: inline-block;
	          color: #321313;
	          font-size: 25px;
	          font-weight: 500;
	          margin: 18px; 
	          padding-left : 4%;
        }

		.content_section {
        	width : calc(100% - 250px);
        	height : 230px;
        	text-align : left;
        	padding-top : 1%;
        	padding-left: 5%;
        } 
 
</style>

 <div id="sidebar_mypage" class = "mx-auto text-center">
   <div class="mypage_list">
   
     <div class = "mypage_list_element">
       <a class = "mypage_menubar_link" href="/springframework-mini-project/mypage/mypage_counseling">
       <!-- onclick시 각 링크로 연결하기 -->
         <span id = "list_counseling" class="links_name">상담 내역</span>
       </a>
     </div>
     <hr class = "mypage_menubar_hr">
     <div class = "mypage_list_element">
       <a class = "mypage_menubar_link" href="/springframework-mini-project/mypage/mypage_interior_progress">
       <!-- onclick시 각 링크로 연결하기 -->
         <span id = "list_interior_progress" class="links_name">인테리어 진행내역</span>
       </a>
     </div>
     <hr class = "mypage_menubar_hr">
     <div class = "mypage_list_element">
      <a class = "mypage_menubar_link" href="/springframework-mini-project/mypage/mypage_infosetting">
        <span id = "list_setting" class="links_name">개인정보 수정</span> 
      </a>
    </div>
     <hr class = "mypage_menubar_hr">
    <div class = "mypage_list_element">
      <a class = "mypage_menubar_link" href="/springframework-mini-project/mypage/mypage_orderlist">
        <span id = "mypage_orderList" class="links_name">구매 내역</span>
      </a>
    </div>
     <hr class = "mypage_menubar_hr">
    <div class = "mypage_list_element">
      <a class = "mypage_menubar_link" href="/springframework-mini-project/mypage/mypage_review">
        <span id = "mypage_review" class="links_name">리뷰 관리</span>
      </a>
    </div>
    <hr class = "mypage_menubar_hr">
    <div class = "mypage_list_element">
      <a class = "mypage_menubar_link" href="/springframework-mini-project/mypage/device_AS">
        <span id = "mypage_AS" class="links_name">장비 AS 조회</span>
      </a>
    </div>
    <hr style = "visibility: hidden">
   </div>
 </div>
 
        
        