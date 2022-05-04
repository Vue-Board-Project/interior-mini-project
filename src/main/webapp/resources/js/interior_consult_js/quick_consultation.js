$(document).ready(function() {
	 $('#allloading').hide();
});

//첫번째 페이지 리모델링 인테리어 버튼 선택
$("input:radio[name=consultType]").on("click", function() {
    if(document.getElementById('choose_purpose_new').checked){//신규 인테리어 선택시
        document.querySelector("#remodeling_consult_Room_wrapping").style.display = "none";
        $("#add_detail_consult_start_btn").show();
        
    }else if(document.getElementById('choose_purpose_update').checked){//리모델링 선택시
        document.querySelector("#remodeling_consult_Room_wrapping").style.display = "block";
        $("#add_detail_consult_start_btn").hide();
    }
});






const main = document.querySelector('#read_precautions');
const first = document.querySelector("#first_quick_consultation");

function begin(){
    // main.style.WebkitAnimation = "fadeOut 0.5s";
    // main.style.animation = "fadeOut 0.5s";
    // first.style.WebkitAnimation = "fadeIn 0.5s";
    // first.style.animation = "fadeIn 0.5s";
    main.style.display = "none";
    first.style.display = "block";
}

var count = 1;
var percent = 25;
const consultFirst = document.querySelector("#quick_consultation_rotation_1");
const consultInteriorSecond = document.querySelector("#quick_consultation_rotation_interior2");
const target = document.getElementById('cf_back_btn');
const targetsecond = document.getElementById('cs_interior_btn');

//처음 단계이면 뒤로가기 버튼 막기
if(count == 1){
    target.disabled = true;
}else{
    target.disabled = false;
}

function consultation_first_back_btn(){//뒤로 가기
    //처음 단계이면 뒤로가기 버튼 막기
   
    percent = percent - 25;
    var consult_percent = document.querySelector(".statusbar");
    consult_percent.style.width = percent+"%";
    var consultValue = "#quick_consultation_rotation";
    
    
    var consultValueDisNon = document.querySelector(consultValue + count);
    count--;
    console.log(count);
    var consultValueDisBlock = document.querySelector(consultValue + count);;
    
    if(count == 1){
        target.disabled = true;
    }else{
        target.disabled = false;
    }

    consultValueDisNon.style.display = "none";//다음페이지 없애기
    consultValueDisBlock.style.display = "block";//지나간 페이지 보이기

}




function consultation_second_interior_btn(){//다음

    
    if($("#quick_consultation_rotation1").css("display") == "block"){//첫번째 디스플레이 block인 상태
        if( $('#choose_purpose_update').is(":checked")){//리모델링이 선택된 상태
            //다음 버튼 막기
            var checked = $('input[name="consultRoomList"]:checked');
            if ( !checked.length ) {
                $(".qcrc_border").css("border","2px solid red");
            }else{
                $(".qcrc_border").css("border","1px solid gray");
                nextStepOk();
            }
        }else{
            $(".qcrc_border").css("border","1px solid gray");
            nextStepOk();
        }
    }else if($("#quick_consultation_rotation2").css("display") == "block"){
        var qiuk_consult_style_checked =  $('input[name="consultInteriorStyle"]:checked');
        var choie_Corporation_term_checked = $('input[name="constructionDate"]:checked');
        if(qiuk_consult_style_checked.length &&choie_Corporation_term_checked.length){//둘다 라디오 선택시
            nextStepOk();
        }else{
            if(!qiuk_consult_style_checked.length){
                $(".qiuk_consult_style_s").css("border","2px solid red");
            }else{
                $(".qiuk_consult_style_s").css("border","1px solid lightgray");
            }


            if(!choie_Corporation_term_checked.length){
                $("b[class='choie_Corporation_term_b']").html("[미입력]");
            }else{
                $("b[class='choie_Corporation_term_b']").html("");
            }
        }
        
    }else if($("#quick_consultation_rotation3").css("display") == "block"){
        var consult_date = $("#consult_date").val();
        var conult_reservation_time = $("input[name='consultTime']:checked");

        if(consult_date.length && conult_reservation_time.length ){
            nextStepOk();
        }else{
            if(!consult_date.length){//날짜 미작성
                $("#consult_date").css("border","2px solid red");
            }else{
                $("#consult_date").css("border","1px solid lightgray");
            }
            if(!conult_reservation_time.length){
                $(".crs_time_span").css("background-color","#ff6864");
            }
        }    
    }else if($("#quick_consultation_rotation4").css("display") == "block"){
        
        
    }  
    
       //모든 사항 완료시
       if(percent == 100){
        $("#quick_consult_road_btn_wrap").hide();
        $("#quick_consult_finish_btn_wrap").show();
    }else{
        $("#quick_consult_road_btn_wrap").show();
        $("#quick_consult_finish_btn_wrap").hide();
    }
    

    //처음 단계이면 뒤로가기 버튼 막기
    if(count == 1){

        target.disabled = true;
    }else{
        target.disabled = false;
    }
}


