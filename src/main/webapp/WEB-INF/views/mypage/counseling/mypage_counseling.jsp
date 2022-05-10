<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class = "container-fluid p-0">
	<div style = "display:flex; width : 100%; height: 100px;">
		<%-- <%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %> --%>
		<div class= "border"  style = "display : inline-block; width : 20%;"></div>
		<div class= "border" style = "display : inline-block; width : 80%;"></div>
	</div>
</div>
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
           
	
    	
     /*견적신청 내용 버튼*/
  .content_section .info_button{
   		font-family: 'MinSans-Bold';
   		color : #272723;
   		background-color : #fff;
        position: absolute;
	    border: none;
	    display: inline-block;
	    border-radius: 10px;
	    width : 150px;
	    height : 50px;
	    margin-left : 60%;
	    margin-bottom : 8%;
    }
    
       
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>


