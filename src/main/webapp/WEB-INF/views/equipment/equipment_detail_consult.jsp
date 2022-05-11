<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<link
	href="${pageContext.request.contextPath}/resources/css/equipment/equipment_detail_consult.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/equipment/productConsultPopUp.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/menuheader.css" rel="stylesheet" type="text/css"/>
<div class="container-fluid p-0">
	<section class=" p-0">
		<div style="display: flex; justify-content: space-between;position: relative;">
			<div style="display: inline-block; width: 10%; height: 100px;" class="bg-dark menuheaderleft" ></div>
			<div style="display: inline-block; width: 89%; height: 100px;" class=" menuheaderright">
				<img src="${pageContext.request.contextPath}/resources/images/productmeunheader.png" width="100%" height="100%" >
			</div>
		</div>
		<div style="width: 65%;position: relative; left:10px; top: -33px;" class="mx-auto menuheadertitle">
			<span style="font-size: 50px; font-family: 'MinSans-Bold'; border-bottom: 5px solid coral; letter-spacing: 1.4px;">${detailProduct.category}</span>
		</div>
	</section>
	<div class="proCon_add_result_dim-layer">
		<div class="dimBg"></div>
		<div id="proCon_add_result_btn" class="proCon_add_result_pop-layer">
			<div class="proCon_add_result_pop-container">
				<div class="text-center proCon_add_result_title">
					<div class="mb-3">
						<i class="fas fa-tooth fa-4x"></i>
					</div>
					<div>
						<h5
							style="color: black; font-size: 23px; font-family: 'MinSans-Bold';"
							id="proCon_add_result_title"></h5>
					</div>
				</div>
				<div class="btn-r">
					<a
						href="${pageContext.request.contextPath}/equipment/dental_equipment_main"
						class="proCon_add_result_btn btn"
						style="border-radius: 0 0 0 5px; font-family: 'MinSans-Regular';">장비
						더 구경하기</a> <a
						href="${pageContext.request.contextPath}/productConsult/product_buy_request_consult"
						class="proCon_add_result_btn btn"
						style="border-radius: 0 0 5px 0; background-color: #ca5c0d; font-family: 'MinSans-Regular';">바로
						상담하러가기</a>
				</div>
			</div>
		</div>
	</div>
	<div id="detail_c_wrapper">
		<div id="eq_detail_c_content">
			<!-- 대표 이미지 설정-->	
			<div id="eq_detail_c_main_left">
				<div id="wrapper">
					<div id="slider_wrap">
						<ul id="slider">
							<li><img
								src="/springframework-mini-project/equipment/display?fileName=${detailProduct.pattachoname}"></li>
							<li><img
								src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg"></li>
							<li><img
								src="${pageContext.request.contextPath}/resources/subinimage/chair_image.PNG"></li>
							<li><img
								src="${pageContext.request.contextPath}/resources/subinimage/unit_chair1.jpg"></li>
							<li><img
								src="${pageContext.request.contextPath}/resources/subinimage/as_crown.png"></li>
						</ul>
		
						<!--controls-->
						<div class="btns" id="next">></div>
						<div class="btns" id="previous"><</div>
						<div id="counter"></div>
		
						<!-- <div id="pagination_wrap">
					<ul>
					</ul>
					</div> -->
						<!--controls-->
					</div>
				</div>
			</div>
		
			<div id="eq_detail_c_main_right">
				<a id="go_productlist" class="btn btn-outline-dark" href="/springframework-mini-project/equipment/dental_equipment_main">목록으로</a>
					<div>
						<div id="eq_detail_c_main_content1">${detailProduct.productName}
							<img id="icon_dentist"
								src="${pageContext.request.contextPath}/resources/subinimage/doctor.png" />

						</div>
						<hr/>
						<p id="eq_detail_c_main_content2">${detailProduct.productIntro}<br />
						</p>
						<p id="eq_detail_c_main_content3">색상</p>		
						<div id="colorcheck">
                            <label for="default1">${detailProduct.productColor}</label><input name="default1" type="radio" checked id="colorcheck_${detailProduct.productColor}">
                        </div>		
					</div>
					<div>
						<p id="eq_detail_c_main_content4">
						<form name='form'>
							<table>
								<tr>
									<td>수량</td>
									<td>
										<table>
											<tr>
												<td><input type='text' name='count' value='1' size='3'
													readonly style="text-align: center;" id="count_up_down">
												<td>
												<td><a onclick='javascript_:change(1);'>▲</a><br> <a
													onclick='javascript_:change(-1);'>▼</a></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</form>
						</p>
						<p id="eq_detail_c_main_content5">
							배송 가능 지역 <a id="table_button1" class="btn btn-leght"
								onclick="showcontent()"><img id="btn_able_delivery_loaction"
								src="${pageContext.request.contextPath}/resources/subinimage/down.png"></a>
						</p>
						<div id="able_delivery_loaction_info">
							- 서울, 경기, 인천, 부산, 울산, 광주, 세종, 대전, 대구
							<hr />
							이외의 지역, 제주 및 도서 산간 지역은 배송 비용 및 설치비가 추가될 수 있으며, 배송이 불가할 수 있습니다. 정확한
							안내를 원하시는 경우 상담 신청을 하시길 바랍니다.
						</div>
		
						<hr>
						<%-- 장비 구매 상담 세션 전송을 위한 form --%>
						<div>
							<form>
								<input type="hidden" id="consultHiddenModelNumber"
									value="${detailProduct.modelNumber}"> <input
									type="hidden" id="consultHiddenCount">
							</form>
							<a id="goto_consult" class="btn btn-info"
								onclick="javascript_:productConsultSession()">상담</a>
						</div>
		
					</div>
				</div>
			</div>
			<hr>


			<ul id="product_detail_content_click"class="nav nav-tabs">
				<li id="detail_click" class="nav-item" onclick="showDetail()">
				<p id="detail_style" class="nav-link active">장비 상세보기</p>
				</li>
				<li id="review_click"class="nav-item" onclick="showReview()">
					<p id="review_style" style="background-color: #ccc;" class="nav-link active">리뷰 보기</p>
				</li>
			</ul>
			<div id="product_detail_content" >
				<div id="product_detail_content_showhide">
					<c:forEach items="${detailPhoto}" var="photo">
						<img class="productPhoto" src="/springframework-mini-project/equipment/display?fileName=${photo.productFilename}">
					</c:forEach>
				</div>
				<div id="product_detail_review">
					여기에는 리뷰가 들어가야 합니다요!
				</div>
			</div>

		</div>
	</div>
	</div>
</div>



<script type="text/javascript">
	
</script>

<script
	src="${pageContext.request.contextPath}/resources/js/equipment/equipment_detail_consult.js"></script>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>