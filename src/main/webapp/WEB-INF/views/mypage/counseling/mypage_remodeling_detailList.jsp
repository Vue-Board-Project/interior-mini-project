<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div id = "mypage_remodeling_detailList_jsp">
	<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
	
	<div class="counseling_section">
			<div class = "header_section">
	          <div class="text">리모델링 상담 내역</div>
	          <span class="sub_text">이전 리모델링 상담 신청 내역을 보여드립니다.</span>
	          <hr width = 90%>
	         </div>
	          
	     	<div class="content_section">
	     		<div class = "mypage_remodeling_history">
					<h4><b><span>${user.name}</span>님의</b><br>
						치과 인테리어 신청 내역입니다.</h4>
				</div>
	     	
	   <table class="table table-sm table-bordered" id = "mypage_table_remodeling_list">
         <tr>
            <th style="width:10%; padding-left:10px;">접수번호</th>
            <th style="width:70%; padding-left:10px;">스타일</th>
            <th style="width:20%; padding-left:10px;">상담일자</th>
         </tr>
         
         <c:forEach var="userRemodelingList" items="${userRemodelingList}">
            <tr>
               <td style="padding-left:10px;">${userRemodelingList.consultNo}</td>
               <td style="padding-left:10px;"><a href="javascript:void(0)" onClick="showRemodelingPopup(${userRemodelingList.consultNo})" style = "text-decoration : none; color : black;"><b>${userRemodelingList.consultInteriorStyle}</b></a></td>
               <td style="padding-left:10px;"><fmt:formatDate value="${userRemodelingList.consultDate}" pattern="yyyy-MM-dd"/> 
               <c:if test="${userRemodelingList.consultTime eq 'am1'}">
                <span> 09:10 </span>
               </c:if>
               <c:if test="${userRemodelingList.consultTime eq 'am2'}">
                <span> 10:10 </span>
               </c:if>
               <c:if test="${userRemodelingList.consultTime eq 'am3'}">
                <span> 11:10 </span>
               </c:if>
               <c:if test="${userRemodelingList.consultTime eq 'pm1'}">
                <span> 13:10 </span>
               </c:if>
               <c:if test="${userRemodelingList.consultTime eq 'pm2'}">
                <span> 14:10 </span>
               </c:if>
               <c:if test="${userRemodelingList.consultTime eq 'pm3'}">
                <span> 15:10 </span>
               </c:if>
               <c:if test="${userRemodelingList.consultTime eq 'pm4'}">
                <span> 16:10 </span>
               </c:if>
               <c:if test="${userRemodelingList.consultTime eq 'pm5'}">
                <span> 17:10 </span>
               </c:if>
               
               </td>
            </tr>
         </c:forEach>
         
         <tr>
            <td colspan="4" class="text-center">
               <div>
                  <a class="btn btn-outline-primary btn-sm" href="mypage_interior_list?pageNo=1">처음</a>
                  <c:if test="${pager.groupNo>1}">
                     <a class="btn btn-outline-info btn-sm" href="mypage_interior_list?pageNo=${pager.startPageNo-1}">이전</a>
                  </c:if>
                  
                  <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
                     <c:if test="${pager.pageNo != i}">
                        <a class="btn btn-outline-success btn-sm" href="mypage_interior_list?pageNo=${i}">${i}</a>
                     </c:if>
                     <c:if test="${pager.pageNo == i}">
                        <a class="btn btn-danger btn-sm" href="mypage_interior_list?pageNo=${i}">${i}</a>
                     </c:if>
                  </c:forEach>
                  
                  <c:if test="${pager.groupNo<pager.totalGroupNo}">
                     <a class="btn btn-outline-info btn-sm" href="mypage_interior_list?pageNo=${pager.endPageNo+1}">다음</a>
                  </c:if>
                  <a class="btn btn-outline-primary btn-sm" href="mypage_interior_list?pageNo=${pager.totalPageNo}">맨끝</a>
               </div>
            </td>
         </tr>
      </table>
      
	     	
			</div>
		</div>
			
			

</div>
<%@ include file="/WEB-INF/views/mypage/counseling/mypage_remodeling_popup_cover.jsp" %>
<style>


	 #mypage_remodeling_detailList_jsp {
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
       
	.mypage_remodeling_history{
		margin-top : 15px;
		padding-left : 5%;
		padding-top : 5%;
		border: 1px solid #ccc;
    	background-image : url("${pageContext.request.contextPath}/resources/images/mypage/mypage_counseling_remodeling.jpg");
    	background-size: cover;
		background-repeat: no-repeat;
		width : 96%;
		height : 95%;
    	color : #fff;
    	border-radius : 20px;
	}

     
    #mypage_table_remodeling_list{
     	width : 96%;
		margin-top : 30px;
    }  
</style>

<script>

function showRemodelingPopup(number) {
	 $(".mypage_remodeling_popup_wrap").css("display", "block");
	 $("#mypage_counseling_mask").css("display", "block"); 
	 
	 $('input[name=inputNm]').attr('value',number);
	 ajaxRemodeling();
}

$(document).ready(function(){
	
	 $("#mypage_remodeling_popup_close").click(function(){
	 $(".mypage_remodeling_popup_wrap").css("display", "none");
	 $("#mypage_counseling_mask").css("display", "none");
	});
});




</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>


