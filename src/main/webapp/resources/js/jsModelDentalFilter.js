$(document).ready(function(){
	$("input[name='field']").on("click",function(){
		if($('input[name="field"]').is(':checked')){
		     $('input[type="checkbox"][name="field"]').prop('checked',false);
		     $(this).prop('checked',true);
	    }
		var field = $('input[name="field"]:checked').val();
	})
	$("input[name='sort'], input[name='style'], input[name='color'], input[name='field']").on("click",function(){
		var sort = $('input[name="sort"]:checked').val();
        var styleArrVal = [];
        var style = $('input[name="style"]:checked').each(function(){

			styleArrVal.push($(this).val());
		})
		console.log(styleArrVal);
		var colorArrVal = [];
		var color = $('input[name="color"]:checked').each(function(){
			colorArrVal.push($(this).val());
		})
		console.log(colorArrVal);
		var field = $('input[name="field"]:checked').val();
   
		$.ajax({
			url:"goModelDental",
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
			result = '<div class="ml-3 text-left model_dental_cnt">';
			result += '<p class="model_dental_cnt_p">전체 '+cnt+'</p>';
			result += '</div>';
			result += '<section>';
			result += '<ul id="portfolio_dental_content_wrap" class="d-flex" style="padding-left:0px; flex-wrap: wrap; width:996px; ">';
			for(let item of data){
				console.log(item);
				result += '<li class="m-3 pb-3 model_dental_content" style="list-style:none; padding-left:0px; width:300px;">';
				result += '<a style="position: relative" href="/springframework-mini-project/model_dental/model_dental_detail?ino='+item.ino+'" class="model_dental_content_a">';
				result += '<div class="model_dental_content_img_div">';
				result += '<div class="model_dental_content_img_div_content" style="width: 280px; height: 180px; position: relative;">';
				result += '<img class="model_dental_content_img" src="/springframework-mini-project/model_dental/display?fileName='+item.imImgPath+'"/>';
				result += '<div class="white_oss_logo_div" style="position: absolute; top: 35%; left: 6%; width: 280px; height: 180px;">';
				result += '<img src="/springframework-mini-project/resources/pngs/white_logo.png" style=" width: 200px;"/>';
				result += '</div>';
				result += '</div>';
				result += '</div>';
				result += '<div>';
				result += '<b class="model_dental_content_b">'+item.isummary+'</b>';
				result += '<div style="position:absolute; width: 70px; top: 10px;"><i class="far fa-eye" style="color: white;"></i><span style="color: white;" class="ml-1">'+item.ihits+'</span></div>';
				result += '<small class="d-block model_dental_content_sm"><span>#'+item.istyle+' </span> <span># '+item.allColor+'</span></small>';
				result += '</div>';
				result += '</a></li>';
			}
			result += '</ul>';
			result += '</section> ';
			//result += '</div>';
			$("#dental_model_filter_content_wrap").html(result);
		});
	});
});