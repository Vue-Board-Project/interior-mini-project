<%@ page contentType="text/html; charset=UTF-8"%>

<div id="login_popup_wrap" style="background:#faf9f6; border: solid 1px #666666; position:fixed; z-index:9999; display:none; top: 0px; right: 0px;">
     <div id="login_popup_content1" style="width:400px; text-align: center;">
         <div id="login_wrapper" class="d-flex flex-column float-right vh-100 p-5" style="font-family: 'MinSans-Regular'; width: 400px; background-color: #faf9f6;">
             <div class="d-flex ml-3 mb-4">
                 <h3>로그인</h3>
             </div>
         
             <form>
                 <form action="#">
                     <div class="form-group"  style="width: 286px;">
                         <label for="u-email" class="ml-3" style="font-size: 12px;">이메일</label>
                         <div class="ml-3"><input type="text" class="form-control" id="u-email" name="u-email"/></div>
                         <!-- <small id="emailHelp" class="form-text text-muted"></small> -->
                     </div>
         
                     <div class="form-group" style="width: 286px;">
                         <label for="password" class="ml-3"  style="font-size: 12px;">비밀번호</label>
                         <div class="ml-3"><input type="password" class="form-control" id="password" name="password"/></div>
                         <!-- <small id="passwordHelp" class="form-text text-muted">알파벳 대소문자, 숫자를 혼용해서 8~16자</small> -->
                     </div>
                 </form>
         
                 <div class="text-right mb-3 mr-3"><button id="find_pw_open" style="border: none; outline: none; background-color: #faf9f6; color: #a9a9a9;"><small>비밀번호를 잊으셨나요?</small></button></div>
         
                 <div class="text-center">
                     <input type="submit" class="btn" style="background-color: #ca5c0d; color: #faf9f6; width: 270px;" value="로그인하기"/>
                 </div>
         
                 <div class="login_hr_sect"><p>가입하기</p></div>
         
                 <a href="loginSignUp" class="ml-3 btn" style="font-size: 16px; border: none; outline: none; background-color: #ca5c0d; color: #faf9f6; height: 38px; width: 270px; border-radius: 3px;">계정 만들기</a>
             </form>
         </div>

     </div>
     <button id="login_popup_close" class="m-2" style="border: none; outline: none; background-color: #faf9f6; position:absolute; top:0; right:0;"><img src="${pageContext.request.contextPath}/resources/pngs/popup_delete_icon.png"/></button>
 </div>
 <div id="main_header_mask" style="width:100%; height:100%; position:fixed; background:rgba(0,0,0,0.7) repeat; top:0; left:0; z-index:999; display:none;"></div>

