/*<%
	request.setCharacterEncoding("utf-8");
	String username=requeset.getParameter("");
	session.setAttribute("session_id", username);	
%>*/
$(document).ready(function(){
	console.log("~~~~~~~~~~~~~~~~~~~~~~~~");
	$("input[name='category'], input[name='sort']").on("click",function(){
		var category = $('input[name="category"]:checked').val();
		console.log(category);
		
		var sort = $('input[name="sort"]:checked').val();
		console.log(sort);
		
		$.ajax({
			url: "productListAjax",
			method: "get",
			data: {category:category,
					sort:sort},
			success: function(data) {
				if(data.result === "fail"){
					console.log("되냐2????");
					window.location.href = "${pageContext.request.contextPath}/equipment/dental_equipment_main";		
				} else {
					console.log("되냐3????");
					console.log(data);
					$("#eq_list2").html(data);
				}
			},
			error : function(request, status, error) { 
				alert("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error); }
		})
	});
	
	/*$("input[name='sort']").on("click",function(){
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
					$("#product_all_list_sort").html(data);
				}
			},
			error : function(request, status, error) { 
				alert("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error); }
		})
	});*/
});