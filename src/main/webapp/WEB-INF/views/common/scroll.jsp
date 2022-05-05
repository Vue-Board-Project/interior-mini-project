<%@ page contentType="text/html; charset=UTF-8"%>
<div id="scroll">
     <style>
	    .scoll_btn{
			   font-size: 16px;    
			   border: none;
			   outline: none;
			   font-family: inherit;
			   margin: 5px 0;
			   border-radius: 50px;
			   height: 40px;
			   border-radius: 50px;
			   width: 130px;
			   box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1), 0 3px 3px rgba(0, 0, 0, 0.08);
			   cursor: pointer; /* 마우스 포인터를 올렸을 때 손가락으로 바뀜 */
			   transition: box-shadow 0.1s linear;
			   background-color: #faf9f6;
		}
		.scoll_btn:hover{
			   box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2), 0 6px 4px rgba(0, 0, 0, 0.2);
			   background-color: #faf9f6;
		}
     </style>
     <div>
         <div style="position: fixed; bottom: 20px; right: 40px;">
             <a href="http://pf.kakao.com/_fxleUb" class="btn scoll_btn">
             <i class="fa-solid fa-comment"></i>
             챗봇문의
             <%-- <img src="${pageContext.request.contextPath}/resources/pngs/scroll_kakao_icon.png" style="width: 40px;"/> --%>
             </a>
         </div>
         <div style="position: fixed; bottom: 62px; right: 40px;">
             <a href="${pageContext.request.contextPath}/equipment/AfterService" class="btn scoll_btn">
			 <i class="fa-solid fa-screwdriver-wrench"></i>
             <span class="ml-2">A/S</span>
             <%-- <img src="${pageContext.request.contextPath}/resources/pngs/scroll_as_icon.png" style="width: 40px;"/> --%>
             </a>
         </div>
     </div>
     <div>
         <div style="position: fixed; bottom: 75px; right: 15px;">
             <a id="MOVE_TOP_BTN"><img src="${pageContext.request.contextPath}/resources/pngs/scroll_up_arrow_icon.png" style="width: 20px;"/></a>
         </div>
         <div style="position: fixed; bottom: 35px; right: 15px;">
             <a id="MOVE_BOTTOM_BTN"><img src="${pageContext.request.contextPath}/resources/pngs/scroll_down_arrow_icon.png" style="width: 20px;"/></a>
         </div>
     </div>
 </div>
 <!-- 카카오톡 채널 연결 -->
<!--  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
 <script type='text/javascript'>
 	kakao.init('f92b082d3e0df47bff7a697ac0cef25b');
 	function kakaoChat() {
 		Kakao.Channel.chat({
 			  channelPublicId: '_fxleUb'
 			});
	}
 </script> -->
 <script>
 $(function() {
	 $('#MOVE_TOP_BTN').fadeOut();
     $(window).scroll(function() {
         if ($(this).scrollTop() < 500) {
             $('#MOVE_TOP_BTN').fadeOut();
             $('#MOVE_BOTTOM_BTN').fadeIn();
         } else if($(this).scrollTop() > $(document).height() - $(window).scrollTop()) {
        	 $('#MOVE_TOP_BTN').fadeIn();
             $('#MOVE_BOTTOM_BTN').fadeOut();
         } else {
        	 $('#MOVE_TOP_BTN').fadeIn();
        	 $('#MOVE_BOTTOM_BTN').fadeIn();
             
         }
     });
     
     $("#MOVE_TOP_BTN").click(function() {
         $('html, body').animate({
             scrollTop : 0
         }, 400);
         return false;
     });
     $("#MOVE_BOTTOM_BTN").click(function() {
         $('html, body').animate({
             scrollTop :   $(document).height() - $(window).height()
         }, 400);
         return false;
     });
 });
 </script>
