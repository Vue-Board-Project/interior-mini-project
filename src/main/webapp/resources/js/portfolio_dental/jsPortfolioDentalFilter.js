$(document).ready(function(){
	$("input[name='field']").on("click",function(){
		if($('input[name="field"]').is(':checked')){
			 console.log("**^^^***&&&^^^*****");
		     $('input[type="checkbox"][name="field"]').prop('checked',false);
		     $(this).prop('checked',true);
	    }
		var field = $('input[name="field"]:checked').val();
        console.log(field);
	})
	$("input[name='sort'], input[name='style'], input[name='color'], input[name='field']").on("click",function(){
		var sort = $('input[name="sort"]:checked').val();
        console.log(sort);
        var styleArrVal = [];
        var style = $('input[name="style"]:checked').each(function(){
			//var styleVal = $(this).val();
			//console.log(styleVal);
			styleArrVal.push($(this).val());
		})
		console.log(styleArrVal);
		var colorArrVal = [];
		var color = $('input[name="color"]:checked').each(function(){
			//var colorVal = $(this).val();
			//console.log(colorVal);
			colorArrVal.push($(this).val());
		})
		console.log(colorArrVal);
		var field = $('input[name="field"]:checked').val();
   
		$.ajax({
			url:"goPortfolioDental",
			method: "get",
			data: {sort:sort,
					styleArr:styleArrVal,
					colorArr:colorArrVal,
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
});