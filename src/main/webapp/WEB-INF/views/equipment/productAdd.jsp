<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!--db에 장비 추가하기 위해서 작성 (주석 처리 예쩡)-->
<div class="card m-2">
	<div class="card-header">
		새 장비 추가
	</div>
	<div class="card-body">
		<form id="productAddForm" method="post" action="productAdd" enctype="multipart/form-data">
			<div class="input-group">
				<div class="input-group-prepend"><span class="input-group-text">modelNumber</span></div>
				<input id="modelNumber" type="text" name="modelNumber" class="form-control">
			</div>
			
			<div class="input-group">
				<div class="input-group-prepend"><span class="input-group-text">productName</span></div>
				<textarea id="productName" name="productName" class="form-control"></textarea>
			</div>
			<div class="input-group">
				<div class="input-group-prepend"><span class="input-group-text">productQuantity</span></div>
				<textarea id="productQuantity" name="productQuantity" class="form-control"></textarea>
			</div>
			<div class="input-group">
				<div class="input-group-prepend"><span class="input-group-text">category</span></div>
				<textarea id="category" name="category" class="form-control"></textarea>
			</div>

			<div class="input-group">
				<div class="input-group-prepend"><span class="input-group-text">mainImage</span></div>
				<input id="mainImage" type="file" name="mainImage" class="form-control">
			</div>
				
			<div class="mt-3">
				<button type="submit" class="btn btn-info btn-sm mr-2">추가</button>
			</div>
		</form>
	</div>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>