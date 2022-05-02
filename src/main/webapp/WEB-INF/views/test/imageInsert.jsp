<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
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
	    	dataType : 'json'
		});
		
		/* url : 서버로 요청을 보낼 url
		processData : 서버로 전송할 데이터를 queryStirng 형태로 변환할지 여부
		contentType : 서버로 전송되는 데이터의 content-type
		data : 서버로 전송할 데이터
		type : 서보 요청 타입(GET, POST)
		dataType : 서버로부터 반환받을 데이터 타입 */
		 
		
		
	});
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
