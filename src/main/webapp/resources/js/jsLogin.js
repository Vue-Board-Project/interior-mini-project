/*$(document).ready(function(){
	 $("#login_popup_open").click(function(){
	 $("#login_popup_wrap").css("display", "block");
	 $("#main_header_mask").css("display", "block");
	});
});*/
$(document).ready(function(){ 
	 $("#login_popup_open").click(function(){ 
		 /*$("#login_popup_wrap").css("display", "block");
		 $("#main_header_mask").css("display", "block");*/
		 /*$("#login_popup_wrap").animate({right:50},1000);*/
		 /*$("#login_popup_wrap").show();*/
		 $("#main_header_mask").fadeIn(100);
		 /*$("#login_popup_wrap").addClass('');*/
		 $("#login_popup_wrap").animate({right: "0"}, 350);
	 }); 
	 $("#login_popup_close").click(function(){ 
		/* $("#login_popup_wrap").hide();*/
		 $("#main_header_mask").fadeOut(100);
		 /*$("#login_popup_wrap").css("display", "none");
		 $("#main_header_mask").css("display", "none");*/
		 $("#login_popup_wrap").animate({right: "-400"}, 350);
	 }); 
 }); 