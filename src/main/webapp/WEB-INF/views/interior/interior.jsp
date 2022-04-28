<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="card m-2">
	<div class="card-header">
		interior data upload
	</div>
	<div class="card-body">	
		<form:form method="post" action="interiorDataUpload" modelAttribute="interiorDto">
		  <div class="form-group">
		    <label for="itype">Type</label>
		    <form:select path="itype" items="${typeList}" class="form-control"/>
		  </div>
	
		  <div class="form-group">
		      <label for="istyle">Style</label>
		      <form:select path="istyle" items="${StyleList}" class="form-control"/>
		  </div>
		  
		  <div class="form-group">
		      <label for="allColor">All Color</label>
		      <form:select path="allColor" items="${AllColorList}" class="form-control"/>
		  </div>
		  <div class="form-group">
		      <label for="wcolor">Wall Color</label>
		      <form:select path="wcolor" items="${WallColorList}" class="form-control"/>
		  </div>
		  <div class="form-group">
		      <label for="fcolor">Floor Color</label>
		      <form:select path="fcolor" items="${FloorColorList}" class="form-control"/>
		  </div>
		  <div class="form-group">
		      <label for="dtype">Dental Type</label>
		      <form:select path="dtype" items="${DentalType}" class="form-control"/>
		  </div>
		  <div class="form-group">
		      <label for="darea">Area</label>
		      <form:input class="form-control" path="darea"/>
		  </div>
		  <div class="form-group">
		      <label for="isummary">Summary</label>
		      <form:input class="form-control" path="isummary"/>
		  </div>
		  <button type="submit" class="btn btn-primary btn-sm">제출</button>
		</form:form>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>