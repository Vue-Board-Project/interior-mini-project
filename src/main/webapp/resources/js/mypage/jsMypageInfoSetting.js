
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

      /*변수 선언*/
      var pw1 = document.querySelector('#pswd1');
      var pwMsg = document.querySelector('#alertTxt');
      var pwImg1 = document.querySelector('#pswd1_img1');
    
      var pw2 = document.querySelector('#pswd2');
      var pwImg2 = document.querySelector('#pswd2_img1');
      var pwMsgArea = document.querySelector('.int_pass');
    
      var error = document.querySelectorAll('.error_next_box');
    
      /*이벤트 핸들러 연결*/
    
      pw1.addEventListener("focusout", checkPw);
      pw2.addEventListener("focusout", comparePw);
    
      /*콜백 함수*/
    
      function checkPw() {
         console.log("pw");
          var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
          if(pw1.value === "") {
              error[0].innerHTML = "필수 정보입니다.";
              error[0].style.display = "block";
          } else if(!pwPattern.test(pw1.value)) {
              error[0].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
              pwMsg.innerHTML = "사용불가";
              pwMsgArea.style.paddingRight = "93px";
              error[0].style.display = "block";
              
              pwMsg.style.display = "block";
              pwImg1.src = "/springframework-mini-project/resources/pngs/m_icon_not_use.png";
          } else {
              error[0].style.display = "none";
              pwMsg.innerHTML = "안전";
              pwMsg.style.display = "block";
              pwMsg.style.color = "#03c75a";
              pwImg1.src = "/springframework-mini-project/resources/pngs/m_icon_safe.png";
          }
      }
    
      function comparePw() {
          if(pw2.value === pw1.value && pw2.value != "") {
              pwImg2.src = "/springframework-mini-project/resources/pngs/m_icon_check_enable.png";
              error[1].style.display = "none";
          } else if(pw2.value !== pw1.value) {
              pwImg2.src = "/springframework-mini-project/resources/pngs/m_icon_check_disable.png";
              error[1].innerHTML = "비밀번호가 일치하지 않습니다.";
              error[1].style.display = "block";
          } 
    
          if(pw2.value === "") {
              error[1].innerHTML = "필수 정보입니다.";
              error[1].style.display = "block";
          }
      }