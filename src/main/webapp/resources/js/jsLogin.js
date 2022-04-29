
$(document).ready(function(){ 
	 if($("#failLogin").text()!=""){
		$("#main_header_mask").fadeIn(100);
		$("#login_popup_wrap").animate({right: "0"}, 350);
	}
	 $("#login_popup_open").click(function(){ 
		 $("#main_header_mask").fadeIn(100);
		 $("#login_popup_wrap").animate({right: "0"}, 350);
	 }); 
	 $("#login_popup_close").click(function(){ 
		 $("#main_header_mask").fadeOut(100);
		 $("#login_popup_wrap").animate({right: "-400"}, 350);
	 }); 
 }); 