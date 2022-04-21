/*$(document).ready(function(){
	 $("#login_popup_open").click(function(){
	 $("#login_popup_wrap").css("display", "block");
	 $("#main_header_mask").css("display", "block");
	});
});*/
$(document).ready(function(){ 
	 $("#login_popup_open").click(function(){ 
		 $("#login_popup_wrap").css("display", "block"); 
		 $("#main_header_mask").css("display", "block"); 
	 }); 
	 $("#login_popup_close").click(function(){ 
		 $("#login_popup_wrap").css("display", "none"); 
		 $("#main_header_mask").css("display", "none"); 
	 }); 
 }); 