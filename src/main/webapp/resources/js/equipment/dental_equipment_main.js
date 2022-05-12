
$(document).ready(function(){
	console.log("~~~~~~~~~~~~~~~~~~~~~~~~");
	$("input[name='category'], input[name='productSort']").on("click",function(){
		var category = $('input[name="category"]:checked').val();
		console.log(category);
		
		var productSort = $('input[name="productSort"]:checked').val();
		console.log(productSort);
		
		$.ajax({
			url: "productListAjax",
			method: "get",
			data: {category:category,
					productSort:productSort},
			success: function(data) {
				if(data.result === "fail"){
					console.log("되냐2????");
					window.location.href = "${pageContext.request.contextPath}/equipment/dental_equipment_main";		
				} else {
					console.log("되냐3????");
					/*console.log(data);*/
					$("#eq_list2").html(data);
				}
			},
			error : function(request, status, error) { 
				alert("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error); }
		})
		
	});
	
});