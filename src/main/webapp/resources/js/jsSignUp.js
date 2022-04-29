  /*변수 선언*/

  var email = document.querySelector('#email2');
  console.log(email);

  var pw1 = document.querySelector('#password2');
  var pwMsg = document.querySelector('#alertTxt');
  var pwImg1 = document.querySelector('#pswd1_img1');

  var pw2 = document.querySelector('#pswd2');
  console.log(pw2);
  
  var pwImg2 = document.querySelector('#pswd2_img1');
  var pwMsgArea = document.querySelector('.int_pass');

  var userName = document.querySelector('#name');

  var mobile = document.querySelector('#phone');

  var error = document.querySelectorAll('.error_next_box');

  var crn = document.querySelector('#crn');
    
    
  /*이벤트 핸들러 연결*/
  email.addEventListener("focusout", isEmailCorrect);
  pw1.addEventListener("focusout", checkPw);
  pw2.addEventListener("focusout", comparePw);
  userName.addEventListener("focusout", checkName);
  mobile.addEventListener("focusout", checkPhoneNum);
  crn.addEventListener("focusout", checkCRN);
 
  /*콜백 함수*/

  function isEmailCorrect() {
	  console.log("email");
      var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;
      if(email.value === ""){ 
          error[0].innerHTML = "필수 정보입니다.";
          error[0].style.display = "block";
      } else if(!emailPattern.test(email.value)) {
          error[0].innerHTML = "이메일을 다시 확인해주세요.";
          error[0].style.display = "block";
      } else {
          error[0].style.display = "none"; 
      }

  }
  
  function checkPw() {
	  console.log("pw");
      var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
      if(pw1.value === "") {
          error[1].innerHTML = "필수 정보입니다.";
          error[1].style.display = "block";
      } else if(!pwPattern.test(pw1.value)) {
          error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
          pwMsg.innerHTML = "사용불가";
          pwMsgArea.style.paddingRight = "93px";
          error[1].style.display = "block";
          pwMsg.style.display = "block";
          pwImg1.src = "/springframework-mini-project/resources/pngs/m_icon_not_use.png";
      } else {
          error[1].style.display = "none";
          pwMsg.innerHTML = "안전";
          pwMsg.style.display = "block";
          pwMsg.style.color = "#03c75a";
          pwImg1.src = "/springframework-mini-project/resources/pngs/m_icon_safe.png";
      }
  }

  function comparePw() {
	  console.log("pw2");
      if(pw2.value === pw1.value && pw2.value != "") {
          pwImg2.src = "/springframework-mini-project/resources/pngs/m_icon_check_enable.png";
          error[2].style.display = "none";
      } else if(pw2.value !== pw1.value) {
          pwImg2.src = "/springframework-mini-project/resources/pngs/m_icon_check_disable.png";
          error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
          error[2].style.display = "block";
      } 

      if(pw2.value === "") {
          error[2].innerHTML = "필수 정보입니다.";
          error[2].style.display = "block";
      }
  }

  function checkName() {
      var namePattern = /[a-zA-Z가-힣]/;
      if(userName.value === "") {
          error[3].innerHTML = "필수 정보입니다.";
          error[3].style.display = "block";
      } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
          error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
          error[3].style.display = "block";
      } else {
          error[3].style.display = "none";
      }
  }

  function checkPhoneNum() {
      var isPhoneNum = /^([0-9]{2,3})([0-9]{3,4})([0-9]{4})$/;

      if(mobile.value === "") {
          error[4].innerHTML = "필수 정보입니다.";
          error[4].style.display = "block";
      } else if(!isPhoneNum.test(mobile.value)) {
          error[4].innerHTML = "형식에 맞지 않는 번호입니다.";
          error[4].style.display = "block";
      } else {
          error[4].style.display = "none";
      }
  }

  function checkCRN() {
      //3078105564
      var crnValue = document.getElementById("crn").value;
      console.log(crnValue);

      var valueMap = crnValue.replace(/-/gi,'').split('').map(function(item){
          return parseInt(item, 10);
      });

      console.log(valueMap);
      
      if(valueMap.length===10){
          console.log("10");
          var multiply = new Array(1,3,7,1,3,7,1,3,5);
          var checkSum = 0;

          for(var i = 0; i <multiply.length; ++i){
              checkSum += multiply[i]*valueMap[i];
          }

          checkSum += parseInt((multiply[8]*valueMap[8])/10,10);
          console.log(checkSum);
          if(Math.floor(valueMap[9]) === ((10-(checkSum%10))%10)){
              error[5].style.display = "none";
          } else {
              error[5].innerHTML = "형식에 맞지 않는 번호입니다.";
              error[5].style.display = "block";
          }
      } else {
          console.log("10no");
          error[5].innerHTML = "형식에 맞지 않는 번호입니다.";
          error[5].style.display = "block";
      }

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
          document.getElementById('postcode').value = data.zonecode;
          if(roadAddr !== ''){
              document.getElementById('address').value = roadAddr;
          } 
          else if(jibunAddr !== ''){
              document.getElementById('address').value = jibunAddr;
          }
      }
  }).open();
 }
  
  /*개인정보 동의*/
  const agreeChkAll = document.querySelector('input[name=agree_all]');
    agreeChkAll.addEventListener('change', (e) => {
	    let agreeChk = document.querySelectorAll('input[name=agree]');
	    for(let i = 0; i < agreeChk.length; i++){
	    	agreeChk[i].checked = e.target.checked;
	    }
	});
	
