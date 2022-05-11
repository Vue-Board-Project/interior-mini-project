<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class = "container-fluid p-0">
	<div style = "display:flex; width : 100%; height: 1100px;">
		<%-- <%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %> --%>
		<div class= "counseling_menu"  style = "display : inline-block;  width : 15%; height : 1100px; background-color : #faf9f6; border-right : 1px solid #ccc;">
			<div style="display : inline-block; width : 100%; height : 300px;" >
				<div style = "width : 90%; height : 300px; float : right; border-bottom : 3px solid #ca5c0d;">
					<p style = "font-family: 'MinSans-Bold'; font-size : 1.2rem; margin-top : 140px; margin-left : 20px;">마이페이지</p>
				</div>
			</div>
			<div style = "display : inline-block; width : 100%; height : 800px; ">
				<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
			</div>
		</div>
		<div class= "counseilng_content" style = "display : inline-block; width : 85%; height : 1100px;  background-color : #faf9f6;">
			<div style = "display :inline-block; width : 100%; height : 300px;">
				<div style = "width : 90%; height : 160px; border-bottom : 1px solid #ccc; margin : auto;">
					<div style = "font-family: 'MinSans-Bold'; font-size : 3rem; margin-top : 140px; margin-left : 2%;">
						<span class ="pb-1" style ="border-bottom : 5px solid #ca5c0d;">상담 내역</span>
					</div>
				</div>
			</div>
			<div style = "display :inline-block; width : 100%; height : 800px;">
		     	
		     	
		     	<c:if test="${interiorChk != 0}">
		     		<%@ include file="/WEB-INF/views/mypage/counseling/mypage_counseling_interior.jsp" %>
		     	</c:if>
		     	<c:if test="${remodelingChk != 0}">
		     		<%@ include file="/WEB-INF/views/mypage/counseling/mypage_counseling_remodeling.jsp" %>
		     	</c:if>
		     	<c:if test="${asChk != 0}">
		     		<%@ include file="/WEB-INF/views/mypage/counseling/mypage_counseling_AS.jsp" %>
		     	</c:if>
		     	<c:if test="${interiorChk == 0 && remodelingChk == 0 && asChk == 0}">
		     		<%@ include file="/WEB-INF/views/mypage/counseling/mypage_counseling_no_data.jsp" %>
		     	</c:if>
		     	
			</div>
		</div>
	</div>
</div>


<%@ include file="/WEB-INF/views/common/footer.jsp" %>
<style>



	#sidebar_mypage .mypage_list #list_counseling{
        form :active;
        color : #ca5c0d;
        font-weight: 800;
    }
    
    #mypage_counseling_jsp .mypage_counseling_display{
    	display: flex;
 		width : 100%;
 		border : 3px solid 6A67CE;
    }
    
    #mypage_counseling_jsp .mypage_counseling_display .mypage_menu_space{
      	display: inline-block;
      	width : 20%;
        background-color : #fff;
     }
    
    #mypage_counseling_jsp .mypage_counseling_display .counseling_section{
    	  display: inline-block;
          width : 80%;
     }
     
     .mypage_no_counseling_info{
     	width : 1200px;
     	height : 300px;
     }
           
	
     .counseilng_content .mypage_counseling_slots{
     	display : inline-block;
     	width : 100%;
		height : 200px;
		margin-top : 30px;
		
     }
     
     
     /*견적신청 내용 버튼*/
  .mypage_counseling_slots .info_button{
   		font-family: 'MinSans-Medium';
   		color : #272723;
   		background-color : #fff;
	    border: 1px solid #ccc;
	    display: inline-block;
	    border-radius: 10px;
	    width : 150px;
	    height : 50px;
	    float : right;
	    bottom : 0;
	    margin-right : 20px;
	    margin-top : 42px;
	    
	    font-weight : 300;
	    box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.2);
    }
    
    .mypage_counseling_slots .info_button:hover{
   		background-color : #ca5c0d;
   		border: 1px solid #ca5c0d;
   		color : #fff;
    }
    
       
</style>




