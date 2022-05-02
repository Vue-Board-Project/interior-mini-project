$(document).ready(function(){
	$("input[name='sort']").on("click",function(){
		var sort = $('input[name="sort"]:checked').val();
        console.log(sort);
		/*$.ajax({
			url : "sortVal",
			type : "get",
			data : {sort : sort}
		}).done((data) => {
			var html = "";
			html += "<c:forEach items='${interiorList}' var='list'>"
			$("portfolio_dental_content_wrap").html();
		});*/
	});
	/*$("input[name='sort']").click(function(){
		// getter
        var sort = $('input[name="sort"]:checked').val();
        console.log(sort);
        //alert(radioVal);
        //console.log("~~~~~~~~~~~~~~~~~");
        $.ajax({
			url:"postSort",
			type: "post",
			data : sort
		}).done(() => {});
	})*/
	/*$("input[name='style']").click(function(){
		// getter
        var check_arr = []; 
        $('input:checkbox[name="style"]:checked').each(function(){
			var check = $(this).val();
			check_arr.push(check);
		});
        console.log(check_arr);
        //alert(check);
        console.log("~~~~~~~~~~~~~~~~~");
	})*/
/*	$.ajax({
		url:"portfolioFilter"
	}).done((data)=>{
		console.log(data);
		$("#portfolio_dental_content_wrap").html();
	})*/
	
});