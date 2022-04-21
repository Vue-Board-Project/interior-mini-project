<%@ page contentType="text/html; charset=UTF-8"%>

<div class="floating blind mt-3" align="right" style="position: fixed;">
    <div class="d-flex flex-column mb-4">
        <p class="mr-1" style="font-size:20px;"><span style="color: #ff7513;">비슷한 스타일</span> 추천</p>
        <a href="#" class="mb-1"><img style="width: 10rem;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/3.PNG"/></a>
        <a href="#"><img style="width: 10rem;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/50py_waiting_room.jpg"/></a>

    </div>

    <div class="d-flex flex-column mb-4">
        <p class="mr-2" style="font-size:20px;"><span style="color: #ff7513;">비슷한 평수</span> 추천</p>
        <a href="#" class="mb-1"><img style="width: 10rem;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/chungchun_waiting_room.jpg"/></a>
        <a href="#"><img style="width: 10rem;" src="${pageContext.request.contextPath}/resources/model_dental_images/photos/waiting_room.jpg"/></a>

    </div>
    <div class=""><a href="${pageContext.request.contextPath}/interior_consult/quick_consultation" class="btn" style="width: 10rem; background-color: #ca5c0d; color: white; font-size:15px;">이 컨셉으로 상담신청</a></div>
</div>
<style>
.abs {
  position: absolute;
  top: 0px;
}

.fixed {
  position: fixed;
  bottom: 0px;
}

.blind {
  display: none;
}

.floating {
  width: 100%;
  padding-right: 10%;
}
       
</style>
<script>
 $(window).scroll( function () {
 
 var
   floater = $('.floating'),  
  startPoint = 1050,
    scrollPoint = parseInt( $(window).scrollTop() + parseInt( window.innerHeight ) ),
  endPoint = parseInt( $('.floating').outerHeight() ),
  limit = $('.floating').outerHeight();
      
  if(0 <= parseInt( scrollPoint ) && parseInt( scrollPoint ) < parseInt( startPoint ) ) {
    floater.addClass('blind');
  } else if ( parseInt( startPoint ) < parseInt( scrollPoint ) && parseInt( scrollPoint ) < parseInt( endPoint ) ){ 
    floater.removeClass('blind');
    floater.removeClass('abs');
    floater.addClass('fixed');
  } else {
    floater.removeClass('blind');
    floater.removeClass('fixed');
    floater.addClass('abs');
  }
  
    
});
</script>         