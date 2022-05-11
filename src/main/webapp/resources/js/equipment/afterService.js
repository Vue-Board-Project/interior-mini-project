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

//보유 제품 선택 시
function selectModelInfo(modelNumber, productName, inputPurchaseDate){
	var chkuser=$("#selectModel").prop("checked");
	if(chkuser){
        $("#selectModelInfo").show();
        $('#as_model_input').attr("value", modelNumber);
		$('#purchase_username').attr("value", productName);
		$('#purchase_useremail').attr("value", pattahoname);
		$('#purchase_usertel').attr("value", inputPurchaseDate);
	}else{
        $("#selectModelInfo").hide(); 
		$('#purchase_username').attr("value", "");
		$('#purchase_useremail').attr("value", "");

	}
}
$(document).ready(function(){
    var checkText = ""; 
    var thisVal = $(this).val();
    var basicSymptoms=document.getElementsByClassName("simpleSymEl");
    var detailedSym=document.getElementById("as_detail_input");
    var applicationDate=document.getElementById("realPurchaseDate");
    var scheduled_service_date=document.getElementById("wantASDate");
    var timeorder=document.getElementsByClassName("wandAsTime");

    if(basicSymptoms.value==""){
        checkText = "간단한 제품의 증상을 체크해주세요.";
        return false;
    }
    if(detailedSym.value.length<10){
        checkText = "제품의 증상에 대하여 10자 이상 입력해 주세요.";
        return false;
    }
    if(applicationDate.value==""){
        checkText = "제품의 구매 날짜를 체크 해주세요";
        return false;
    }
    if(scheduled_service_date.value==""){
        checkText = "원하시는 서비스 날짜를 선택해주세요";
        return false;
    }
    if(timeorder.value==""){
        checkText = "원하시는 서비스 시간을 선택해주세요";
        return false;
    }
    if(checkText != ""){
        $(this).siblings("p").html(checkText); 
        $(this).siblings("p").addClass("vali"); 
        $(this).siblings("p").slideDown(); 
    } 
    else { 
        $(this).siblings("p").slideUp(function(){ $(this).removeClass("vali");
        }); 
    }

})