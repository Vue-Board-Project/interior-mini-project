<%@ page contentType="text/html; charset=UTF-8"%>
<div id="find_pw_popup_wrap" class="vh-100">
        <div id="find_pw_popup_content" style="width:400px; text-align: center;">
            <div id="find_pw_wrapper" class="d-flex flex-column float-right vh-100 p-5">
                <div class="d-flex ml-3 mb-4">
                    <h3>비밀번호를 잊으셨나요?</h3>
                </div>
            
                <form method="post" action="findPassword">
                    <div class="form-group"  style="width: 286px;">
                        <label for="u-email" class="ml-3" style="font-size: 12px;">이메일</label>
                        <div class="ml-3"><input type="text" class="form-control" id="email" name="email"/></div>
                        <div class="text-right mt-3"><small id="emailHelp" class="form-text text-muted">회원가입할때 사용하신 이메일 주소를 입력해주세요.</small></div>
                    </div>
        
                 <div class="text-center">
                     <input type="submit" class="btn" style="background-color: #ca5c0d; color: #faf9f6; width: 270px;" value="보내기"/>
                 </div>
                </form>
            </div>
        </div>
        <button id="find_pw_popup_close" class="m-2"><img src="${pageContext.request.contextPath}/resources/pngs/popup_delete_icon.png"/></button>
    </div>
   <!--  <div id="main_header_mask2" style="width:100%; height:100%; position:fixed; background:rgba(0,0,0,0.7) repeat; top:0; left:0; z-index:999; display:none;"></div> -->
</div>