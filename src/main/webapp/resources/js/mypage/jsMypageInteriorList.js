function showInteriorPopup(number) {
	 $(".mypage_interior_popup_wrap").css("display", "block");
	 $("#mypage_counseling_mask02").css("display", "block"); 
	 
	 $('input[name=inputNm]').attr('value',number);
	 ajaxInterior();
}

$(document).ready(function(){
	
	 $("#mypage_counseling_popup_close").click(function(){
	 $(".mypage_interior_popup_wrap").css("display", "none");
	 $("#mypage_counseling_mask02").css("display", "none");
	});
});


