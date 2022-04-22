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
	     	
		     	<div class = "mypage_counseling_history">
					<h4><b>서울 성북구 35평형 아파트 인테리어</b><br>
					인테리어를 신청하셨습니다.</h4>
					<button class = "info_button" id = "mypage_counseling_button">견적신청 내용</button>
				</div>
			</div>
		</div>
			<%@ include file="/WEB-INF/views/mypage/myinfo_counsel_popup.jsp" %>
			

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
           
	.mypage_counseling_history{
		padding-left : 5%;
		padding-top : 5%;
		border: 1px solid #F58B54;
    	background-image : url("${pageContext.request.contextPath}/resources/images/mypage/mypage_osstem_interior_logo.png");
    	background-size: cover;
		background-repeat: no-repeat;
		width : 95%;
		height : 95%;
    	color : #fff;
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
	    transition: 0.25s;
	    float : right;
	    margin-right : 3%;
    }
    
    
    /*팝업 선택시 회색 레이어 */
    #mypage_counseling_mask{
    	 z-index: 3;
    }
    
    .mypage_popup_wrap {
    	z-index: 4; 
    }
    

    
        
</style>

<script>
$(document).ready(function(){
	 $("#mypage_counseling_button").click(function(){
	 $(".mypage_popup_wrap").css("display", "block");
	 $("#mypage_counseling_mask").css("display", "block");
	});
});

$(document).ready(function(){
	 $("#mypage_counseling_popup_close").click(function(){
	 $(".mypage_popup_wrap").css("display", "none");
	 $("#mypage_counseling_mask").css("display", "none");
	});
});
	
	
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>


