$(document).ready(function(){
	$("input[name='sort']").on("click",function(){
		var sort = $('input[name="sort"]:checked').val();
        console.log(sort);
		$.ajax({
			url:"goPortfolioDental",
			method: "get",
			data: {sort:sort},
			dataType: "json"
		}).done((data)=>{
			result = '';
			for(let item of data){
				console.log(item);
				result += '<li class="m-3 pb-3 portfolio_dental_content" style="list-style:none; padding-left:0px;">';
				result += '<a href="portfolioDentalDeatail3" class="portfolio_dental_content_a">';
				result += '<img class="portfolio_dental_content_img" src="/springframework-mini-project/resources/model_dental_images/photos/chungchun_waiting_room5.jpg"/>';
				result += '<b class="mt-3 portfolio_dental_content_b">'+item.isummary+'</b>';
				result += '<small class="d-block portfolio_dental_content_sm">mansik</small>';
				result += '</a></li>';
			}
			$("#portfolio_dental_content_wrap").html(result);
		});
	});
});