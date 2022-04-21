
$("input:radio[name=choose_purpose_of_consultation]").click(function()
{
    if(document.getElementById('choose_purpose_new').checked){//신규 인테리어 선택시
        document.querySelector("#remodeling_consult_Room_wrapping").style.display = "none";
        
    }else if(document.getElementById('choose_purpose_update').checked){//리모델링 선택시
        document.querySelector("#remodeling_consult_Room_wrapping").style.display = "block";
    }
})







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
const target = document.getElementById('consultation_first_back_btn');

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

    percent = percent + 25;
    var consult_percent = document.querySelector(".statusbar");
    consult_percent.style.width = percent+"%";
    
    if(percent == 100){
        $("#quick_consult_road_btn_wrap").hide();
        $("#quick_consult_finish_btn_wrap").show();
    }else{
        $("#quick_consult_road_btn_wrap").show();
        $("#quick_consult_finish_btn_wrap").hide();
    }

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





