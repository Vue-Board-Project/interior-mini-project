<%@ page contentType="text/html; charset=UTF-8"%>
    <style>
      html {
      height: 100%;
      }

      body {
          margin: 0;
          height: 100%;
          background: #f5f6f7;
          font-family: 'MinSans-Regular'; 
      }
      #logo {
          width: 240px;
          height: 44px;
          cursor: pointer;
      }

      #header {
          padding-top: 62px;
          padding-bottom: 20px;
          text-align: center;
      }
      #wrapper {
          position: relative;
          height: 100%;
      }

      #content {
          position: absolute;
          left: 50%;
          transform: translate(-50%);
          width: 700px;
      }

      /* 입력폼 */

      input:focus {
          outline: none;
      }


      h3 {
          margin: 19px 0 8px;
          font-size: 14px;
          font-weight: 700;
      }


      .box {
          display: block;
          width: 100%;
          height: 51px;
          border: solid 1px #dadada;
          padding: 10px 14px 10px 14px;
          box-sizing: border-box;
          background: #fff;
          position: relative;
      }

      .int {
          display: block;
          position: relative;
          width: 100%;
          height: 29px;
          border: none;
          background: #fff;
          font-size: 15px;
      }

      input {
        font-family: 'MinSans-Regular';     
      }

      .box.int_pass {
          padding-right: 40px;
      }

      .box.int_pass_check {
          padding-right: 40px;
      }

      .step_url {
          /*@naver.com*/
          position: absolute;
          top: 16px;
          right: 13px;
          font-size: 15px;
          color: #8e8e8e;
      }

      .pswdImg {
          width: 18px;
          height: 20px;
          display: inline-block;
          position: absolute;
          top: 50%;
          right: 16px;
          margin-top: -10px;
          cursor: pointer;
      }

      #bir_wrap {
          display: table;
          width: 100%;
      }

      #bir_yy {
          display: table-cell;
          width: 147px;
          
      }

      #bir_mm {
          display: table-cell;
          width: 147px;
          vertical-align: middle;
      }

      #bir_dd {
          display: table-cell;
          width: 147px;
      }

      #bir_mm, #bir_dd {
          padding-left: 10px;
      }

      select {
          width: 100%;
          height: 29px;
          font-size: 15px;
          background: #fff url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
          background-size: 20px 8px;
          -webkit-appearance: none;
          display: inline-block;
          text-align: start;
          border: none;
          cursor: default;
          font-family: 'MinSans-Regular'; 
      }

      /* 에러메세지 */

      .error_next_box {
          margin-top: 9px;
          font-size: 12px;
          color: red;    
          display: none;
      }

      #alertTxt {
          position: absolute;
          top: 19px;
          right: 38px;
          font-size: 12px;
          color: red;
          display: none;
      }

      /* 버튼 */

      .btn_area {
          margin: 50px 0 91px;
      }

      #btnJoin {
          width: 100%;
          padding: 21px 0 17px;
          border: 0;
          cursor: pointer;
          color: #fff;
          background-color: #ca5c0d;
          font-size: 20px;
          font-weight: 400;
          font-family: 'MinSans-Regular'; 
          border-radius: 10px;
      }
    </style>

    <div id="sign_up_wrap">
        
        <!--content wrapper -->
        <div id="wrapper" style="background-color: #faf9f6; height: 67rem;">
            <div class="text-center pt-5"><span style="font-size: 30px; font-family: 'MinSans-Regular';">회원가입<span></div>
            <!-- content-->
            <div id="content">

                 <!-- EMAIL -->
                 <div>
                    <h3 class="join_title"><label for="email">이메일</label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" maxlength="100" placeholder="선택입력">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>

                

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="text" id="pswd1" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="${pageContext.request.contextPath}/resources/pngs/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="text" id="pswd2" class="int" maxlength="20">
                        <img src="${pageContext.request.contextPath}/resources/pngs/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" maxlength="4" placeholder="년(4자)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>                                    
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" class="int" maxlength="2" placeholder="일">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>    
                </div>

                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" class="sel">
                            <option>성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area">
                    <a class="btn" id="btnJoin">
                        <span>가입하기</span>
                    </a>
                </div>

                

            </div> 
        </div> 
    </div>
