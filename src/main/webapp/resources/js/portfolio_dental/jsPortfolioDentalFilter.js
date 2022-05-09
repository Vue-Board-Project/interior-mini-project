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
			var cnt=0;
			for(let item of data){
				cnt = cnt+1;
			}
			console.log(data);
			console.log(cnt);
			//result = '<div class="text-center mt-5 mb-5">';
			result = '<div class="ml-3 text-left portfolio_dental_content_cnt">';
			result += '<p class="portfolio_dental_content_cnt_p">전체 '+cnt+'</p>';
			result += '</div>';
			result += '<section>';
			result += '<ul id="portfolio_dental_content_wrap" class="d-flex" style="padding-left:0px; flex-wrap: wrap; width:1146px;">';
			for(let item of data){
				console.log(item);
				result += '<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px;">';
				result += '<a href="/springframework-mini-project/portfolio_dental/portfolio_dental_detail?ino='+item.ino+'" class="portfolio_dental_content_a">';
				result += '<div class="portfolio_dental_content_img_div">';
				result += '<img class="portfolio_dental_content_img" src="/springframework-mini-project/portfolio_dental/portfolioDisplay?fileName='+item.imImgPath+'"/>';
				result += '</div>';
				result += '<div style="position: relative">';
				result += '<b class="mt-3 portfolio_dental_content_b">'+item.isummary+'</b>';
				result += '<div style="position:absolute; width: 70px; top: 10px; right: 10px;"><i class="far fa-eye"></i><span class="ml-1">'+item.ihits+'</span></div>';
				result += '<small class="d-block portfolio_dental_content_sm"><span># '+item.istyle+'</span> <span># '+item.allColor+'</span></small>';
				result += '</div>';
				result += '</a></li>';
			}
			result += '</ul>';
			result += '</section> ';
			//result += '</div>';
			$("#portfolio_model_filter_content_wrap").html(result);
		});
		console.log("~~~~~~~~~~~~~~~~~~");
	});
});