/*<%
	request.setCharacterEncoding("utf-8");
	String username=requeset.getParameter("");
	session.setAttribute("session_id", username);	
%>*/
$(document).ready(function(){
	$("input[name='category']").on("click",function(){
		var category = $('input[name="category"]:checked').val();
		
		console.log(category);
		
		$.ajax({
			url: "productListAjax",
			method: "get",
			data: {category:category},
			success: function(data) {
				if(data.result === "fail"){
					console.log("되냐2????");
					window.location.href = "${pageContext.request.contextPath}/equipment/dental_equipment_main";		
				} else {
					console.log("되냐3????");
					console.log(data);
					$("#dental_product_list_wrap").html(data);
				}
			},
			error : function(request, status, error) { 
				alert("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error); }
		})/*.done((data)=>{
			console.log("되냐????");
			if(data.result === "fail"){
				console.log("되냐2????");
				window.location.href = "${pageContext.request.contextPath}/equipment/dental_equipment_main";		
			} else {
				console.log("되냐3????");
				$("#dentalequipmentmain_wrapper").html(data);
			}
		});*/
	
	});
	
	$("input[name='sort']").on("click",function(){
		var sort = $('input[name="sort"]:checked').val();
		
		console.log(sort);
		
		$.ajax({
			url: "allProductListAjax",
			method: "get",
			data: {sort:sort},
			success: function(data) {
				if(data.result === "fail"){
					console.log("되냐2????");
					window.location.href = "${pageContext.request.contextPath}/equipment/dental_equipment_main";		
				} else {
					console.log("되냐3????");
					/*console.log(data);*/
					$("#product_all_list_sort").html(data);
				}
			},
			error : function(request, status, error) { 
				alert("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error); }
		})
	});
});