<script>
    /*변수 선언*/

  var pw1 = document.querySelector('#pswd1');
  var pwMsg = document.querySelector('#alertTxt');
  var pwImg1 = document.querySelector('#pswd1_img1');

  var pw2 = document.querySelector('#pswd2');
  var pwImg2 = document.querySelector('#pswd2_img1');
  var pwMsgArea = document.querySelector('.int_pass');

  var userName = document.querySelector('#name');

  var yy = document.querySelector('#yy');
  var mm = document.querySelector('#mm');
  var dd = document.querySelector('#dd');

  var gender = document.querySelector('#gender');

  var email = document.querySelector('#email');

  var mobile = document.querySelector('#mobile');

  var error = document.querySelectorAll('.error_next_box');



  /*이벤트 핸들러 연결*/

  pw1.addEventListener("focusout", checkPw);
  pw2.addEventListener("focusout", comparePw);
  userName.addEventListener("focusout", checkName);
  yy.addEventListener("focusout", isBirthCompleted);
  mm.addEventListener("focusout", isBirthCompleted);
  dd.addEventListener("focusout", isBirthCompleted);
  gender.addEventListener("focusout", function() {
      if(gender.value === "성별") {
          error[5].style.display = "block";
      } else {
          error[5].style.display = "none";
      }
  })
  email.addEventListener("focusout", isEmailCorrect);
  mobile.addEventListener("focusout", checkPhoneNum);

  /*콜백 함수*/

  function checkPw() {
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
          pwImg1.src = "${pageContext.request.contextPath}/resources/pngs/m_icon_not_use.png";
      } else {
          error[1].style.display = "none";
          pwMsg.innerHTML = "안전";
          pwMsg.style.display = "block";
          pwMsg.style.color = "#03c75a";
          pwImg1.src = "${pageContext.request.contextPath}/resources/pngs/m_icon_safe.png";
      }
  }

  function comparePw() {
      if(pw2.value === pw1.value && pw2.value != "") {
          pwImg2.src = "${pageContext.request.contextPath}/resources/pngs/m_icon_check_enable.png";
          error[2].style.display = "none";
      } else if(pw2.value !== pw1.value) {
          pwImg2.src = "${pageContext.request.contextPath}/resources/pngs/m_icon_check_disable.png";
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


  function isBirthCompleted() {
      var yearPattern = /[0-9]{4}/;

      if(!yearPattern.test(yy.value)) {
          error[4].innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
          error[4].style.display = "block";
      } else {
          isMonthSelected();
      }


      function isMonthSelected() {
          if(mm.value === "월") {
              error[4].innerHTML = "태어난 월을 선택하세요.";
          } else {
              isDateCompleted();
          }
      }

      function isDateCompleted() {
          if(dd.value === "") {
              error[4].innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
          } else {
              isBirthRight();
          }
      }
  }



  function isBirthRight() {
      var datePattern = /\d{1,2}/;
      if(!datePattern.test(dd.value) || Number(dd.value)<1 || Number(dd.value)>31) {
          error[4].innerHTML = "생년월일을 다시 확인해주세요.";
      } else {
          checkAge();
      }
  }

  function checkAge() {
      if(Number(yy.value) < 1920) {
          error[4].innerHTML = "정말이세요?";
          error[4].style.display = "block";
      } else if(Number(yy.value) > 2020) {
          error[4].innerHTML = "미래에서 오셨군요. ^^";
          error[4].style.display = "block";
      } else if(Number(yy.value) > 2005) {
          error[4].innerHTML = "만 14세 미만의 어린이는 보호자 동의가 필요합니다.";
          error[4].style.display = "block";
      } else {
          error[4].style.display = "none";
      }
  }


  function isEmailCorrect() {
      var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

      if(email.value === ""){ 
          error[0].style.display = "none"; 
      } else if(!emailPattern.test(email.value)) {
          error[0].style.display = "block";
      } else {
          error[0].style.display = "none"; 
      }

  }

  function checkPhoneNum() {
      var isPhoneNum = /([01]{2})([01679]{1})([0-9]{3,4})([0-9]{4})/;

      if(mobile.value === "") {
          error[6].innerHTML = "필수 정보입니다.";
          error[6].style.display = "block";
      } else if(!isPhoneNum.test(mobile.value)) {
          error[6].innerHTML = "형식에 맞지 않는 번호입니다.";
          error[6].style.display = "block";
      } else {
          error[6].style.display = "none";
      }
  }
</script>