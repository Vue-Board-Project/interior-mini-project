function test(){
	$.ajax({
		type: "GET",
		url: "/equipment/shoppingcart_rentalandpurchase",
		data:{
			email: "${cartList.email}",
			modelNumber: "${cartList.modelNumber}",
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

//금액 합계 구하기$(document).ready(function()
function priceSum(){
	var sum=0;
	
	var count=$(".cartcheck").length;
	for(var i=0; i<count; i++){
		if($(".cartcheck")[i].checked==true){
			if(isNaN($(".cartcheck")[i].value)){
				$(".cartcheck")[i].value=0;
			}
			sum+=parseInt($(".cartcheck")[i].value);
			console.log($(".cartcheck")[i].value);
		}
		if(isNaN($("#hey").value)){
			$("#hey").value=0;	
		}
		var qua=parseInt($("#hey").value);
			console.log(qua);
		}
		
	formatsum=sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	$("#total_sum").html(formatsum+"원");
	
}
//fuction

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
$("#qua_plus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	$(this).parent("div").find("input").val(++quantity);
});
$("#qua_minus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	if(quantity > 1){
		$(this).parent("div").find("input").val(--quantity);		
	}
});