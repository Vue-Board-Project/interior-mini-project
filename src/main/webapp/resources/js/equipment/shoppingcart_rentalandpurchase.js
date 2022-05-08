//카트 조회
function test(){
	$.ajax({
		type: "GET",
		url: "/equipment/shoppingcart_rentalandpurchase",
		data:{
			email: "${cartList.email}",
			modelNum: "${cartList.modelNumber}",
			productName: "${cartList.productName}",
			price: "${cartList.price}",
			productColor: "${cartList.productColor}",
		},
		error : function(error) {
			console.log("error");
			console.log(email);
		},
		success : function(data) {
			console.log("success");
			console.log(email);
		}
		
	});
}
//장바구니 한 상품만 삭제
function removeCartSession(modelNum) {
	$.ajax({
		url:"/springframework-mini-project/cartSessionRemove",
		data:{modelNum},
		method:"post"
	}).done(() => {
		window.location.reload();
	});
}
//장바구니 전체 삭제
function removeCartAllSession() {
	$.ajax({
		url:"/springframework-mini-project/cartSessionAllRemove",
		data:{},
		method:"post"
	}).done(() => {
		window.location.reload();
	});
}
//수량 변경
//var style = $('input[name="style"]:checked').each(function(){
function updateCartSession(modelNum){
	console.log("변경???");
	var hey=$('input[class="quantity_input"]').val();
	console.log(hey);
	$.ajax({
		url:"/springframework-mini-project/cartSessionUpdate",
		data:{
			modelNum:modelNum,
			hey
			},
		method:"post"
	}).done(() => {
		window.location.reload();
	});
}
//금액 합계 구하기$(document).ready(function()
function priceSum(){
	var sum=0;
	var quaAll=0;
	var count=$(".cartcheck").length;
	var count2=$(".quantity_input").length;
	for(var i=0; i<count; i++){
		if($(".cartcheck")[i].checked==true){
			if(isNaN($(".cartcheck")[i].value)){
				$(".cartcheck")[i].value=0;
			}
			console.log($(".cartcheck")[i].value);
		}
		for(var j=0; j<count2; j++){
			
			if(i==(j+1)){
				if(isNaN($(".quantity_input")[j].value)){
					$(".quntity_input")[j].value=0;	
				}
				var qua=parseInt($(".quantity_input")[j].value);
				console.log($(".quantity_input")[j].value);
				sum+=parseInt($(".cartcheck")[i].value*qua);
				quaAll+=qua;
			}	
		}
	} 
	console.log(quaAll);
	console.log(sum);
	$("input[name='sum']").attr("value",sum);
	formatsum=sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	$("#total_sum").html(formatsum+"　원");
	$("#total_quaAll").html(quaAll+"　개");//제품의 총 개수
	$("#modelCount").html(count2);//모델 개수
	
}

//전체선택 체크박스
function selectAll(selectAll)  {
    const checkboxes=document.getElementsByName('purchase_cart_select');
    
    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAll.checked;
    })
    
    var chk=$("cartAllCheck").prop("checked");
    if(chk){
	    priceSum();
	} else {
	    priceSum();
	}
	
}
function selectcart(selectcart){
	var chksel=$(".cartcheck").prop("checked");
	if(chksel){
		priceSum();
	} else {
	    priceSum();
	}
}

//처음 시작 시에도 가격
$(document).ready(function(){
	priceSum();
})

//수량 변경 버튼
$(".qua_plus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	$(this).parent("div").find("input").val(++quantity);
});
$(".qua_minus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	if(quantity > 1){
		$(this).parent("div").find("input").val(--quantity);		
	}
});

//카트 세션을 구매 창으로 값 전송
function cartToPayment(){
	console.log("카트에서 구매로 가고싶어요!");
	$("#cartToPay").submit();
	
	
}