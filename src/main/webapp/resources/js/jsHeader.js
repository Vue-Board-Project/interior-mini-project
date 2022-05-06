
$(document).ready(function(){
	console.log("광고 있지롱~~~~~~~~");
	$("#main_header_ad_close").on("click", function() {
		$('body').removeClass('body_class').addClass('body_class2');
		console.log("광고 없지롱~~~~~~~~");
	});
});
// Hide Header on on scroll down
var didScroll;
var lastScrollTop = 0;
var delta = 5;
var navbarHeight = 215;
console.log("didScroll : "+didScroll);
console.log("lastScrollTop : "+lastScrollTop);
console.log("delta : "+delta);
console.log("navbarHeight : "+navbarHeight);
  
$(window).scroll(function(event){
    didScroll = true;
});

setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
}, 250);

function hasScrolled() {
    var st = $(this).scrollTop();
    
    // Make sure they scroll more than delta
    if(Math.abs(lastScrollTop - st) <= delta)
        return;
    
    // If they scrolled down and are past the navbar, add class .nav-up.
    // This is necessary so you never see what is "behind" the navbar.
    if (st > lastScrollTop && st > navbarHeight){
        // Scroll Down
        console.log("Scroll Down");
        $('header').removeClass('nav-down').addClass('nav-up');
    } else {
        // Scroll Up
        console.log("Scroll Up");
        if(st + $(window).height() < $(document).height()) {
        	$('header').removeClass('nav-up').addClass('nav-down');
        }
    }
    
    lastScrollTop = st;
	console.log("didScroll : "+didScroll);
	console.log("lastScrollTop : "+lastScrollTop);
	console.log("delta : "+delta);
	console.log("navbarHeight : "+navbarHeight);
}

/* 추가로 웹페이지의 스크롤을 내렸을때를 감지해 코드를 실행시키는 함수입니다.
$(window).scroll(function(){ 
   if($(window).scrollTop() == $(document).height() - $(window).height()){ 
      // 실행할 함수
   } 
});
*/


