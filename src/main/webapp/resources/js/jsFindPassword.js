$(document).ready(function(){
	$("#find_pw_open").click(function(){
		$("#find_pw_popup_wrap").css("display", "block");
		$("#main_header_mask2").css("display", "block");
	});
});
$(document).ready(function(){ 
	$("#find_pw_open").click(function(){ 
		$("#login_popup_wrap").css("display", "block"); 
		$("#main_header_mask2").css("display", "block"); 
	}); 
	$("#find_pw_popup_close").click(function(){ 
		$("#find_pw_popup_wrap").css("display", "none"); 
		$("#main_header_mask2").css("display", "none"); 
	}); 
});