
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/cssSignUp.css" rel="stylesheet" type="text/css">

 <div id="sign_up_wrap">
          
          <!--content wrapper -->
          <div id="sign_up_wrapper" style="background-color: #faf9f6; height: 100rem;  font-family: 'MinSans-Regular';" novalidate>
              <div class="text-center pt-5"><span style="font-size: 30px; font-family: 'MinSans-Regular';">회원가입</span></div>
              <!-- content-->
              <form method="post" action="join" id="content" style="position: absolute; left: 50%; transform: translate(-50%); width: 700px;">
  
                   <!-- EMAIL -->
                   <div>
                      <h3 class="join_title"><label for="email">이메일<span class="ml-1" style="color: red;">*</span></label></h3>
                      <span class="box int_email">
                          <input type="email" id="email" name="email" class="int" maxlength="100" required>
                      </span>
                      <span class="error_next_box"></span>    
                  </div>
  
                  
  
                  <!-- PW1 -->
                  <div>
                      <h3 class="join_title"><label for="pswd1">비밀번호<span class="ml-1" style="color: red;">*</span></label></h3>
                      <span class="box int_pass">
                          <input type="password" id="password" name="password" class="int" maxlength="20" required>
                          <span id="alertTxt"></span>
                          <img src="${pageContext.request.contextPath}/resources/pngs/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                      </span>
                      <span class="error_next_box"></span>
                  </div>
  
                  <!-- PW2 -->
                  <div>
                      <h3 class="join_title"><label for="pswd2">비밀번호 재확인<span class="ml-1" style="color: red;">*</span></label></h3>
                      <span class="box int_pass_check">
                          <input type="password" id="pswd2" name="pswd2" class="int" maxlength="20" required>
                          <img src="${pageContext.request.contextPath}/resources/pngs/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                      </span>
                      <span class="error_next_box"></span>
                  </div>
  
                  <!-- NAME -->
                  <div>
                      <h3 class="join_title"><label for="name">이름<span class="ml-1" style="color: red;">*</span></label></h3>
                      <span class="box int_name">
                          <input type="text" id="name" name="name" class="int" maxlength="20" required>
                      </span>
                      <span class="error_next_box"></span>
                  </div>
  
                  <!-- MOBILE -->
                  <div>
                      <h3 class="join_title"><label for="phoneNo">대표번호<span class="ml-1" style="color: red;">*</span></label></h3>
                      <span class="box int_mobile">
                          <input type="tel" id="phone" name="phone" class="int" maxlength="16" placeholder="전화번호 입력(-는 빼고 입력해주세요)" required>
                      </span>
                      <span class="error_next_box"></span>    
                  </div>
                  
                  <!-- 주소 입력 -->
                   <div class="userInput">
                        <h3 class="join_title"><label for="phoneNo">주소</label></h3>
                        <input style="width: 49.07%; height: 51px; border: solid 1px #dadada; margin-right: 1%; padding: 10px 14px 10px 14px;" id="postcode" name="postcode"  type="text" placeholder="우편번호" readonly onclick="findAddr()"/>
                        <input style="width: 49.3%; height: 51px; border: solid 1px #dadada;  padding: 10px 14px 10px 14px;" id="address" name="address" type="text" placeholder="도로명 주소" readonly/> <br>
                        <input style="width: 100%; height: 51px; border: solid 1px #dadada; margin-top: 1%;  padding: 10px 14px 10px 14px;" id="addressDetail" name="addressDetail" type="text" placeholder="상세 주소"/>
                   </div>

                   <!-- 사업자 번호 입력 -->
                   <div class="userInput">
                        <h3 class="join_title"><label for="phoneNo">사업자번호<span class="ml-1" style="color: red;">*</span></label></h3>
                        <span class="box int_crn">
                            <input type="text" id="crn" name="crn" class="int" maxlength="10" placeholder="사업자번호 입력(-는 빼고 입력해주세요)"/>
                        </span>
                        <span class="error_next_box"></span>   
                    </div>

                    <!-- 필수 입력 항목 -->
                    <div class="mt-2"><small style="color: #616161;">*은 필수 입력 항목입니다.</small></div>

                    <div class="mt-5 p-4" style="background-color: #d4d4d4;">
                        <label for="agree_all" class="d-block">
                            <input type="checkbox" name="agree_all" id="agree_all"  style='zoom:1.5;'>
                            <span style="font-size: 20px;">모두 동의합니다</span>
                        </label>
                        <diV class="p-4" style="background-color: #f5f5f5;">
                            <label for="agree" class="d-block">
                                <input type="checkbox" name="agree" value="1">
                                <span style="font-size: 16px;">이용약관 동의<strong>(필수)</strong></span>
                            </label>
                            <label for="agree" class="d-block">
                                <input type="checkbox" name="agree" value="2">
                                <span style="font-size: 16px;">개인정보 수집, 이용 동의<strong>(필수)</strong></span>
                            </label>
                            <label for="agree" class="d-block">
                                <input type="checkbox" name="agree" value="3">
                                <span style="font-size: 16px;">개인정보 이용 동의<strong>(필수)</strong></span>
                            </label>
                            <label for="agree" class="d-block">
                                <input type="checkbox" name="agree" value="4">
                                <span style="font-size: 16px;">이벤트, 혜택정보 수신동의<strong class="select_disable">(선택)</strong></span>
                            </label>
                        </diV>
                    </div>
                  <button class="btn btn_area" type="submit" id="btnJoin">가입하기</button>
                  
              </form> 
          </div> 
      </div>
      <script src="${pageContext.request.contextPath}/resources/js/jsSignUp.js"></script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>