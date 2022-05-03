$(document).ready(function(){
	$("input[name='sort'], input[name='style'], input[name='color'], input[name='field']").on("click",function(){
		var sort = $('input[name="sort"]:checked').val();
        console.log(sort);
        var style = $('input[name="style"]:checked').each(function(){
			var styleVal = $(this).val();
			console.log(styleVal);
		})
		var color = $('input[name="color"]:checked').each(function(){
			var colorVal = $(this).val();
			console.log(colorVal);
		})
		var field = $('input[name="field"]:checked').val();
        console.log(field);
		$.ajax({
			url:"goPortfolioDental",
			method: "get",
			data: {sort:sort,
					field},
			dataType: "json"
		}).done((data)=>{
			result = '';
			for(let item of data){
				console.log(item);
				result += '<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px;">';
				result += '<a href="/springframework-mini-project/portfolio_dental/portfolio_dental_detail?ino='+item.ino+'" class="portfolio_dental_content_a">';
				result += '<img class="portfolio_dental_content_img" src="/springframework-mini-project/portfolio_dental/display?fileName='+item.imImgPath+'"/>';
				result += '<b class="mt-3 portfolio_dental_content_b">'+item.isummary+'</b>';
				result += '<small class="d-block portfolio_dental_content_sm">mansik</small>';
				result += '</a></li>';
			}
			$("#portfolio_dental_content_wrap").html(result);
		});
		console.log("~~~~~~~~~~~~~~~~~~");
	});
/*	$("input[name='style']").on("click",function(){
		var style = $('input[name="style"]:checked').each(function(){
			var value = $(this).val();
		})
		console.log(value);
		
	});*/
});