<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<style type="text/css">
	#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;	
	}
	
</style>

<div class="card m-2">
	<div class="card-header">
		새 장비 추가
	</div>
	<div class="card-body">
       <form action="saveProductImage" enctype="multipart/form-data" method="post">
       <div class="form_section">
   			<div class="form_section_title">
   				<label>상품 이미지</label>
   			</div>
   			<div class="form_section_content">
				<input type="file"  id ="fileItem" name='uploadFile' style="height: 30px;" />
   			</div>
   			<div id="uploadResult">
   				<%-- <div id="result_card">
					<div class="imgDeleteBtn">x</div>
					<img src="${pageContext.request.contextPath}/test/display?fileName=k2chair.png">
				</div> --%>
				
				
			</div>
   		</div>
		    
		    <input type="submit" value="이미지저장"/>
		</form>

    </div>
</div>
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
			url: '/springframework-mini-project/test/uploadAjaxAction',
			//processData, 와 contenttype 속성의 값을 'false'로 해주어야만 첨부파일이 서버로 전송
	    	processData : false,
	    	contentType : false,
	    	data : formData,
	    	type : 'POST',
	    	dataType : 'json',
	    	success : function(result){ //이미지 파일 저장 성공시 값 리턴해오기
	    		console.log(result);
	    		showUploadImage(result);
	    	},
	    	error : function(result){
	    		alert("이미지 파일이 아닙니다.");
	    	}
		});
		
		/* url : 서버로 요청을 보낼 url
		processData : 서버로 전송할 데이터를 queryStirng 형태로 변환할지 여부
		contentType : 서버로 전송되는 데이터의 content-type
		data : 서버로 전송할 데이터
		type : 서보 요청 타입(GET, POST)
		dataType : 서버로부터 반환받을 데이터 타입 */
		
		/* 이미지 출력 */
		function showUploadImage(uploadResultArr){
			/* 전달받은 데이터 검증 */
			if(!uploadResultArr || uploadResultArr.length == 0){return}
			
			
			let uploadResult = $("#uploadResult");//삽입 위치
			//한개 이미지 일때 : 이미지의 데이터(filename, path, uuid)에 쉽게 접근할 수 있도록 변수 obj를 선언하여 서버로부터 전달받은 배열 데이터의 첫 번째 요소로 초기화
			let obj = uploadResultArr[0];
			let str = "";
			let fileCallPath = obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.fileName;
			str += "<div id='result_card'>";
			str += "<img src='/springframework-mini-project/test/display?fileName=" + fileCallPath +"'>";
			str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
			str += "</div>";
			uploadResult.append(str);
		}
		
		/* 파일 삭제 메서드 */
		/*
		 1. 미리 보기 이미지의 'x'를 클릭하였을 때 삭제가 수행
		 2. 파일 <input> 태그를 클릭하여 업로드할 파일을 선택
		*/
		/* 파일 삭제 메서드 */
		/* 이미지 삭제 버튼 동작 */
		$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
			deleteFile();
		});
		function deleteFile(){
			
			let targetFile = $(".imgDeleteBtn").data("file");
			
			let targetDiv = $("#result_card");
			
			$.ajax({
				url: '/springframework-mini-project/test/deleteFile',
				data : {fileName : targetFile},
				dataType : 'text',
				type : 'POST',
				success : function(result){
					console.log(result);
					//삭제하면 input 태그 초기화
					targetDiv.remove();
					$("input[type='file']").val("");
				},
				error : function(result){
					console.log(result);
					alert("파일을 삭제하지 못하였습니다.")
				}
	       });
			
		}
	 
		 
		
		
	});
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
