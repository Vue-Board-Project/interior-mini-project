//인풋 클릭하면 default 사라짐
function clearText(thefield){
if (thefield.defaultValue==thefield.value)
        thefield.value = ""
}
//구입년월을 모를 경우
function payDate(){
	var chk=$('#checkwhenyoudontknow').prop("checked");
	if(chkuser){
		$('#realPurchaseDate').attr("value", '1980-05-19');
	}
}

function setDisplay(){
    if($('input:radio[id=checked_same_user]').is(':checked')){
        $('#checked_same_user_info').show();
        $('#checked_user_update_info').hide();
    }else{
        $('#checked_same_user_info').hide();
        $('#checked_user_update_info').show();
    }     
}
$(document).ready(function(){ 
    $("#btn_select_reservation_date").click(function(){ 
    $("#as_reservation_date_ch").css("display", "block"); 
    }); 
    $("#login-popup-close").click(function(){ 
    $("#as_reservation_date_ch").css("display", "none"); 
    }); 
}); 
//input data 예약 신청
function ReservationAdd(){
	console.log("집에좀가자");
	$("#ReservationAS").submit();
} 
function openPop() {
    document.getElementById("popup_layer").style.display = "block";
}

//팝업 닫기
function closePop() {
    document.getElementById("popup_layer").style.display = "none";
}