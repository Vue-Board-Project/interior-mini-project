<%@ page contentType="text/html; charset=UTF-8"%>

<style>
	/*사이드바 움직이면 밑에 흰 배경 보여서 전체 화면에 한번 색 깔음.*/
	.card{
		background: #faf9f6;
	}
	
	/*  마이페이지 사이드바  */
      .sidebar_mypage{
        position: fixed;
        left: 0;
        height: 100%;
        width: 250px;
        padding: 6px 14px;
        top : 216px;
        z-index: 99;
        background: #faf9f6;
        transition: all 0.5s ease;
      }

      .links_name{
          pointer-events: auto;
          color: #272723;
          font-size: 20px;
          font-weight: 400;
          white-space: nowrap;
          pointer-events: none;
          transition: 0.4s;
          
      }
      
      .mypage_list li:hover{
          /*opacity: 1;
          transform: translateY(-50%);*/
          pointer-events: auto;
          transition: all 0.4s ease;
          top: 50%;
          background: #fef8d4;
          
          
     }

      .mypage_list li{
        position: relative;
        margin: 20px 0;
        list-style: none;

      }
      
      .mypage_list{
      	border : 1px solid #ca5c0d;
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

 <div class="sidebar_mypage">
   <ul class="mypage_list">
     <li>
       <a href="/springframework-mini-project/mypage/mypage_counseling">
       <!-- onclick시 각 링크로 연결하기 -->
         <i class='bx bx-conversation'></i>
         <span id = "list_counseling" class="links_name">상담 내역</span>
       </a>
     </li>
     <hr>
     <li>
       <a href="/springframework-mini-project/mypage/mypage_interior_progress">
       <!-- onclick시 각 링크로 연결하기 -->
         <i class='bx bx-conversation'></i>
         <span id = "list_interior_progress" class="links_name">인테리어 진행내역</span>
       </a>
     </li>
     <hr>
     <li>
      <a href="/springframework-mini-project/mypage/mypage_infosetting">
        <i class='bx bx-face'></i>
        <span id = "list_setting" class="links_name">개인정보 수정</span>
        <hr>
      </a>
    </li>
    <li>
      <a href="/springframework-mini-project/mypage/mypage_orderlist">
       <i class='bx bxs-package' ></i>
        <span id = "mypage_orderList" class="links_name">구매 내역</span>
        <hr>
      </a>
    </li>
    <li>
      <a href="/springframework-mini-project/mypage/mypage_review">
       <i class='bx bx-home-smile'></i>
        <span id = "mypage_review" class="links_name">리뷰 관리</span>
        <hr>
      </a>
    </li>
    <li>
      <a href="#">
       <i class='bx bx-building-house' ></i>
        <span class="interior_report">인테리어 현황</span>
        <hr>
      </a>
    </li>
    <li>
      <a href="#">
       <i class='bx bx-cart' ></i>
        <span class="links_name">장바구니</span>
      </a>
    </li>
   </ul>
 </div>
 
        
        