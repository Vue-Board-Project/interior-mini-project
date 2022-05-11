<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class = "container-fluid p-0">
	<div style = "display:flex; width : 100%; height: 1000px;">
		<%-- <%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %> --%>
		<div class= "mypage_menu"  style = "display : inline-block;  width : 15%; height : 1000px; background-color : #faf9f6; border-right : 1px solid #ccc;">
			<div tyle="display : inline-block; width : 100%; height : 300px;" >
				<div style = "width : 90%; height : 300px; float : right; border-bottom : 3px solid #ca5c0d;">
					<p style = "font-family: 'MinSans-Bold'; font-size : 1.2rem; margin-top : 140px; margin-left : 20px;">마이페이지</p>
				</div>
			</div>
			<div style = "display : inline-block; width : 100%; height : 700px; ">
				<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
			</div>
		</div>
		<div class= "mypage_content" style = "display : inline-block; width : 85%; height : 1000px;  background-color : #faf9f6;">
			<div style = "display :inline-block; width : 100%; height : 300px;">
				<div style = "width : 90%; height : 160px; border-bottom : 1px solid #ccc; margin : auto;">
					<div style = "font-family: 'MinSans-Bold'; font-size : 3rem; margin-top : 140px; margin-left : 2%;">
						<span class ="pb-1" style ="border-bottom : 5px solid #ca5c0d;">인테리어 상담 내역</span>
					</div>
				</div>
			</div>
			<div style = "display :inline-block; width : 100%; height : 700px;">
		     	<div class = "mypage_counseling_history">
					<b><span>${user.name}</span>님의</b><br>
						치과 인테리어 신청 내역입니다.
				</div>
		     	
		 <table class="table table-sm table-bordered" id = "mypage_table_interior_list">
		         <tr>
		            <th style="width:10%; padding-left:10px;">접수번호</th>
		            <th style="width:65%; padding-left:10px;">스타일</th>
		            <th style="width:10%; padding-left:10px;">상담일자</th>
		         </tr>
         
         <c:forEach var="userInteriorList" items="${userInteriorList}">
            <tr>
               <td style="padding-left:10px;">${userInteriorList.consultNo}</td>
               <td style="padding-left:10px;"><a href="javascript:void(0)" onClick="showInteriorPopup(${userInteriorList.consultNo})" style = "text-decoration : none; color : black;">
               <b>${userInteriorList.consultInteriorStyle}</b></a></td>
               <td style="padding-left:10px;"><fmt:formatDate value="${userInteriorList.consultDate}" pattern="yyyy-MM-dd"/> 
	               <c:if test="${userRemodelingList.consultTime eq 'am1'}">
	                <span> 09:10 </span>
	               </c:if>
	               <c:if test="${userInteriorList.consultTime eq 'am2'}">
	                <span> 10:10 </span>
	               </c:if>
	               <c:if test="${userInteriorList.consultTime eq 'am3'}">
	                <span> 11:10 </span>
	               </c:if>
	               <c:if test="${userInteriorList.consultTime eq 'pm1'}">
	                <span> 13:10 </span>
	               </c:if>
	               <c:if test="${userInteriorList.consultTime eq 'pm2'}">
	                <span> 14:10 </span>
	               </c:if>
	               <c:if test="${userInteriorList.consultTime eq 'pm3'}">
	                <span> 15:10 </span>
	               </c:if>
	               <c:if test="${userInteriorList.consultTime eq 'pm4'}">
	                <span> 16:10 </span>
	               </c:if>
	               <c:if test="${userInteriorList.consultTime eq 'pm5'}">
	                <span> 17:10 </span>
	               </c:if>
             </td>
            </tr>
         </c:forEach>
         
        		<tr>
		           <td colspan="4" class="text-center">
		              <div>
		                 <a class="btn btn-outline-secondary btn-sm" href="mypage_interior_list?pageNo=1">처음</a>
		                 <c:if test="${pager.groupNo>1}">
		                    <a class="btn btn-outline-success btn-sm" href="mypage_interior_list?pageNo=${pager.startPageNo-1}">이전</a>
		                 </c:if>
		                 
		                 <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
		                    <c:if test="${pager.pageNo != i}">
		                       <a class="btn btn-outline-secondary btn-sm" href="mypage_interior_list?pageNo=${i}">${i}</a>
		                    </c:if>
		                    <c:if test="${pager.pageNo == i}">
		                       <a class="btn btn-secondary btn-sm" href="mypage_interior_list?pageNo=${i}">${i}</a>
		                    </c:if>
		                 </c:forEach>
		                 
		                 <c:if test="${pager.groupNo<pager.totalGroupNo}">
		                    <a class="btn btn-outline-secondary btn-sm" href="mypage_interior_list?pageNo=${pager.endPageNo+1}">다음</a>
		                 </c:if>
		                 <a class="btn btn-outline-secondary btn-sm" href="mypage_interior_list?pageNo=${pager.totalPageNo}">맨끝</a>
		              </div>
		           </td>
		        </tr>
      </table>
		     	
			</div>
		</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/mypage/counseling/myinfo_counsel_popup_cover.jsp" %>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
<style>
	.mypage_counseling_history{
		display : inline-block;
		border: 1px solid #ccc;
    	background-image : url("${pageContext.request.contextPath}/resources/images/mypage/mypage_osstem_interior_logo.png");
    	background-size: cover;
		background-repeat: no-repeat;
    	border-radius : 20px;
    	width : 85%;
    	height : 200px;
    	margin-top : 30px;
    	margin-left : 7%;
    	
    	/* 신청내역 내의 글자 스타일 */
    	padding-left : 100px;
    	padding-top : 50px;
    	color : #fff;
    	
    	font-family: 'MinSans-Regular';
    	font-size : 1.5rem;
    	font-weight : 400;
	}
	
	#mypage_table_interior_list {
		margin-left : 7%;
		width : 85%;
		margin-top : 30px;
	}
	

</style>



<%@ include file="/WEB-INF/views/common/footer.jsp" %>

<script src="${pageContext.request.contextPath}/resources/js/mypage/jsMypageInteriorList.js"></script>
