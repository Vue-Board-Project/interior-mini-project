
$(document).ready(function(){ 
	 if($("#failLogin").text()!=""){
		$("#main_header_mask").fadeIn(0);
		$("#login_popup_wrap").animate({right: "0"}, 0);
	}
	 if($("#successPW").text()!=""){
		$("#main_header_mask").fadeIn(0);
		$("#login_popup_wrap").animate({right: "0"}, 0);
	}
	 $("#login_popup_open").click(function(){ 
		 $("#main_header_mask").fadeIn(100);
		 $("#login_popup_wrap").animate({right: "0"}, 350);
	 }); 
	 $("#login_popup_close").click(function(){ 
		 $("#main_header_mask").fadeOut(100);
		 $("#login_popup_wrap").animate({right: "-400"}, 350);
	 }); 
 }); 
 
 console.log("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~``");
   var email4 = document.querySelector('#email444');
   var pw14 = document.querySelector('#password444');
   var error4 = document.querySelectorAll('.error_next_box444');
   
  /*이벤트 핸들러 연결*/
  email4.addEventListener("focusout", isEmailCorrect444);
  pw14.addEventListener("focusout", checkPw44);
  
    function isEmailCorrect444() {
      var emailPattern4 = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;
      if(email4.value === ""){ 
          error4[0].innerHTML = "이메일을 입력해주세요.";
          error4[0].style.display = "block";
          return false;
      } else if(!emailPattern4.test(email.value)) {
          error4[0].innerHTML = "이메일을 다시 확인해주세요.";
          error4[0].style.display = "block";
          return false;
      } else {
          error4[0].style.display = "none"; 
          return true;
      }

  }
  
    function checkPw44() {
      var pwPattern4 = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
      if(pw14.value === "") {
          error4[1].innerHTML = "비밀번호를 입력해주세요.";
          error4[1].style.display = "block";
          return false;
      } else if(!pwPattern4.test(pw14.value)) {
          error4[1].innerHTML = "비밀번호 형식과 다릅니다.";
          error4[1].style.display = "block";
          return false;
      } else {
          error4[1].style.display = "none";
          return true;
      }
  }