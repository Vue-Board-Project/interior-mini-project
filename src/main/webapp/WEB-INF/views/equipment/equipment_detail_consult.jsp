<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<link href="${pageContext.request.contextPath}/resources/css/equipment/equipment_detail_consult.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/equipment/productConsultPopUp.css" rel="stylesheet" type="text/css" />

<div class="proCon_add_result_dim-layer">
	<div class="dimBg"></div>
	<div id="proCon_add_result_btn" class="proCon_add_result_pop-layer">
		<div class="proCon_add_result_pop-container">
			<div class="text-center proCon_add_result_title">
				<div class="mb-3">
					<i class="fas fa-tooth fa-4x"></i>
				</div>
				<div>
					<h5 style="color: black; font-size: 23px; font-family: 'MinSans-Bold';" id="proCon_add_result_title"></h5>
				</div>
			</div>
			<div class="btn-r">
				<a href="${pageContext.request.contextPath}/equipment/dental_equipment_main" class="proCon_add_result_btn btn" style="border-radius: 0 0 0 5px;font-family: 'MinSans-Regular';">장비 더 구경하기</a>
				<a href="${pageContext.request.contextPath}/productConsult/product_buy_request_consult" class="proCon_add_result_btn btn" style="border-radius: 0 0 5px 0; background-color: #ca5c0d;font-family: 'MinSans-Regular';">바로 상담하러가기</a>
			</div>
		</div>
	</div>
</div>
<div id="eq_detail_c_content">
	<!-- 대표 이미지 설정-->

	<div id="eq_detail_c_main_left" style="margin-left: 250px;">
		<div id="wrapper">
			<div id="slider_wrap">
				<ul id="slider">
					<li><img src="/springframework-mini-project/equipment/display?fileName=${detailProduct.pattachoname}"></li>
					<li><img src="${pageContext.request.contextPath}/resources/subinimage/chair1.jpeg"></li>
					<li><img src="${pageContext.request.contextPath}/resources/subinimage/chair_image.PNG"></li>
					<li><img src="${pageContext.request.contextPath}/resources/subinimage/unit_chair1.jpg"></li>
					<li><img src="${pageContext.request.contextPath}/resources/subinimage/as_crown.png"></li>
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
		<div>
			<P id="eq_detail_c_main_content1">${detailProduct.productName}
			<img id="icon_dentist"
					src="${pageContext.request.contextPath}/resources/subinimage/doctor.png" />
			</P>
			<hr/>
			
			<p id="eq_detail_c_main_content2">${detailProduct.productIntro}<br/>
			</p>
			<p id="eq_detail_c_main_content3">색상</p>
			
			<div id="colorcheck">
			<form>
				<label for="default1">검정 </label>
				<input name="default1" type="radio" checked id="colorcheck_black"> 
				<label for="default2">파랑 </label>
				<input name="default1" type="radio" id="colorcheck_blue"> 
				<label for="default3">빨강 </label>
				<input name="default1" type="radio" id="colorcheck_red"> 
				<label for="default4">보라 </label>
				<input name="default1" type="radio" id="colorcheck_purple"> 
				<label for="default5">초록 </label>
				<input name="default1" type="radio" id="colorcheck_green">
			</form>
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
						value="${detailProduct.modelNumber}"> 
						<input type="hidden" id="consultHiddenCount">
				</form>
				<a class="btn btn-info" onclick="javascript_:productConsultSession()">상담</a>
			</div>

		</div>
		
		

	</div>
</div>
<script type="text/javascript">
	function productConsultSession(){
		let mNum = $("#consultHiddenModelNumber").val();
		let cot = $("#consultHiddenCount").val();
		
		//장비 세션 창으로 값 전송
		$.ajax({
			url:"/springframework-mini-project/productConsult/productSessionAdd",
			data:{mNum, cot},
			method:"post"
		}).done((data) => {
			if(data.result==="success") {
				$("#proCon_add_result_title").html("장비 구매 상담 추가 성공!");
				layer_popup("#proCon_add_result_btn");
			} else if(data.result==="wrong") {
				$("#proCon_add_result_title").html("같은 장비가 존재합니다.");
				layer_popup("#proCon_add_result_btn");
			}
				
				
		});
	}

	function layer_popup(el){
    

		var $el = $(el);    //레이어의 id를 $el 변수에 저장
		$('.proCon_add_result_dim-layer').fadeIn();

		var $elWidth = ~~($el.outerWidth()),
			$elHeight = ~~($el.outerHeight()),
			docWidth = $(document).width(),
			docHeight = $(document).height();

		// 화면의 중앙에 레이어를 띄운다.
		if ($elHeight < docHeight || $elWidth < docWidth) {
			$el.css({
				marginTop: -$elHeight /2,
				marginLeft: -$elWidth/2
			})
		} else {
			$el.css({top: 0, left: 0});
		}

		$el.find('a.btn-layerClose').click(function(){
			$('.proCon_add_result_dim-layer').fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
			return false;
		});

		$('.layer .dimBg').click(function(){
			$('.proCon_add_result_dim-layer').fadeOut();
			return false;
		});

	}
</script>

<script
			src="${pageContext.request.contextPath}/resources/js/equipment/equipment_detail_consult.js"></script>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>