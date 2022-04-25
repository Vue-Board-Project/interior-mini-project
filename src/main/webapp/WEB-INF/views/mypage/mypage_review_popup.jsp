<%@ page contentType="text/html; charset=UTF-8"%>

<div class = "mypage_popup_wrap">

	<button id="mypage_review_popup_close" class="m-2">
	<img src="${pageContext.request.contextPath}/resources/images/mypage/popup_delete_icon.png"/>
	</button>
	 <!-- <div class = "personal_review">
	 	<div><h2>후기 작성</h2></div>
	 	<hr>
	   <div id = "mypage_review_popup_productInfo" style = "flex-direction: row;">
		   <img src = "${pageContext.request.contextPath}/resources/images/mypage/chair.jpg" class="col-md-3" style = "width = 50px; height : 50px" />
		   <div id = "mypage_review_popup_title" class="col-md-9">유니트 체어</div>
	   </div>
	   <form class = "mypage_review_popup_input_review">
	   <div class="row" style = "height : 30%">
		  <div class="col-md-3">제목</div>
		  <div class="col-md-9"><input type="text" id="reviewTitle" name="reviewTitle"/></div>
		</div>
	   </form> 
	   <div id = "mypage_review_popup_get_question"></div>
	   <button> 등록하기 </button>
	   
	 </div>-->
	 
	 
	 <div class = "mypage_review_popup">
	 	<div class = "mypage_review_popup_header">
	 		<div style = "font-family: 'MinSans-Medium'; font-size : 1.5rem; margin-top : 30px">리뷰 작성</div>
	 	</div>
	 	
	 	<div class = "mypage_review_popup_content">
	 		<div class = "mypage_review_popup_product_info">
	 			<img class = "mypage_review_popup_product_info_image" src = "${pageContext.request.contextPath}/resources/images/mypage/chair.jpg" style = "width : 60px; height : 80px; margin-top : 11px; margin-left : 10px;" />
	 			<div class = "mypage_review_popup_product_info_name">유니트 체어</div>
	 		</div>
	 		
	 		<!-- <div class = "mypage_review_popup_user_input">
	 			<div class = "mypage_review_popup_user_title">
	 				<div class = "user_title">제목</div>
	 				<div class = "user_title_content"><input type = "title" /></div>
	 			</div>
	 			<div class = "mypage_review_popup_user_content">
	 				<div class = "user_content">내용</div>
	 				<div class = "user_content_content"><input type = "content" /></div>
	 			</div>
	 			<div class = "mypage_review_popup_image_input">
	 				<div class = "user_image">사진</div>
	 				<div class = "user_image_input"></div>
	 			</div>
	 		</div> -->
	 		
	 	<form id="review_write_form" method="post" action="" enctype="multipart/form-data">
			<div class = "mypage_review_popup_user_title">
				<div class="input-group">
					<div class="input-group-prepend"><span class="input-group-text">제목</span></div>
					<input id="review_title" type="text" name="review_title" class="form-control">
				</div>
			</div>
			<div class = "mypage_review_popup_user_content">
				<div class="input-group">
					<div class="input-group-prepend"><span class="input-group-text">내용</span></div>
					<textarea id="review_content" name="review_content" class="form-control"></textarea>
				</div>
			</div>
			<div class = "mypage_review_popup_image_input">
				<div class="input-group">
					<div class="input-group-prepend"><span class="input-group-text">사진 첨부</span></div>
					<div id = "review_img_slot">
						<label for = "review_img_attach" >
							<img src = "${pageContext.request.contextPath}/resources/images/mypage/mypage_plus.png" style = "width : 30px; height : 30px; margin-top : 25px; margin-left : 25px;"/>
						</label>
						<!-- multiple(다중 이미지 받아들이기) 삭제함 -->
						<input id="review_img_attach" type="file" name="review_img_attach" class="form-control" onchange= "setReviewPhoto(event)" >
						<div class = "review_image_container"></div>
					</div>
				</div>
			</div>
		</form>
	 		</div>
	 			<button id = "mypage_review_popup_button" class="btn btn-primary btn-lg">작성하기</button>
	 </div>
	 
</div>
<div id="mypage_review_mask"></div>

