$(document).ready(function(){ 
	$("#main_content_btn_1").css("color","#ca5c0d");
	$("#main_home_content").show();
	$("#main_before_btn").click(function(){
		console.log("전으로");
		$("#main_content_1").show();
		$("#main_content_2").hide();
		$("#main_content_btn_1").css("color","#ca5c0d");
		$("#main_content_btn_2").css("color","black");
	});
	$("#main_next_btn").click(function(){
		console.log("다음으로");
		$("#main_content_2").show();
		$("#main_content_1").hide();
		$("#main_content_btn_2").css("color","#ca5c0d");
		$("#main_content_btn_1").css("color","black");
	});
	
	$("#main_nav_list_home").click(function(){
		$("#main_home_content").show();
		$("#main_interior_content").hide();
		$("#main_product_content").hide();
		$("#main_news_content").hide();
		$(".main_nav_list hr").css("visibility","hidden");
		$("#main_nav_home hr").css("visibility","visible");
		$(".main_nav_list_icon").css("background-color","#6a6a6a");
		$("#main_nav_list_icon_home").css("background-color","#272723");
		$(".main_nav_list span").css("color","#6a6a6a");
		$("#main_nav_list_home span").css("color","black");
		$("#main_content_wrap").css("background-color","#faf9f6");
		$("#main_back_round").hide();
		$(".ocean").hide();
	});
	$("#main_nav_list_interior").click(function(){
		$("#main_interior_content").show();
		$("#main_home_content").hide();
		$("#main_product_content").hide();
		$("#main_news_content").hide();
		$(".main_nav_list hr").css("visibility","hidden");
		$("#main_nav_interior hr").css("visibility","visible");
		$(".main_nav_list_icon").css("background-color","#6a6a6a");
		$("#main_nav_list_icon_interior").css("background-color","#272723");
		$(".main_nav_list span").css("color","#6a6a6a");
		$("#main_content_wrap").css("background-color","#ffd4b1");
		$("#main_back_round").show();
		$("#main_back_round").css("background-color","#faf9f6");
		$(".ocean").hide();

	});
	$("#main_nav_list_product").click(function(){
		$("#main_product_content").show();
		$("#main_home_content").hide();
		$("#main_interior_content").hide();
		$("#main_news_content").hide();
		$(".main_nav_list hr").css("visibility","hidden");
		$("#main_nav_product hr").css("visibility","visible");
		$(".main_nav_list_icon").css("background-color","#6a6a6a");
		$("#main_nav_list_icon_product").css("background-color","#272723");
		$(".main_nav_list span").css("color","#6a6a6a");
		$("#main_nav_list_product span").css("color","black");
		$("#main_content_wrap").css("background-color","#faf9f6");
		$("#main_back_round").show();
		$("#main_back_round").css("background-color","#ffd4b1");
		$(".ocean").hide();
	});
	$("#main_nav_list_news").click(function(){
		$("#main_news_content").show();
		$("#main_home_content").hide();
		$("#main_interior_content").hide();
		$("#main_product_content").hide();
		$(".main_nav_list hr").css("visibility","hidden");
		$("#main_nav_news hr").css("visibility","visible");
		$(".main_nav_list_icon").css("background-color","#6a6a6a");
		$("#main_nav_list_icon_news").css("background-color","#272723");
		$(".main_nav_list span").css("color","#6a6a6a");
		$("#main_nav_list_news span").css("color","black");
		$("#main_content_wrap").css("background-color","#faf9f6");
		$("#main_back_round").hide();
		$("body").css("overflow", "hidden");
		$(".ocean").show();
	});
}); 