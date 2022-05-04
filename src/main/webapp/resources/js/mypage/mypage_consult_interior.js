$(document).ready(function(){
	 $("#mypage_counseling_button").click(function(){
	 $(".mypage_interior_popup_wrap").css("display", "block");
	 $("#mypage_counseling_mask02").css("display", "block"); 	
	
	});
	
	 $("#mypage_counseling_popup_close").click(function(){
	 $(".mypage_interior_popup_wrap").css("display", "none");
	 $("#mypage_counseling_mask02").css("display", "none");
	});
});

