//상담 제품 따라 왼쪽 길이 늘리기
var value = $("#stepthree_height").children().length;
console.log(value);
value = 12*value;
$("#stepthree_height_result").css("height",value+"rem");

//상담신청 유효성 검사
function productConsultInsertGO(){
    var consult_propose = $("input[name=pcPurpose]:checked");//목적
    var consult_service = $("input[name=wantService]:checked");//서비스
    var consult_model = $("#productConsultAllCount").text(); //모델
    var consult_date = $("input[name=pcDate]").val();//날짜
    var consult_time = $("input[name=pcTime]:checked");//시간

    if(consult_propose.length && consult_service.length && 
            consult_model != 0 && consult_time.length){
            //모두 가능한 상태
            $("#sendPcf").submit();
    }else{
        console.log("되냐");
        //유효성 검사 진행
        //상담 목적
        if(!consult_propose.length){
            $(".pp_span").css("border","2px solid red");
        }
        //상담 서비스
        if(!consult_service.length){
            $(".ps_span").css("border","2px solid red");
        }
        //날짜와 상담자 정보
        if(consult_date == ""){
            $("input[name=pcDate]").css("border","2px solid red");
        }
        //세부상담 요청 사항
        if(!consult_time.length){
            $(".p_time_span").css("background-color","#ff6864");
        }
    }

}
//상담목적 변경
$("input[name=pcPurpose]").change(function(){
    $(".pp_span").css("border", "1px solid lightgray");
});
//상담서비스 변경
$("input[name=wantService]").change(function(){
    $(".ps_span").css("border", "1px solid lightgray");
});
//상담날짜
$("input[name=pcDate]").change(function(){
    $("input[name=pcDate]").css("border", "1px solid lightgray");
});
//상담시간
$("input[name=pcTime]").change(function(){
    $(".p_time_span").css("background-color","white");
});




