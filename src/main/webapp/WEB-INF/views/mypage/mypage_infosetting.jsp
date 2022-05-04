<%@ page contentType="text/html; charset=UTF-8"%>

<style>
	#sidebar_mypage .mypage_list #list_setting{
        	form :active;
        	color : #ca5c0d;
        	font-weight: 800;
	}

</style>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<link href="${pageContext.request.contextPath}/resources/css/mypage/cssMypageInfoSetting.css" rel="stylesheet" type="text/css">
<div style="background-color: #faf9f6; font-family: 'MinSans-Regular';">
	<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
	
		<div class="mt-5">
			<div class="text-center">
				<div><h3>개인 정보 수정</h3></div>
				<div>
					<p>고객께서 가입하신 O'Molaire 회원정보입니다.</p>
				</div>
		    </div>
	
	       <div id="mypage_modify_wrap">
	          <!-- 수정할 필요 없는건 회색 처리 + disabled -->
	          <!--content wrapper -->
	          <div id="mypage_wrapper" style=" height: 70rem; " novalidate>
	          
	          <c:if test="${error != null}">
				  <div class="alert alert-danger mb-2 mt-3" style="width: 37%; margin: 0 auto;" role="alert">
				    ${error}
				  </div>			
			  </c:if>
	              <!-- content-->
	              <form method="post" action="mypage_infosetting" id="content" style="position: absolute; left: 50%; transform: translate(-50%); width: 700px;">
	  
	                   <!-- EMAIL -->
	                   <div>
	                      <h3><label for="email">이메일</label></h3>
	                      <span class="box" style = "background-color : #d5d5d8">
	                          <input type="email" id="email" disabled class="int" maxlength="100" placeholder = "${user.email}" style = "background-color : #d5d5d8">
	                      </span>   
	                  </div>
	  
	                  
	  
	                  <!-- PW1 -->
	                  <div>
	                      <h3 class="mypage_h3"><label for="pswd1">비밀번호<span class="ml-1" style="color: red;">*</span></label></h3>
	                      <span class="box int_pass">
	                          <input type="password" id="pswd1" class="int" maxlength="20" name="Password" required>
	                          <span id="alertTxt">사용불가</span>
	                          <img src="${pageContext.request.contextPath}/resources/pngs/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
	                      </span>
	                      <span class="error_next_box"></span>
	                  </div>
	  
	                  <!-- PW2 -->
	                  <div>
	                      <h3 class="mypage_h3"><label for="pswd2">비밀번호 재확인<span class="ml-1" style="color: red;">*</span></label></h3>
	                      <span class="box int_pass_check">
	                          <input type="password" id="pswd2" class="int" maxlength="20" name="PasswordChk" required>
	                          <img src="${pageContext.request.contextPath}/resources/pngs/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
	                      </span>
	                      <span class="error_next_box"></span>
	                  </div>
	  
	                  <!-- NAME -->
	                  <div>
	                      <h3 class="mypage_h3"><label for="name">이름</label></h3>
	                      <span class="box" style = "background-color : #d5d5d8">
	                          <input type="text" disabled id="name" class="int" maxlength="20" placeholder = "${user.name}"  style = "background-color : #d5d5d8">
	                      </span>
	                  </div>
	  
	                  <!-- MOBILE -->
	                  <div>
	                      <h3 class="mypage_h3"><label for="phoneNo">휴대전화</label></h3>
	                      <span class="box"  style = "background-color : #d5d5d8">
	                          <input type="tel" disabled id="mobile"  class="int" maxlength="16" placeholder="${user.phone}"  style = "background-color : #d5d5d8">
	                      </span>
	                  </div>
	                  
	                  <!-- 주소 입력 -->
	                   <div class="userInput">
	                   <div style = "display: flex; flex-direction: row;">
	                        <h3><label for="phoneNo">주소</label></h3>
	                        <small style="color: #616161; margin-left : 30px; margin-top : 18px;">주소가 없을 경우 인테리어, 리모델링 상담이 불가합니다.</small>
	                    </div>
	                        <input style="width: 49.07%; height: 51px; border: solid 1px #dadada; margin-right: 1%; padding: 10px 14px 10px 14px;" id="member_post"  type="text" placeholder="우편번호"  name="postcode" readonly onclick="findAddr()"/>
	                        <input style="width: 49.3%; height: 51px; border: solid 1px #dadada;  padding: 10px 14px 10px 14px;" id="member_addr" type="text" placeholder="도로명 주소" id="member_address"  name="address"  readonly/> <br>
	                        <input style="width: 100%; height: 51px; border: solid 1px #dadada; margin-top: 1%;  padding: 10px 14px 10px 14px;" type="text" name="addressDetail"  id="member_addressDetail" placeholder="상세 주소"/>
	                   </div>
	
	                   <!-- 사업자 번호 입력 -->
	                   <div class="userInput">
	                        <h3><label for="phoneNo">사업자번호</label></h3>
	                        <span class="box"  style = "background-color : #d5d5d8">
	                            <input type="text" disabled id="crn" class="int" maxlength="10" placeholder="${user.crn}" name = "crn" style = "background-color : #d5d5d8"/>
	                        </span> 
	                    </div>
	
	                    <!-- 필수 입력 항목 -->
	                    <div class="mt-2"><small style="color: #616161;">*은 필수 입력 항목입니다.</small></div>   
	                  <input class="btn btn_area" type="submit" id="btnModify" value="수정하기"/> 
	                  
	                  <div class = "mypage_user_quit">
		                  <small style="color: #616161; float : right; top : 0px;">
		                  	오몰레어만의 혜택 전부 포기하고 탈퇴하기
		                  </small>
	                  </div>
	              </form>
	              
	          </div> 
	      </div>
	</div>
</div>
<%@ include file="/WEB-INF/views/mypage/mypage_user_quit_popup.jsp" %>
<style>
#mypage_quit_mask{
    	z-index: 3;
    }
    
    .mypage_popup_wrap{
    	z-index: 4;
    	
    }

</style>

<script src="${pageContext.request.contextPath}/resources/js/mypage/jsMypageInfoSetting.js"></script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>