//다음 페이지 전송 가능
function nextStepOk(){
    percent = percent + 25;
    var consult_percent = document.querySelector(".statusbar");
    consult_percent.style.width = percent+"%";

    var consultValue = "#quick_consultation_rotation";

    var con = consultValue + count;
    var consultValueDisNon = document.querySelector(con);

    count++;
    console.log(count);
    var consultValueDisBlock = document.querySelector(consultValue + count);
    
    consultValueDisNon.style.display = "none";//지나간 페이지 없애기
    consultValueDisBlock.style.display = "block";//다음 페이지 보이기

    //처음 단계이면 뒤로가기 버튼 막기
    if(count == 1){
        target.disabled = true;
    }else{
        target.disabled = false;
    }
}


//3단계 시간 미작성 다음 버튼 처리 전 라디오 버튼 눌렀을 때 
$('input[type=radio][name=consultTime]').change(function() {
        
    $(".crs_time_span").css("background-color","white");
    $(".crs_time_span").css("color","black");
});

//빠른 상담 버튼 클릭하여 submit 
$("#qcf_button").click(function(){
    var address = $("#consult_address").val();//주소
    var address_detail = $("#consult_address_detail").val();//상세주소
    var check = $("#consult_checkpri").is(":checked");
    if(address.trim().length != 0 && address_detail.trim().length != 0){
        if( check == true ){//모두 잘 받았다 submit!
            console.log("보내랏");
            $("#quik_consult_send_form").submit(function(){
    
			  $('#allloading').show();
			  return true;
			  
			});
			
			
        }else{//전화번호나 사용자 이름이 공백임

            if(check == false){
                $("#consult_checkpri_input").css("color", "red");
            }else{  
                $("#consult_checkpri_input").css("color", "black");
            }
        }
    }else{
        //주소 작성 안함
        if(address.trim().length == 0){
            $("#consult_address").css("border", "2px solid red");
        }else{
            $("#consult_address").css("border", "1px solid lightgray");
        }

        //상세주소 작성 안함
        if(address_detail.trim().length == 0){
            $("#consult_address_detail").css("border", "2px solid red");
        }else{ 
            $("#consult_address_detail").css("border", "1px solid lightgray");
        }
    }
});

//빠른 상담 버튼 클릭하여 submit 
$("#qcf_button").click(function(){
    var lastInsertQuick =  lastInsertQuick();
    if(lastInsertQuick){
        console.log("빠른 상담 보내랏!");
        $("#quik_consult_send_form").submit();  
    }else{
        nonLastInput();
    }
});

//디데일 상담 클릭하여 submit 
function submit2(frm) {    
    var lastInsert = lastInsertQuick();
    if(lastInsert){
        console.log("상세 상담 보내랏!");
        frm.action='detail_consultation'; 
        frm.submit(); 
        return true; 
        
    }else{
        nonLastInput();
    }

    
  } 

//마지막 블럭 유효성 검사
function lastInsertQuick(){
    var address = $("#consult_address").val();//주소
    var address_detail = $("#consult_address_detail").val();//상세주소
    var check = $("#consult_checkpri").is(":checked");
    if(address.trim().length != 0 && address_detail.trim().length != 0 && check == true){
        return true;
    }else{
        return false;
    }
}
//마지막 블록 미작성시
function nonLastInput (){
    //주소 작성 안함
    if($("#consult_address").val().trim().length == 0){
        $("#consult_address").css("border", "2px solid red");
    }else{
        $("#consult_address").css("border", "1px solid lightgray");
    }

    //상세주소 작성 안함
    if($("#consult_address_detail").val().trim().length == 0){
        $("#consult_address_detail").css("border", "2px solid red");
    }else{ 
        $("#consult_address_detail").css("border", "1px solid lightgray");
    }

    if($("#consult_checkpri").is(":checked") == false){
        $("#consult_checkpri_input").css("color", "red");
    }else{  
        $("#consult_checkpri_input").css("color", "black");
    }
}
//개인정보 동의 체크박스
$("#consult_checkAll").change(function(){
    var checked = $(this).prop('checked');
    $("#consult_checkpri").prop('checked',checked);
});


//달력에 min , max 주기

    const date = new Date();
    
    var year = date.getFullYear();
    var nowMonth = date.getMonth() + 1;
    var month = date.getMonth() + 2;
    var day = date.getDate();


    if(month <10) month = "0"+month; 
    if(nowMonth <10) nowMonth = "0"+nowMonth;
    if(day<10) day = "0"+ day;
    
    

    var start = year + "-" + nowMonth + "-" + day
    var end = year + "-" + month + "-" + day;

    document.getElementById("consult_date").min = start;
    document.getElementById("consult_date").max = end;

    console.log(start);
    console.log(end);

//주소 받기
function consult_address_input(){
    new daum.Postcode({
        oncomplete: function(data) {
           $("#consult_address").val(data.address);
           $("#consult_address_detail").focus();
        }
    }).open();
}





