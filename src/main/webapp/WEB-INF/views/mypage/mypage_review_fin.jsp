<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class = "container-fluid p-0">
	<div style = "display:flex; width : 100%; height: 1600px;">
		<%-- <%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %> --%>
		<div class= "counseling_menu"  style = "display : inline-block;  width : 15%; height : 1600px; background-color : #faf9f6; border-right : 1px solid #ccc;">
			<div style="display : inline-block; width : 100%; height : 300px;" >
				<div style = "width : 90%; height : 300px; float : right; border-bottom : 3px solid #ca5c0d;">
					<p style = "font-family: 'MinSans-Bold'; font-size : 1.2rem; margin-top : 140px; margin-left : 20px;">마이페이지</p>
				</div>
			</div>
			<div style = "display : inline-block; width : 100%; height : 1300px; ">
				<%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %>
			</div>
		</div>
		<div class= "counseilng_content" style = "display : inline-block; width : 85%; height : 1300px;  background-color : #faf9f6;">
			<div style = "display :inline-block; width : 100%; height : 300px;">
				<div style = "width : 90%; height : 160px; margin : auto;">
					<div style = "font-family: 'MinSans-Bold'; font-size : 3rem; margin-top : 140px; margin-left : 2%;">
						<span class ="pb-1" style ="border-bottom : 5px solid #ca5c0d;">리뷰 관리</span>
					</div>
				</div>
			</div>
			<div style = "display :inline-block; width : 100%; height : 1300px;">
		     	
		     	<div class = "mypage_review_contents_wrap"  style = "display : inline-block; width : 90%; margin-left : 5%;">
			     	<div class = "mypage_review_tab_menu">
					    <div id = "mypage_review_button_before" class="btn col-md-6" onclick="location.href='/springframework-mini-project/mypage/mypageReview'">
					      <a id = "before_review" style = "color : #272723; font-family: 'MinSans-Medium'; font-size : 1.3rem;">작성 가능 후기</a>
					    </div>
					    <div id = "mypage_review_button_after" class="btn col-md-6">
					      <a id = "after_review" style = "font-size : 1.3rem; font-family:'MinSans-Medium'; color : #ca5c0d;">작성 완료 후기</a>
					    </div>
					 </div>
					 
					  <div class = "mypage_review_contents_menu">
						   <div id="mypage_review_tab_available" class="tabmenu_content ">
			    	<div id="mypage_review_tab_finished" class="tabmenu_content">
			    	<div id = "mypage_review_list_finished"></div>
			    	
			    	<c:if test = "${empty reviewFin}">
			    		<div class = "mypage_no_review_info" 
							style = "display : inline-block; width : 100%; height : 400px; padding-top : 50px;">
							<div style = "display : inline-block; width : 85%; margin-left : 7%; margin-top : 30px;">
								<div class = "mp_noinfo_title" 
								style = "font-size : 1.5rem; font-family: 'MinSans-Regular'; text-align : center; margin-top : 60px;">
									작성한 리뷰가 없습니다.
								</div>
							</div>
						</div>
					</c:if>
					
					<c:forEach var="reviewFin" items="${reviewFin}">
					   	<div class = "mypage_user_review_element" style = "display : inline-block; width : 100%; border-bottom :1px solid #ccc;">
					  			<div class = "user_product_title" style = "display : inline-block; width : 100%; border-bottom :1px solid #ccc;">
					  				<span style = "float : left; margin-left : 20px; margin-top : 6px;">제목  :  ${reviewFin.reviewTitle}</span>
					  				<span class = "user_product_modelName" style = "float : right; margin-right : 30px; margin-top : 12px;">모델명 : ${reviewFin.stringModelNumber}</span>
					  				<span style = "float : right; margin-right : 50px;">${reviewFin.stringProductName}</span>
					  			
					  			</div>
					   		<div class = "user_review_contents">
					   			<div class = "user_product_bought_date" style = "margin-top : 50px;"></div>
					   			<div class = "user_review_image">
					   			<!-- 리뷰 이미지 업로드를 위한 코드. 이후 접속을 위해 따로 처리함 -->
					   			<%-- <c:if test = "${reviewFin.fileName ne null}">
					   				<img src="/springframework-mini-project/mypage/showImage?fileName=${reviewFin.fileName}"></img>
					   			</c:if> --%>
					   			<c:if test = "${reviewFin.fileName eq null}">
					   				<img src="${pageContext.request.contextPath}/resources/pngs/header_logo_icon.png"></img>
					   			</c:if>
					   			<c:if test = "${reviewFin.fileName ne null}">
					   				<img src="${pageContext.request.contextPath}/resources/images/mypage/chair.jpg"></img>
					   			</c:if>
					   			</div>
					   			<div class = "user_review_text" style = "font-family: 'MinSans-Regular';">${reviewFin.reviewContent}</div>
					   			<div style = "margin-left : 1200px; margin-top : 160px;">작성일자 : <fmt:formatDate value="${reviewFin.reviewWriteDate}" pattern="yyyy-MM-dd"/></div>
					   		</div>
					   	</div>
					  </c:forEach>
					  
				    <c:if test = "${!empty reviewFin}">
			    		<table id = "mp_review_pager">
							 <tr>
					           <td colspan="4" class="text-center">
					              <div style = "width : 400px; margin-left : 520px; margin-top : 30px;">
					                 <a class="btn btn-outline-secondary btn-sm" href="mypageReviewFin?pageNo=1">처음</a>
					                 <c:if test="${pager1.groupNo>1}">
					                    <a class="btn btn-outline-success btn-sm" href="mypageReviewFin?pageNo=${pager1.startPageNo-1}">이전</a>
					                 </c:if>
					                 
					                 <c:forEach var="i" begin="${pager1.startPageNo}" end="${pager1.endPageNo}">
					                    <c:if test="${pager1.pageNo != i}">
					                       <a class="btn btn-outline-secondary btn-sm" href="mypageReviewFin?pageNo=${i}">${i}</a>
					                    </c:if>
					                    <c:if test="${pager1.pageNo == i}">
					                       <a class="btn btn-secondary btn-sm" href="mypageReviewFin?pageNo=${i}">${i}</a>
					                    </c:if>
					                 </c:forEach>
					                 
					                 <c:if test="${pager1.groupNo<pager1.totalGroupNo}">
					                    <a class="btn btn-outline-secondary btn-sm" href="mypageReviewFin?pageNo=${pager1.endPageNo+1}">다음</a>
					                 </c:if>
					                 <a class="btn btn-outline-secondary btn-sm" href="mypageReviewFin?pageNo=${pager1.totalPageNo}">맨끝</a>
					              </div>
					           </td>
					        </tr>
					     </table>
				     </c:if>				    	
				    	
				    	
						
					
			    	</div>
			    </div>
		    </div>   
		     	
		     	
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/mypage/mypage_review_popup.jsp" %>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>


