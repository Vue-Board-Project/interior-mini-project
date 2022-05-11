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
    let modelNum = $("input[name='modelNum']").val();//모델명
    let detailSym = $("textarea[name='detailSym']").val();//상세증상
    let inputPurchaseDate = $("input[name='inputPurchaseDate']").val();//구매날짜
    let inputPurchaseDateNon = $("input[name='inputPurchaseDateNon']:checked");//구매 모름
    let inputwantASDate = $("input[name='inputwantASDate']").val();//수리 선택 날짜
    
    if(modelNum.length && detailSym.length && 
        (inputPurchaseDate.length || inputPurchaseDateNon.length) 
        && inputwantASDate.length){
            console.log("집에좀가자");
	    $("#ReservationAS").submit();
    }else{
        console.log("응 집에 못가" + detailSym);
        if(!modelNum.length){//모델이 없음
            $("#modelNumSpan").html("<i class='fas fa-exclamation-triangle'></i>&nbsp;존재하지 않는 모델");
        }else{
            $("#modelNumSpan").html("");
        }
        if(detailSym == ""){//상세 증상이 없음
            $("#detailSymSpan").html("<i class='fas fa-exclamation-triangle'></i>&nbsp;상세 증상 미입력")
        }else{
            $("#detailSymSpan").html("");
        }
        if(!inputPurchaseDate.length && !inputPurchaseDateNon.length ){//구매 달력 미입력 
            $("#inputPurchaseDateSpan").html("<i class='fas fa-exclamation-triangle'></i>&nbsp;달력 미입력");
        }else{
            $("#inputPurchaseDateSpan").html("");
        }
        if(!inputwantASDate.length){//as 달력
            $("input[name='inputwantASDate']").css("border", "1px solid red");
        }else{
            $("input[name='inputwantASDate']").css("border", "1px solid lightgray");
        }
    }

    
	
} 
function openPop() {
    document.getElementById("popup_layer").style.display = "block";
}

//팝업 닫기
function closePop() {
    document.getElementById("popup_layer").style.display = "none";
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
//보유 제품 선택이나 종류 선택 시 모델명에 반영
$("#myModelSelectcheck").on('change', function(){
    let nowVal = $(this).val();
    $("input[name='modelNum']").val(nowVal);
   
});
$("input[name='category']").on('change', function(){
    let nowVal = $(this).val();
    $("input[name='modelNum']").val(nowVal);
   
});
