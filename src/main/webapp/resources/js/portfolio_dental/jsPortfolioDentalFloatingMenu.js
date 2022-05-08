 $(window).scroll( function () {
 
 var
   floater = $('.floating'),  
  startPoint = 1500,
    scrollPoint = parseInt( $(window).scrollTop() + parseInt( window.innerHeight ) ),
  endPoint = parseInt( $('.floating').outerHeight() ),
  limit = $('.floating').outerHeight();
  //console.log("navbarHeight : "+endPoint);
      
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