<style>

	#sidebar_mypage .mypage_list #mypage_review{
       	form :active;
       	color : #ca5c0d;
       	font-weight: 800;
    }

     
     /*리뷰 작성 두 탭을 담은 container(ul 의 클래스명) */
     .mypage_review_tab_menu{
     	/*position : relative;*/
     	display: flex;
     	flex-direction: row;  
     	height : 50px;
     	margin-top : 0px;
     	/*justify-content: space-around;*/
     }
     
     /*각 탭 버튼 활성화하기*/
     #mypage_review_button_before{
     	padding-top : 10px; 
     	border : 1px solid #e8e8db;
     	background-color : #fff;
     }
     
     #mypage_review_button_after{
     	padding-top : 10px;
     	border : 1px solid #e8e8db;
     	background-color : #fff;
     }
     
     .mypage_review_contents_menu .tabmenu_content{
    	/* border : 1px solid #e8e8db; */
    	background-color : #fff;
     	color:#272723;
     	/* height : 100%; */
     	overflow:hidden;
		height:auto;
     }
     
   
     
    
    
    .mypage_review_before_element img {
    	width : 200px;
    	height : 200px;
    
    }
    
      
      .mypage_user_review_element {
     	height : 250px;
      }

      .mypage_user_review_element .user_product_title {
      		height : 49px;;
      		font-family: 'MinSans-Bold';
      		font-size : 1.5rem;

      }
      
      .mypage_user_review_element .user_product_title .user_product_modelName{
      		font-family: 'MinSans-Regular';
      		font-size : 1rem;;
      }
      
      .mypage_user_review_element .user_review_contents {
    		display: flex;
     		flex-direction: row;
     		height : 200px;
      }
      
       
       .mypage_user_review_element .user_review_contents .user_product_bought_date {
       		padding-top : 5px;
       		position : absolute;
       		font-family: 'MinSans-Light';
       		width : 250px;
       		height : 50px;
       		margin-left : 950px;
       		font-size : 0.8rem;
       }
       
       .mypage_user_review_element .user_review_contents .user_review_image {
       		position : absolute;
       		width : 120px;
       		height : 120px;
       		margin-top : 50px;
       		margin-left : 50px;
       		
       }
     
       
      .mypage_user_review_element .user_review_contents .user_review_image img{
     		
       		width : 120px;
       		height : 120px;
       		
       		
       }
       
        
      .mypage_user_review_element .user_review_text {
      		position : absolute;
      		font-family: 'MinSans-Regular';
      		margin-left : 285px;
      		width : 1000px;
      		height : 120px;
      		margin-top : 60px;
 
      } 
     
      
      
      
      #mypage_review_date_selection{
     	left : 5%;
     }
     
     #mypage_review_tab_available_null{
     	text-align: left;
     	padding-left : 10%;
     }

    
    #mypage_review_mask{
    	z-index: 999;
    }
    
    .mypage_popup_wrap{
    	z-index: 1000;
    	
    }

</style>


<script>

function reviewButton(purchaseNumber, modelNumber, name, imgName) {
	console.log("chk Working....");
	
	 $("#mypage_review_mask").css("display", "block");
  	 $(".mypage_popup_wrap").css("display", "block");
  	 
  	$('input[name=purchaseNumber]').attr('value', purchaseNumber);
	$('input[name=modelNumber]').attr('value', modelNumber);
	$("#mypage_review_popup_product_info_name").text(name); 
	$("#mypage_review_popup_product_info_image").attr("src", "/springframework-mini-project/equipment/display?fileName=" + imgName);
	
}


 $(document).ready(function(){
	$('#after_review').css("color", "#ca5c0d");
		
	 
	 $("#mypage_review_popup_close").click(function(){
	 $("#mypage_review_mask").css("display", "none");
	 $(".mypage_popup_wrap").css("display", "none");
	});
});
	 

function setReviewPhoto(event) { 
	for (var image of event.target.files) { 
		var reader = new FileReader(); 
		
		reader.onload = function(event) { 
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result); 
			document.querySelector("div.review_image_container").appendChild(img); 
		}; 
			console.log(image); 
			reader.readAsDataURL(image); 
} 
}


</script>

