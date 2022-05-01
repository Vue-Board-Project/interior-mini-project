$(document).ready(function(){
	$("input[name='sort']").click(function(){
		// getter
        var radioVal = $('input[name="sort"]:checked').val();
        console.log(radioVal);
        //alert(radioVal);
        console.log("~~~~~~~~~~~~~~~~~");
	})
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
	/*$.ajax({
		url:"portfolioFilter",
		data:"",
		method:"post"
	}).done((data)=>{
		console.log(data);
		$("#portfolio_dental_content_wrap").html();
	})*/
	
});