<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>

<div class="counseling_section">
		<div class = "header_section">
          <div class="text">견적 신청</div>
          <span class="sub_text">신청 내역을 보여드립니다.</span>
         </div>
          
     	<div class="content_section">
     	
			<h4><b>서울 성북구 35평형 아파트 인테리어</b><br>
			인테리어를 신청하셨습니다.</h4>
			
			<i id = "mascot_cat" class='bx bxs-cat'></i>
			<button class = "info_button" onclick = "info_popup()">견적신청 내용</button>
		</div>
</div>

<style>

	#list_counseling{
        	form :active;
        	color : #F58B54;
        	font-weight: 800;
        }
        
    .counseling_section{
          position: relative;
          background: #F9F5F0;
          min-height: 100vh;
          top: 0;
          left: 250px;
          width: calc(100% - 250px);
          transition: all 0.5s ease;
          z-index: 2;
     }
           
    .content_section {
    	border: 1px solid #F58B54;
    	background-image : url("/webapp/resources/images/osstem_interior_02.png");
    	color : #fff;
    	
    }
    
    .content_section .info_button{
        position: relative;
	    border: none;
	    display: inline-block;
	    padding: 15px 30px;
	    border-radius: 15px;
	    text-decoration: none;
	    font-weight: 600;
	    transition: 0.25s;
	    position : static;
	    float : right;
    }
        
</style>

<script>
	function info_popup() {
		console.log("팝업창 링크 안연결되는 거 해결하기.");
		window.open("/mypage/myinfo_counsel_popup.jsp", "counsel_info", "width=500, height=800, left=100, top=50"); 
	}
	
	
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>


