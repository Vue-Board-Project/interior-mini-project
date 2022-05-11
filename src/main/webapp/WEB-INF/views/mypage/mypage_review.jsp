<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class = "container-fluid p-0">
	<div style = "display:flex; width : 100%; height: 1300px;">
		<%-- <%@ include file="/WEB-INF/views/mypage/mypage_menu.jsp" %> --%>
		<div class= "counseling_menu"  style = "display : inline-block;  width : 15%; height : 1300px; background-color : #faf9f6; border-right : 1px solid #ccc;">
			<div style="display : inline-block; width : 100%; height : 300px;" >
				<div style = "width : 90%; height : 300px; float : right; border-bottom : 3px solid #ca5c0d;">
					<p style = "font-family: 'MinSans-Bold'; font-size : 1.2rem; margin-top : 140px; margin-left : 20px;">마이페이지</p>
				</div>
			</div>
			<div style = "display : inline-block; width : 100%; height : 1000px; ">
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
			<div style = "display :inline-block; width : 100%; height : 1000px;">
		     	
		     	<div class = "mypage_review_contents_wrap"  style = "display : inline-block; width : 90%; margin-left : 5%;">
			     	<div class = "mypage_review_tab_menu">
					    <div id = "mypage_review_button_before" class="btn col-md-6" onclick = "mypage_review_avaliable()">
					      <a id = "before_review" style = "color : #ca5c0d; font-family: 'MinSans-Medium'; font-size : 1.3rem;">작성 가능 후기</a>
					    </div>
					    <div id = "mypage_review_button_after" class="btn col-md-6" onclick = "mypage_review_finished()">
					      <a id = "after_review" style = "font-size : 1.3rem; font-family:'MinSans-Medium';">작성 완료 후기</a>
					    </div>
					 </div>
					  
					  <div class = "mypage_review_contents_menu">
						   <div id="mypage_review_tab_available" class="tabmenu_content ">
						      <!-- <div id = "mypage_review_tab_available_null">작성 가능한 후기가 없습니다.</div> -->
						     
				     <c:if test = "${empty orderReview}">
				     	<%@ include file="/WEB-INF/views/mypage/mypage_review_no_data.jsp" %>
				     </c:if>
				     
				     <c:if test = "${!empty orderReview}">
						      <c:forEach var="orderReview" items="${orderReview}"> 
						      <div class = "mypage_review_before_element" style = "position : relative; height : 250px; border : 1px solid #ccc;">
							      	<div class = "image_slot" style = "position : absolute; width : 200px; height : 200px; margin-left : 50px; margin-top : 25px; box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.2);">
							      		<img class = "mypage_review_product_img" src = "/springframework-mini-project/equipment/display?fileName=${orderReview.stringPatchoName}"></img>
							      	</div>
							      	<div style = "position : absolute; margin-left : 350px; ">
							      		<div style = "margin-top : 30px;  font-size : 1.7rem; font-family: 'MinSans-Bold';">구매번호 : ${orderReview.intPurchaseNumber}</div>
								      	<div class = "mypage_review_product_title" style = "margin-top : 20px; font-family: 'MinSans-Medium';">제품명 : ${orderReview.stringProductName}</div>
								      	<div class = "mypage_review_model_name" style = "margin-top : 10px; font-family: 'MinSans-Medium';">모델명 : ${orderReview.stringModelNumber}</div>
								      	<div class = "mypage_review_product_number" style = "margin-top : 10px; font-family: 'MinSans-Medium';">갯수 : ${orderReview.modelPurchaseQuantity} 개</div>
								      	<div class = "mypage_review_product_date" style = "margin-top : 10px; font-family: 'MinSans-Medium';"><fmt:formatDate value="${orderReview.datePurchaseDate}" pattern="yyyy-MM-dd"/></div>
								      	<div class = "mypage_review_product_button">
								      		<button type="button" class="btn btn-primary" name = "mypage_review_product_button" 
								      			style = "position : absolute; background-color : #ca5c0d; border : none;  box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.2);
								      			 width : 120px; height : 40px; top : 0; margin-left : 900px; margin-top : 190px;" 
									      		onclick = "reviewButton(${orderReview.intPurchaseNumber}, '${orderReview.stringModelNumber}', '${orderReview.stringProductName}', '${orderReview.stringPatchoName}')">
									      		후기 쓰기
								      		</button>
								      </div> 
							      </div>
							   </div>
						      </c:forEach>
  
			  			  </div>
			    
			    		<table id = "mp_review_pager">
							 <tr>
						           <td colspan="4" class="text-center">
						              <div style = "width : 400px; margin-left : 520px; margin-top : 30px;">
						                 <a class="btn btn-outline-secondary btn-sm" href="mypageReview?pageNo=1">처음</a>
						                 <c:if test="${pager.groupNo>1}">
						                    <a class="btn btn-outline-success btn-sm" href="mypageReview?pageNo=${pager.startPageNo-1}">이전</a>
						                 </c:if>
						                 
						                 <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
						                    <c:if test="${pager.pageNo != i}">
						                       <a class="btn btn-outline-secondary btn-sm" href="mypageReview?pageNo=${i}">${i}</a>
						                    </c:if>
						                    <c:if test="${pager.pageNo == i}">
						                       <a class="btn btn-secondary btn-sm" href="mypageReview?pageNo=${i}">${i}</a>
						                    </c:if>
						                 </c:forEach>
						                 
						                 <c:if test="${pager.groupNo<pager.totalGroupNo}">
						                    <a class="btn btn-outline-secondary btn-sm" href="mypageReview?pageNo=${pager.endPageNo+1}">다음</a>
						                 </c:if>
						                 <a class="btn btn-outline-secondary btn-sm" href="mypageReview?pageNo=${pager.totalPageNo}">맨끝</a>
						              </div>
						           </td>
						        </tr>
						     </table>
				</c:if>

			    	<div id="mypage_review_tab_finished" class="tabmenu_content">
			    	<!-- <div id = "mypage_review_tab_finished_null">작성 완료한 후기가 없습니다.</div> -->
			    	<div id = "mypage_review_list_finished"></div>
				    	<script>
						function selectReviewList(){
							console.log("finished review");
							$.ajax({
					                url : "mypageReviewAfter",
					                method: "get"
					            }).done((data) => {
									$('#mypage_review_list_finished').html(data);
					            });
					    }
					</script>
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

 /*탭 버튼 포함해서 내용 창 묶기 */
     .mypage_review_contents_wrap {
     	width : 1200px;
     	height : 800px;
     	background-color : #fff;
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
    
  
     .mypage_review_contents_menu #mypage_review_tab_finished{
      		display:none;
      
      }
      
      .mypage_user_review_element {
      	width : 1200px;
     	height : 250px;
      }

      .mypage_user_review_element .user_product_title {
      		height : 49px;;
      		font-family: 'MinSans-Bold';
      		padding : auto;
      		font-size : 1.5rem;

      }
      
      .mypage_user_review_element .user_product_title .user_product_modelName{
      		font-family: 'MinSans-Regular';
      		font-size : 1rem;
      		padding-left : 15px;
      }
      
      .mypage_user_review_element .user_review_contents {
    		display: flex;
     		flex-direction: row;
     		height : 200px;
      }
      
       .mypage_user_review_element .user_review_contents .user_review_title {
      		padding-top : 5px;
       		width : 950px;
       		height : 50px;
       		font-family: 'MinSans-Bold';
       		margin-top : 0px;
       		margin-left : 50px;
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
    	z-index: 3;
    }
    
    .mypage_popup_wrap{
    	z-index: 4;
    	
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



function mypage_review_avaliable() {
	$('#mypage_review_tab_available').show();
	$('#mypage_review_tab_finished').hide();
	$('#mp_review_pager').show();
	$('#before_review').css("color", "#ca5c0d");
	$('#after_review').css("color", "#272723");
	
}

function mypage_review_finished() {
	$('#mypage_review_tab_available').hide();
	$('#mypage_review_tab_finished').show();
	$('#mp_review_pager').hide();
	$('#before_review').css("color", "#272723");
	$('#after_review').css("color", "#ca5c0d");
	selectReviewList();
}


 $(document).ready(function(){
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

