//step1=>2 넘어가기
function payment_nextstep1(){
    $('#payment_step2').show();
    $('#step2_bt_list').show();
    $('#payment_step1').hide();
    $('#next_page_go_to_payment_step1').hide();
    $('#payment_step3').hide();
}
//step2=>3
function payment_nextstep2(){
    $('#payment_step3').show();
    $('#step3_bt_list').show();
    $('#step2_bt_list').hide();
    $('#payment_step2').hide();
}
//step2=>1 
function payment_backstep1(){
    $('#payment_step1').show();
    $('#next_page_go_to_payment_step1').show();
    $('#payment_step2').hide();
    $('#step2_bt_list').hide();
}
//step2=>3
function payment_nextstep2(){
    $('#payment_step3').show();
    $('#step3_bt_list').show();
    $('#step2_bt_list').hide();
    $('#payment_step2').hide();
}
//step3=>2
function payment_backstep2(){
    $('#payment_step3').hide();
    $('#step3_bt_list').hide();
    $('#step2_bt_list').show();
    $('#payment_step2').show();
}
function findAddr(){
    new daum.Postcode({
        oncomplete: function(data) {
            
            console.log(data);
            
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}
function findAddr2(){
    new daum.Postcode({
        oncomplete: function(data) {
            
            console.log(data);
            
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}

 $(document).ready(function(){ 
 $("#next_page_go_to_payment_step3").click(function(){ 
              $(".layer_popup").css("display", "block"); 
              $(".dimmed").css("display", "block"); 
              }); 
    /*$(".btn_close").click(function(){ 
        $(".layer_popup").css("display", "none"); 
        $(".dimmed").css("display", "none"); 
        }); */
    }); 