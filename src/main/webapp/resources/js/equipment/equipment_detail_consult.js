function productConsultSession(){
  let mNum = $("#consultHiddenModelNumber").val();
  let cot = $("#consultHiddenCount").val();
  
  //장비 세션 창으로 값 전송
  $.ajax({
    url:"/springframework-mini-project/productConsult/productSessionAdd",
    data:{mNum, cot},
    method:"post"
  }).done((data) => {
    if(data.result==="success") {
      $("#proCon_add_result_title").html("장비 구매 상담 추가 성공!");
      layer_popup("#proCon_add_result_btn");
    } else if(data.result==="wrong") {
      $("#proCon_add_result_title").html("같은 장비가 존재합니다.");
      layer_popup("#proCon_add_result_btn");
    }
      
      
  });
}

function layer_popup(el){
  

  var $el = $(el);    //레이어의 id를 $el 변수에 저장
  $('.proCon_add_result_dim-layer').fadeIn();

  var $elWidth = ~~($el.outerWidth()),
    $elHeight = ~~($el.outerHeight()),
    docWidth = $(document).width(),
    docHeight = $(document).height();

  // 화면의 중앙에 레이어를 띄운다.
  if ($elHeight < docHeight || $elWidth < docWidth) {
    $el.css({
      marginTop: -$elHeight /2,
      marginLeft: -$elWidth/2
    })
  } else {
    $el.css({top: 0, left: 0});
  }

  $el.find('a.btn-layerClose').click(function(){
    $('.proCon_add_result_dim-layer').fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
    return false;
  });

  $('.layer .dimBg').click(function(){
    $('.proCon_add_result_dim-layer').fadeOut();
    return false;
  });

}


$("#consultHiddenCount").attr("value",'1');
function change(num){
            var x  = document.form;
            var y = Number(x.count.value) + num;
            if(y < 1) y = 1;
            x.count.value = y;
            $("#consultHiddenCount").attr("value",y);
}
function showcontent(){
    if($('#able_delivery_loaction_info').css('display')=='none'){
        $('#able_delivery_loaction_info').show();
    }else{
    $('#able_delivery_loaction_info').hide();
    }
}

//current position
var pos = 0;
//number of slides
var totalSlides = $('#slider_wrap ul li').length;
//get the slide width
var sliderWidth = $('#slider_wrap').width();


$(document).ready(function(){
        

/*****************
BUILD THE SLIDER
*****************/
//set width to be 'x' times the number of slides
$('#slider_wrap ul#slider').width(sliderWidth*totalSlides);

  //next slide  
$('#next').click(function(){
  slideRight();
});

//previous slide
$('#previous').click(function(){
  slideLeft();
});
        
        
        
/*************************
//*> OPTIONAL SETTINGS
************************/
//automatic slider
var autoSlider = setInterval(slideRight, 3000);

//for each slide 
$.each($('#slider_wrap ul li'), function() { 

  //create a pagination
  var li = document.createElement('li');
  $('#pagination_wrap ul').append(li);    
});

//counter
countSlides();

//pagination
pagination();

//hide/show controls/btns when hover
//pause automatic slide when hover
$('#slider_wrap').hover(
  function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
  function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
);
    
    

});//DOCUMENT READY
        
    
    
  /***********
  SLIDE LEFT
  ************/
  function slideLeft(){
    pos--;
    if(pos==-1){ pos = totalSlides-1; }
    $('#slider_wrap ul#slider').css('left', -(sliderWidth*pos));  
    
    //*> optional
    countSlides();
    pagination();
  }
    
    
  /************
  SLIDE RIGHT
  *************/
  function slideRight(){
    pos++;
    if(pos==totalSlides){ pos = 0; }
    $('#slider_wrap ul#slider').css('left', -(sliderWidth*pos)); 
    
    //*> optional 
    countSlides();
    pagination();
  }
    
    
    
        
  /************************
  //*> OPTIONAL SETTINGS
  ************************/
  function countSlides(){
    $('#counter').html(pos+1 + ' / ' + totalSlides);
  }

  function pagination(){
    $('#pagination_wrap ul li').removeClass('active');
    $('#pagination_wrap ul li:eq('+pos+')').addClass('active');
  }
              
// Scroll Animation (sa, 스크롤 애니메이션)
const saTriggerMargin = 300;
const saElementList = document.querySelectorAll('.productPhoto');

const saFunc = function() {
  for (const element of saElementList) {
    if (!element.classList.contains('show')) {
      if (window.innerHeight > element.getBoundingClientRect().top + saTriggerMargin) {
        element.classList.add('show');
      }
    }
  }
}

window.addEventListener('load', saFunc);
window.addEventListener('scroll', saFunc);

//장비 상세보기와 리뷰 보기 나누기
var detail_style=document.getElementById("detail_style");
var review_style=document.getElementById("review_style");
function showDetail(){
  if($('#product_detail_content_showhide').css('display')=='none'){
      $('#product_detail_content_showhide').show();
      $('#product_detail_review').hide();
      detail_style.style.fontFamily="MinSans-Black";
      review_style.style.backgroundColor="#ccc";
      review_style.style.fontFamily="MinSans-Medium";
  }
}

//장비 상세보기와 리뷰 보기 나누기2
function showReview(){
  if($('#product_detail_review').css('display')=='none'){
      $('#product_detail_review').show();
      $('#product_detail_content_showhide').hide();
      review_style.style.fontFamily="MinSans-Medium";
      detail_style.style.fontFamily="MinSans-Black";
  }
}