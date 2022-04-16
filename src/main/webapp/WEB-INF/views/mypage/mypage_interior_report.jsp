<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>


<div class="mypage_interior_report_section">
         <div class = "header_section">
          <div class="text">인테리어 현황</div>
          <span class="sub_text">진행 중인 인테리어의 현황을 확인합니다.</span>
         </div>
          
     	<div class="content_section">
     	
</div>

<style>

#mypage_interior_report_section{
        	form :active;
        	color : #F58B54;
        	font-weight: 800;
        }
         
  .header_section .text{
        display: inline-block;
        color: #321313;
        font-size: 25px;
        font-weight: 500;
        margin: 18px
    }
          
   .content_section {
       width : calc(100% - 250px);
       height : 230px;
       text-align : left;
       padding: 5%;
     }
      
     
      
      
        
        
</style>

<script>
//DB 연동은 나중에

</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
