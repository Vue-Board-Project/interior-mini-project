<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div id = "mypage_counsel_detailList_jsp">
	<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
	
	<div class="counseling_section">
			<div class = "header_section">
	          <div class="text">인테리어 상담 내역</div>
	          <span class="sub_text">이전 인테리어 상담 신청 내역을 보여드립니다.</span>
	          <hr width = 90%>
	         </div>
	          
	     	<div class="content_section">
	     		<div class = "mypage_counseling_history">
					<h4><b><span>${user.name}</span>님의</b><br>
						치과 인테리어 신청 내역입니다.</h4>
				</div>
	     	
	   <table class="table table-sm table-bordered" id = "mypage_table_interior_list">
         <tr>
            <th style="width:30px">접수번호</th>
            <th style="width:270px">스타일</th>
            <th style="width:70px">상담일자</th>
         </tr>
         
         <c:forEach var="userInteriorList" items="${userInteriorList}">
            <tr>
               <td>${userInteriorList.consultNo}</td>
               <td><a href="mypage_interior_list?consultNo=${userInteriorList.consultNo}" style = "text-decoration : none; color : black;"><b>${userInteriorList.consultInteriorStyle}</b></a></td>
               <td><fmt:formatDate value="${userInteriorList.consultDate}" pattern="yyyy-MM-dd"/> ${userInteriorList.consultTime}</td>
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

<style>


	 #mypage_counsel_detailList_jsp {
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
		border: 1px solid #ccc;
    	background-image : url("${pageContext.request.contextPath}/resources/images/mypage/mypage_osstem_interior_logo.png");
    	background-size: cover;
		background-repeat: no-repeat;
		width : 95%;
		height : 95%;
    	color : #fff;
    	border-radius : 20px;
	}


    
        
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>


