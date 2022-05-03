$(document).ready(function(){
	 $("#mypage_counseling_button").click(function(){
	 $(".mypage_interior_popup_wrap").css("display", "block");
	 $("#mypage_counseling_mask02").css("display", "block");
	 
	 $.ajax({
                url : "readInteriorList",
                method: "get",
                dataType : "json", //json으로 받거나 합시다
	   			contentType: "application/json; charset=UTF-8",  //application/json; charset=utf-8 
         success : function(data) {
			console.log(data);
			console.log(data.interiorList.consultAcreage);
		},
    	error : function() {
			console.log("Im hurt");
     	},
     	complete : function(){
			alert("ajax호출 완료 시 실행");
		}
		});
	 
	});
});



$(document).ready(function(){
	 $("#mypage_counseling_popup_close").click(function(){
	 $(".mypage_interior_popup_wrap").css("display", "none");
	 $("#mypage_counseling_mask02").css("display", "none");
	});
});
	/*
	function ajaxInterior(){
		console.log("hello world");
		/*$.ajax({
                url : "/readInteriorList",
                method: "get"
            }).done((data) => {
				console.log(data.pager.pageNo);
            });
          
        $.ajax({
                url : "/readInteriorList",
                method: "get",
                dataType : "json",
	   			contentType: "application/json; charset=utf-8",   
         success : function(data) {
			console.log(data);
			console.log(data.pager.pageNo);
		},
    	error : function() {
			console.log("Im hurt");
     	},
     	complete : function(){
			alert("ajax호출 완료 시 실행");
		}
		});
	}*/