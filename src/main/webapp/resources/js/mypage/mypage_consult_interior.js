$(document).ready(function(){
	 $("#mypage_counseling_button").click(function(){
	 $(".mypage_popup_wrap").css("display", "block");
	 $("#mypage_counseling_mask").css("display", "block");
	});
});

$(document).ready(function(){
	 $("#mypage_counseling_popup_close").click(function(){
	 $(".mypage_popup_wrap").css("display", "none");
	 $("#mypage_counseling_mask").css("display", "none");
	});
});
	