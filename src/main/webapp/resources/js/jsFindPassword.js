
$(document).ready(function(){ 
	if($("#failFindPW").text()!=""){
		$("#main_header_mask").fadeIn(0);
		$("#login_popup_wrap").animate({right: "0"}, 0);
		$("#find_pw_popup_wrap").animate({right: "0"}, 0);
	} 
	$("#find_pw_open").click(function(){ 
		$("#find_pw_popup_wrap").animate({right: "0"}, 350); 
	    /*$("#main_header_mask2").fadeIn(100);*/
	}); 
	$("#find_pw_popup_close").click(function(){ 
		$("#find_pw_popup_wrap").animate({right: "-400"}, 350);
		/*$("#main_header_mask2").fadeOut(100);*/
	}); 
});