function selectUserInfo(name, email, phone, postcode, address, addressDetail){
	var chkuser=$("#selectUserInfo").prop("checked");
	if(chkuser){
		console.log("유저 정보를 불러옵시당");
		$('#purchase_username').attr("value", name);
		$('#purchase_useremail').attr("value", email);
		$('#purchase_usertel').attr("value", phone);
		$('#purchase_userpost').attr("value", postcode);
		$('#purchase_useraddr').attr("value", address);
		$('#purchase_userdetaildaar').attr("value", addressDetail);
	}else{
		$('#purchase_username').attr("value", "");
		$('#purchase_useremail').attr("value", "");
		$('#purchase_usertel').attr("value", "");
		$('#purchase_userpost').attr("value", "");
		$('#purchase_useraddr').attr("value", "");
		$('#purchase_userdetaildaar').attr("value", "");
	}
}
//결제 버튼을 누른다면
function sendPurchaseInfo(){
	console.log("결제 정보를 전송합니당");
	$("#paymentVerify").submit();
	$("#payment_result_title").html("정상적으로 결제 처리가 되었습니다.");
}
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

function findAddress(){//주소 찾기
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

function payment_layer_popup(el3){
 		var $el3 = $(el3); 
		$('.payment_result_dim-layer').fadeIn();

		var $elWidth = ~~($el2.outerWidth()),
			$elHeight = ~~($el2.outerHeight()),
			docWidth = $(document).width(),
			docHeight = $(document).height();

		// 화면의 중앙에 레이어를 띄운다.
		if ($elHeight < docHeight || $elWidth < docWidth) {
			$el2.css({
				marginTop: -$elHeight /2,
				marginLeft: -$elWidth/2
			})
		} else {
			$el2.css({top: 0, left: 0});
		}

		$el2.find('.payment_result_dim-layer a.btn-layerClose').click(function(){
			$('.payment_result_dim-layer').fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
			return false;
		});

		$('.payment_result_dim-layer .layer .dimBg').click(function(){
			$('.payment_result_dim-layer').fadeOut();
			return false;
		});

	}