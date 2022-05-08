<%@ page contentType="text/html; charset=UTF-8"%>

<div class = "mypage_popup_wrap">

	<button id="mypage_review_popup_close" class="m-2">
	<img src="${pageContext.request.contextPath}/resources/images/mypage/popup_delete_icon.png"/>
	</button>
	 
	 
	 <div class = "mypage_review_popup">
	 	<div class = "mypage_review_popup_header">
	 		<div style = "font-family: 'MinSans-Medium'; font-size : 1.5rem; margin-top : 30px">리뷰 작성</div>
	 	</div>
	 	
	 	<div class = "mypage_review_popup_content">
	 		<div class = "mypage_review_popup_product_info">
	 			<img class = "mypage_review_popup_product_info_image" src = "${pageContext.request.contextPath}/resources/images/mypage/chair.jpg" style = "width : 60px; height : 80px; margin-top : 11px; margin-left : 10px;" />
	 			<div class = "mypage_review_popup_product_info_name">유니트 체어</div>
	 		</div>
	 		
	 		
	 	<form id="mypageReviewForm" method="post" action="insertReview" enctype="multipart/form-data">
			<div class = "mypage_review_popup_user_title">
				<div class="input-group">
					<div class="input-group-prepend"><span class="input-group-text">제목</span></div>
					<textarea id="review_title" type="text" name="reviewTitle" class="form-control"></textarea>
				</div>
			</div>
			<div class = "mypage_review_popup_user_content">
				<div class="input-group">
					<div class="input-group-prepend"><span class="input-group-text">내용</span></div>
					<textarea id="review_content" type="text" name="reviewContent" class="form-control"></textarea>
				</div>
			</div>
			<div class = "mypage_review_popup_image_input">
				<div class="input-group">
						<div class="input-group-prepend"><span class="input-group-text">사진 첨부</span></div>
					 	<input type="file" class="form-control" id="attach_img" name="uploadFile"> <!-- DB연결될 때 name적기 -->
				</div>
			</div>
				<div class="input-group">
					<input type="number" id = "input_purchaseNumber" name = "purchaseNumber"  class="form-control" value = ""></input>
				</div>
				<div class="input-group">
					<input type="text" id = "input_modelNumber" name = "modelNumber"  class="form-control" value = ""></input>
				</div>
			<button id = "mypage_review_popup_button" type="submit" class="btn btn-primary btn-lg" style = "margin-top : 40px; margin-left :200px;">작성하기</button>
		</form>
	 		</div>
	 			
	 </div>
	 
</div>
<div id="mypage_review_mask"></div>
<script>
/* 이미지 업로드 */
	$("input[type='file']").on("change", function(e){
		
		
		
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;//FileList 객체에 접근
		let fileObj = fileList[0];//FileList의 요소로 있는 File 객체에 접근
		
		
		console.log("fileList : " + fileList);
		console.log("fileObj : " + fileObj);
		//File 객체에 담긴 데이터가 정말 <input> 태그를 통해 선택한 파일의 데이터가 맞는지를 확인
		console.log("fileName : " + fileObj.name);
		console.log("fileSize : " + fileObj.size);
		console.log("fileType(MimeType) : " + fileObj.type);
		
		//<form> 태그와 같은 역할인 FormData객체 생성하여 첨부파일을 FormData에 저장을 하고 FormData 자체를 서버로 전송
		// key와 추후 추가할 url 매핑 메서드의 매개변수명이 동일
		formData.append("uploadFile", fileObj);
		
		/* //여러게 파일 저장
		for(let i = 0; i < fileList.length; i++){
			formData.append("uploadFile", fileList[i]);
		} */
		
		//서버로 파일 전송
		$.ajax({
			url: '/springframework-mini-project/mypage/insertImage',
			//processData, 와 contenttype 속성의 값을 'false'로 해주어야만 첨부파일이 서버로 전송
	    	processData : false,
	    	contentType : false,
	    	data : formData,
	    	type : 'POST',
	    	dataType : 'json',
	    	success : function(result){ //이미지 파일 저장 성공시 값 리턴해오기
	    		console.log(result);
	    	},
	    	error : function(result){
	    		alert("이미지 파일이 아닙니다.");
	    	}
		});
</script>
<style>

	.mypage_popup_wrap{
		position:fixed;
		display : none;
		background-color :  #fff;
 		top: 100px; 
 		left: 400px;
 		width : 530px;
		height : 830px;
		
	}
	
	/*content를 묶은 div*/
	.mypage_review_popup{
 		width : 500px;
 		height : 800px;
 		margin : 15px;
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
 	
 	
 	.mypage_review_popup #mypageReviewForm{
 		width : 500px;
 		height : 496px;
 		
 	}
 	
 	
 	
 	.mypage_review_popup #mypageReviewForm .mypage_review_popup_user_content{ 
 		height : 372px;
 	
 	}
 	
 	.mypage_review_popup #mypageReviewForm #review_content{ 
 		height : 372px;
 	
 	}
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_image_input{
 		width : 500px;
 		height : 124px;
 		display: flex;
 		flex-direction: row;
 	}
 	

 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_user_content .user_content_content{
 		height : 372px;
 		
 	}
 	
 	.mypage_review_popup .mypage_review_popup_user_input .mypage_review_popup_user_content input{
 		height : 372px;
 	}
 	
 	
	
 	
 	.mypage_review_popup #mypage_review_popup_button {
 		padding : auto;
 		border : none;
 		background-color : #ca5c0d;
 		margin-top : 50px;
 	
 	}

</style>



	


