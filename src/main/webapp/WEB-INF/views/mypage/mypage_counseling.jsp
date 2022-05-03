<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div id = "mypage_counseling_jsp">
	<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
	
	<div class="counseling_section">
			<div class = "header_section">
	          <div class="text">상담 내역</div>
	          <span class="sub_text">상담 신청 내역을 보여드립니다.</span>
	          <hr width = 90%>
	         </div>
	          
	     	<div class="content_section">
	     	<!-- 각 조건문을 위한 항목 설정 -->
	     	<jsp:useBean id="now" class="java.util.Date" />
			<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate" /> 

	     	<c:if test="${interiorChk != 0}">
	     		<%@ include file="/WEB-INF/views/mypage/mypage_counseling_interior.jsp" %>
	     	</c:if>
	     	<c:if test="${remodelingChk != 0}">
	     		<%@ include file="/WEB-INF/views/mypage/mypage_counseling_remodeling.jsp" %>
	     	</c:if>
	     	<c:if test="${remodelingChk != 0}">
	     		<%@ include file="/WEB-INF/views/mypage/mypage_counseling_AS.jsp" %>
	     	</c:if>
	     	<c:if test="${interiorChk == 0 && remodelingChk == 0 && remodelingChk == 0}">
	     		<div class = "mypage_no_counseling_info" style = "padding : auto;">
		     		<div style = "display: flex; flex-direction: row;">
		     			<div class = "mp_noinfo_logo"><img src = "${pageContext.request.contextPath}/resources/images/mypage/mypage_nocounseling_img.png" style = "width : 60px; height : 60px;"></div>
		     			<span class = "mp_noinfo_title" style = "font-size : 1.5rem; font-family: 'MinSans-Regular'; margin-top :20px; margin-left : 20px;">상담 내역이 없습니다.</span>
		     		</div>
	     			<div class = "mp_noinfo_content" style = "font-size : 1.5rem; font-family: 'MinSans-Regular'; margin-top :50px;">치과에 최적화된 인테리어로 고객의 눈높이에 맞는 맞춤제안을 제공합니다.</div>	
	     			<button type="button" class="btn btn-primary btn-lg" style = "margin-top :50px; background-color : #ca5c0d; border : 0; outline : 0; margin-left : 80px;"
	     			onclick="location.href='/springframework-mini-project/interior_consult/quick_consultation'"> 인테리어 견적 보기 </button>
	     			<button type="button" class="btn btn-primary btn-lg" style = "margin-top :50px; background-color : #ca5c0d; border : 0; outline : 0; margin-left : 40px;"
	     			onclick="location.href='/springframework-mini-project/goPortfolioDental'">포트폴리오 구경하기</button>
	     		</div>
	     	</c:if>
	     	
			</div>
		</div>
			
			

</div>

<style>

	#sidebar_mypage .mypage_list #list_counseling{
        	form :active;
        	color : #ca5c0d;
        	font-weight: 800;
        }
    #mypage_counseling_jsp {
    	width : 100%;
    	/*나중에 높이값 바꿔야함 */
    	height : 800px;
    	background: #faf9f6;
    } 
       
    .counseling_section{
          position: relative;
          top: 0;
          left: 249px;
          width: calc(100% - 250px);
     }
           
	
    	
    /*견적신청 내용 버튼*/
    .content_section .info_button{
        position: relative;
	    border: none;
	    display: inline-block;
	    padding: 15px 30px;
	    border-radius: 15px;
	    text-decoration: none;
	    font-weight: 600;
	    /* transition: 0.25s; */
	    float : right;
	    margin-right : 3%;
    }
    
    
   

    
        
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>


