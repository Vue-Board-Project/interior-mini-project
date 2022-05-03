<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="card m-2">
	<div class="card-header">
		interiorD data upload
	</div>
	<div class="card-body">	
		<form:form method="post" action="interiorDDataUpload" enctype="multipart/form-data" modelAttribute="interiorDetailDto">
		  <div class="input-group">
		      <label for="iImg">iImg</label>
              <form:input type="file" path="iImg" class="form-control"/>
          </div>
		 <div class="input-group">
		      <label for="ino">ino</label>
		      <form:input class="form-control" path="ino"/>
		  </div>
		  <div class="input-group">
		      <label for="cname">cname</label>
		      <form:input class="form-control" path="cname"/>
		  </div>
		  <div class="input-group">
		      <label for="dcontent">dcontent</label>
		      <form:input class="form-control" path="dcontent"/>
		  </div>
		  <button type="submit" class="btn btn-primary btn-sm">제출</button>
		</form:form>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>