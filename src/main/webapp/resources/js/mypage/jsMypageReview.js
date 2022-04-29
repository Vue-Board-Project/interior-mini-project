

	var review_button = document.getElementsByName("mypage_review_product_button"); 
	
	function mypage_review_avaliable() {
		$('#mypage_review_tab_available').show();
		$('#mypage_review_tab_finished').hide();
	}

	function mypage_review_finished() {
		$('#mypage_review_tab_available').hide();
		$('#mypage_review_tab_finished').show();
	}
	
	$(document).ready(function(){
		 $(review_button).click(function(){
			 
		 $("#mypage_review_mask").css("display", "block");
		 $(".mypage_popup_wrap").css("display", "block");
		});
	});

	 $(document).ready(function(){
		 $("#mypage_review_popup_close").click(function(){
		 $("#mypage_review_mask").css("display", "none");
		 $(".mypage_popup_wrap").css("display", "none");
		});
	});
		 

function setReviewPhoto(event) { 
		for (var image of event.target.files) { 
			var reader = new FileReader(); 
			
			reader.onload = function(event) { 
				let img = document.createElement("img");
                
				img.setAttribute("src", event.target.result); 
				document.querySelector("div.review_image_container").appendChild(img); 
			}; 
				console.log(image); 
				reader.readAsDataURL(image); 
	} 
}
   