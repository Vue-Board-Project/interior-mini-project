function cartSession(){
	let modelNum = $("#sendModelNumber").val();
	let qua = $("#count_up_down").val();
	
	//장비 세션 창으로 값 전송
	$.ajax({
		url:"/springframework-mini-project/cartSessionAdd",
		data:{modelNum, qua},
		method:"post"
	}).done((data) => {
		if(data.result==="success") {
			$("#cart_verify_result_title").html("장바구니에 상품이 담겼습니다.");
			cart_layer_popup("#cart_verify_result_btn");
		} else if(data.result==="wrong") {
			$("#cart_verify_result_title").html("장바구니에 동일한 상품이 존재합니다. 추가를 원하시는 경우 장바구니에서 개수를 변경해주세요");
			cart_layer_popup("#cart_verify_result_btn");
		}

	});
}

function cart_layer_popup(el2){
 		var $el2 = $(el2);    //레이어의 id를 $el 변수에 저장
		$('.cart_verify_result_dim-layer').fadeIn();

		var $elWidth = ~~($el2.outerWidth()),
			$elHeight = ~~($el2.outerHeight()),
			docWidth = $(document).width(),
			docHeight = $(document).height();

		// 화면의 중앙에 레이어를 띄운다.
		if ($elHeight < docHeight || $elWidth < docWidth) {
			$el2.css({
				marginTop: -$elHeight /2,
				marginLeft: -$elWidth/2
			})
		} else {
			$el2.css({top: 0, left: 0});
		}

		$el2.find('a.btn-layerClose').click(function(){
			$('.cart_verify_result_dim-layer').fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
			return false;
		});

		$('.layer .dimBg').click(function(){
			$('.cart_verify_result_dim-layer').fadeOut();
			return false;
		});

	}

/*function addToCart(){
	if(confirm("상품을 장바구니에 추가하겠습니까?")){
		document.addCartForm.submit();//확인
		//location.href="${pageContext.request.contextPath}/equipment/shoppingcart_rentalandpurchase"
	}else{
		document.addCartForm.reset();//취소
			}
	
}*/

function change(num){
    var x  = document.form;
    var y = Number(x.count.value) + num;
    if(y < 1) y = 1;
    x.count.value = y;
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