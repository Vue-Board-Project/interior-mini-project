<%@ page contentType="text/html; charset=UTF-8"%>

<section style="width: 100%;" class="mb-4">
<table class="table table-bordered mx-auto" style="width: 90%;">
	<tr>
		<td style="background-color: #f1f1f1;">
			접수번호
		</td>
		<td>
			${progress.intConsultNo}
		</td>
		<td style="background-color: #f1f1f1;">
			이메일
		</td>
		<td>
			${progress.stringEmail}
		</td>
	</tr>
	<tr>
		<td  style="background-color: #f1f1f1;">
			평수
		</td>
		<td>
			${progress.acreage}
		</td>
		<td  style="background-color: #f1f1f1;">
			스타일
		</td>
		<td>
			${progress.style}
			</td>
		</tr>
	</table>
</section>