<style>

	.mypage_popup_wrap{
		position:fixed;
		display : none;
		background-color :  #fff;
 		top: 100px; 
 		left: 400px;
 		width : 500px;
		height : 800px;
		
	}

	#mypage_review_mask{
	
		width:100%; 
		height:100%; 
		position:fixed; 
		background:rgba(0,0,0,0.7) repeat; 
		top:0; 
		left:0;
		display:none;
	}
	
	#mypage_review_popup_close {
	 	border: none;
	 	outline: none; 
	 	background-color: #faf9f6; 
	 	position:absolute; 
	 	top:0; 
	 	right:0;
 	}
 	
 	.mypage_review_popup{
 		width : 500px;
 		height : 800px;
 		
 	}
 	
 	
 	/*x버튼을 위함 */
 	.mypage_review_popup .mypage_review_popup_header{
 		width : 500px;
 		height : 40px;
 		border-bottom : 1px solid #ccc;
 		
 	}
 	/*제품 사진 + 이름*/
 	.mypage_review_popup .mypage_review_popup_content .mypage_review_popup_product_info{
 		width : 500px;
 		height : 102px;
 		display: flex;
 		flex-direction: row;
 	}
 	
 	.mypage_review_popup .mypage_review_popup_content .mypage_review_popup_product_info .mypage_review_popup_product_info_image{
 		width : 80px;
 		height : 102px;
 		
 	}
 	
 	.mypage_review_popup .mypage_review_popup_content .mypage_review_popup_product_info .mypage_review_popup_product_info_name{
 		font-family: 'MinSans-Medium';
 		width : 420px;
 		height : 102px;
 		padding-top : 20px;
 		padding-left : 30px;
 	}
 	
 	
 	.mypage_review_popup #review_write_form{
 		width : 500px;
 		height : 496px;
 		
 	}
 	
 	
 	
 	.mypage_review_popup #review_write_form .mypage_review_popup_user_content{ 
 		height : 372px;
 	
 	}
 	
 	.mypage_review_popup #review_write_form #review_content{ 
 		height : 372px;
 	
 	}
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_image_input{
 		width : 500px;
 		height : 124px;
 	}
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_image_input #review_img_slot{
 		height : 124px;
 		
 	}
 	
 	
 /* 	
 	.mypage_review_popup #review_write_form #review_img_attach{ 
 		height : 124px; 
 		background-color : #fff;
  
 			
 	} */
 	
 	/*파일 선택하기 버튼 대신 + 버튼으로 바꾸기 */
 	
 	.mypage_review_popup_image_input input[type="file"] {
		overflow: hidden;
		display : none;
	}
 	
 	
 	.mypage_review_popup_image_input label {
	 display: inline-block;
	 width : 80px;
	 height : 80px;

}
 	/* 
 	
 	
 	.mypage_review_popup .mypage_review_popup_user_input{
 		width : 500px;
 		height : 558px;
 		
 	}
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_user_title{
 		width : 500px;
 		height : 62px;
 		display: flex;
 		flex-direction: row;
 		
 	}
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_user_title .user_title{
 		width : 80px;
 		height : 62px;
 		
 		margin : auto;
  	}
  	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_user_title .user_title_content{
 		width : 420px;
 		height : 62px;
 		
 	}
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_user_title .user_title_content input{
 		width : 420px;
 		height : 62px;
 	}
 	
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_user_content{
 		width : 500px;
 		height : 372px;
 		display: flex;
 		flex-direction: row;
 		
 	}
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_user_content .user_content{
 		width : 80px;
 		height : 372px;
 		
 		margin : auto;
 	}
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_user_content .user_content_content{
 		width : 420px;
 		height : 372px;
 		
 	}
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_user_content input{
 		width : 420px;
 		height : 372px;
 	}
 	
 	
	
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_image_input .user_image{
 		width : 80px;
 		height : 124px;
 		
 	}
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_image_input .user_image_input{
 		width : 420px;
 		height : 124px;

 	} 
 	
 	.mypage_review_popup #mypage_review_popup_button {
 		border : none;
 		background-color : #ca5c0d;
 		margin-top : 50px;
 	
 	}

</style>



	


