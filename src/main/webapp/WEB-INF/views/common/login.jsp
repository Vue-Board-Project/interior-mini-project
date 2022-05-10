<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="login_popup_wrap" style="background:#faf9f6; border: solid 1px #666666; position:fixed; z-index:9999; top: 0px; right: -400px;">
     <div id="login_popup_content1" style="width:400px; text-align: center;">
         <div id="login_wrapper" class="d-flex flex-column float-right vh-100 p-5" style="font-family: 'MinSans-Regular'; width: 400px; background-color: #faf9f6;">
             <div class="d-flex ml-3 mb-4">
                 <h3>로그인</h3>
             </div>
         
             <div>
             	 <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
					<div id="failLogin" class="alert alert-danger mb-2" role="alert">
						<c:if test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'Bad credentials'}">
						 	아이디 또는 비밀번호가 틀립니다.
					 	</c:if>
					 	<c:if test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'User is disabled'}">
						 	계정이 비활성화되었습니다. 관리자에게 문의하세요.
					 	</c:if>
					 	<c:if test="${fn:contains(SPRING_SECURITY_LAST_EXCEPTION.message, 'principal exceeded')}">
							인증 횟수가 초과되었습니다.
						</c:if> 
					 </div> 
				 </c:if>
				 <c:if test="${successPW != null}">
				    <div id="successPW" class="alert alert-success mb-2 mt-3" style="width: 270px; margin: 0 auto; font-size: 12px;" role="alert">
				      ${successPW}
				    </div>			
			    </c:if>
			    <c:if test="${errorMSG != null}">
				    <div id="errorMSG" class="alert alert-danger mb-2 mt-3" style="width: 270px; margin: 0 auto; font-size: 12px;" role="alert">
				      ${errorMSG}
				    </div>			
			    </c:if>
                 <form method="post" action="${pageContext.request.contextPath}/login">
                 	 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                     <div class="form-group"  style="width: 286px;">
                         <label for="email" class="ml-3" style="font-size: 12px;">이메일</label>
                         <div class="ml-3">
                         	<input type="text" class="form-control" id="email444" name="email"/>
                        </div>
                         <span align="left" class="error_next_box444 ml-3" style="color: red;"></span>
                     </div>
         
                     <div class="form-group" style="width: 286px;">
                         <label for="password" class="ml-3"  style="font-size: 12px;">비밀번호</label>
                         <div class="ml-3">
                         	<input type="password" class="form-control" id="password444" name="password"/>
                         </div>
                         <span align="left" class="error_next_box444 ml-3" style="color: red;"></span>
                     </div>
	            	 <div class="text-right mb-3 mr-3"><button type="button" id="find_pw_open" style="border: none; outline: none; background-color: #faf9f6; color: #a9a9a9;"><small>비밀번호를 잊으셨나요?</small></button></div>

	         
	                 <div class="text-center">
	                     <input type="submit" class="btn" style="background-color: #ca5c0d; color: #faf9f6; width: 270px;" value="로그인하기"/>
	                 </div>
                 </form>
         
                 <div class="login_hr_sect"><p>가입하기</p></div>
         
                 <a href="loginSignUp" class="btn" style="font-size: 16px; border: none; outline: none; background-color: #ca5c0d; color: #faf9f6; height: 38px; width: 270px; border-radius: 3px;">계정 만들기</a>
            </div>
         </div>

     </div>
     <button id="login_popup_close" class="m-2" style="border: none; outline: none; background-color: #faf9f6; position:absolute; top:0; right:0;"><img src="${pageContext.request.contextPath}/resources/pngs/popup_delete_icon.png"/></button>
 </div>
 <div id="main_header_mask" style="width:100%; height:100%; position:fixed; background:rgba(0,0,0,0.7) repeat; top:0; left:0; z-index:999; display:none;"></div>

