<%@ page contentType="text/html; charset=UTF-8"%>
<div id="scroll">
            
     <div>
         <div style="position: fixed; bottom: 20px; right: 30px;">
             <a href="#"><img src="${pageContext.request.contextPath}/resources/pngs/scroll_kakao_icon.png" style="width: 40px;"/></a>
         </div>
         <div style="position: fixed; bottom: 62px; right: 30px;">
             <a href="${pageContext.request.contextPath}/equipment/AfterService"><img src="${pageContext.request.contextPath}/resources/pngs/scroll_as_icon.png" style="width: 40px;"/></a>
         </div>
     </div>
     <div>
         <div style="position: fixed; bottom: 140px; right: 40px;">
             <a id="MOVE_TOP_BTN" href="#"><img src="${pageContext.request.contextPath}/resources/pngs/scroll_up_arrow_icon.png" style="width: 20px;"/></a>
         </div>
         <div style="position: fixed; bottom: 110px; right: 40px;">
             <a id="MOVE_BOTTOM_BTN" href="#"><img src="${pageContext.request.contextPath}/resources/pngs/scroll_down_arrow_icon.png" style="width: 20px;"/></a>
         </div>
     </div>
 </div>
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
