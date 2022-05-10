<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class = "container-fluid p-0">
	<div style = "display:flex; width : 100%; height: 1100px;">
		<%-- <%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %> --%>
		<div class= "counseling_menu"  style = "display : inline-block;  width : 15%; height : 1100px; background-color : #faf9f6; border-right : 1px solid #ccc;">
			<div style="display : inline-block; width : 100%; height : 300px;" >
				<div style = "width : 90%; height : 300px; float : right; border-bottom : 3px solid #ca5c0d;">
					<p style = "font-family: 'MinSans-Bold'; font-size : 1rem; margin-top : 140px;">마이페이지</p>
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
		     		<div class = "mypage_no_counseling_info">
			     		<div class = "mp_noinfo_title" style = "font-size : 1.5rem; font-family: 'MinSans-Regular'; text-align : center;">상담 내역이 없습니다.</div>
		     			<div class = "mp_noinfo_content" style = "font-size : 1.5rem; font-family: 'MinSans-Regular'; margin-top :50px; text-align : center;">치과에 최적화된 인테리어로 고객의 눈높이에 맞는 맞춤제안을 제공합니다.</div>	
			     			<button type="button" class="btn btn-primary btn-lg" style = "margin-top :50px; background-color : #ca5c0d; border : 0; outline : 0; margin-left : 350px; "
			     			onclick="location.href='/springframework-mini-project/interior_consult/quick_consultation'"> 인테리어 견적 보기 </button>
			     			<button type="button" class="btn btn-primary btn-lg" style = "margin-top :50px; background-color : #ca5c0d; border : 0; outline : 0; margin-left : 50px; "
			     			onclick="location.href='/springframework-mini-project/goPortfolioDental'">포트폴리오 구경하기</button>
		     		</div>
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
        
    #mypage_counseling_jsp {
    } 
    
    #mypage_counseling_jsp .mypage_counseling_display{
    	display: flex;
 		/* flex-direction: row;  */
 		width : 100%;
 		border : 3px solid 6A67CE;
    }
    
    #mypage_counseling_jsp .mypage_counseling_display .mypage_menu_space{
      	display: inline-block;
      	width : 20%;
        background-color : #fff;
        /* border : 3px solid 6A67CE; */
     }
    
    #mypage_counseling_jsp .mypage_counseling_display .counseling_section{
    	  display: inline-block;
          width : 80%;
          /* border : 3px solid 6A67CE; */
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
	    border: none;
	    display: inline-block;
	    border-radius: 10px;
	    width : 150px;
	    height : 50px;
	    margin-left : 750px;
	    font-weight : 300;
    }
    
       
</style>




