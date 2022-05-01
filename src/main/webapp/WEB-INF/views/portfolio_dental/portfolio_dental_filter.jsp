<%@ page contentType="text/html; charset=UTF-8"%>
<link href="${pageContext.request.contextPath}/resources/css/portfolio_dental/cssPortfolioDentalFilter.css" rel="stylesheet" type="text/css">
<div id="dental_model_filter_group" class="m-3 text-left">
            <div class="dropdown">
              <button class="dropbtn"><span style="color: #7c7c7c;" class="mr-2">정렬</span><img class="dropbtn_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/dental_model_detail_dropdown_icon.png" style="width: 12px;"/></button>
              <div class="dropdown-content">
                <div class="p-2 d-flex flex-column">
		            <label class="dental_model_field_choice">
		                <input type="radio" name="sort" value="new">
		                <span class="ml-2">최신순</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="radio" name="sort" value="popular">
		                <span class="ml-2">인기순</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="radio" name="sort" value="past">
		                <span class="ml-2">과거순</span>
		            </label>
			     </div>
              </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn"><span style="color: #7c7c7c;" class="mr-2">스타일</span><img class="dropbtn_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/dental_model_detail_dropdown_icon.png" style="width: 12px;"/></button>
                <div class="dropdown-content">
                  <div class="p-2 d-flex flex-column">
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="style" value="modern">
		                <span class="ml-2">모던</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="style" value="chic">
		                <span class="ml-2">시크</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="style" value="natural">
		                <span class="ml-2">네추럴</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="style" value="minimal">
		                <span class="ml-2">미니멀</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="style" value="european">
		                <span class="ml-2">북유럽</span>
		            </label>
			     </div>
                </div>
              </div>
              <div class="dropdown">
                <button class="dropbtn"><span style="color: #7c7c7c;" class="mr-2">컬러</span><img class="dropbtn_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/dental_model_detail_dropdown_icon.png" style="width: 12px;"/></button>
                <div class="dropdown-content">
	                <div class="p-2" style="display: flex;">
			            <label class="detail_interior_color_choie">
			                <input type="checkbox" name="color" value="black">
			                <span class="mr-2" style="background-color: black;">
			                </span>
			            </label>
			            <label class="detail_interior_color_choie">
			                <input type="checkbox" name="color" value="white">
			                <span class="mr-2"  style="background-color: white;">
			                </span>
			            </label>
			            <label class="detail_interior_color_choie">
			                <input type="checkbox" name="color" value="beige">
			                <span class="mr-2" style="background-color: beige">
			                </span>
			            </label>
			            <label class="detail_interior_color_choie">
			                <input type="checkbox" name="color" value="wheat">
			                <span class="mr-2" style="background-color: wheat;">
			                </span>
			            </label>
			            <label class="detail_interior_color_choie">
			                <input type="checkbox" name="color" value="brown">
			                <span class="mr-2" style="background-color: brown;">
			                </span>
			            </label>
			            <label class="detail_interior_color_choie">
			                <input type="checkbox" name="color" value="red">
			                <span class="mr-2" style="background-color: red;">
			                </span>
			            </label>
			            <label class="detail_interior_color_choie">
			                <input type="checkbox" name="color" value="pink">
			                <span class="mr-2" style="background-color: pink;">
			                </span>
			            </label>
			            <label class="detail_interior_color_choie">
			                <input type="checkbox" name="color" value="yellow">
			                <span class="mr-2" style="background-color: yellow;">
			                </span>
			            </label>
			            <label class="detail_interior_color_choie">
			                <input type="checkbox" name="color" value="lightGreen">
			                <span class="mr-2" style="background-color: darkseagreen;">
			                </span>
			            </label>
			            <label class="detail_interior_color_choie">
			                <input type="checkbox" name="color" value="lightblue">
			                <span class="mr-2" style="background-color: lightblue;">
			                </span>
			            </label>
			        </div>
                </div>
              </div>
              <div class="dropdown">
                <button class="dropbtn"><span style="color: #7c7c7c;" class="mr-2">분야</span><img class="dropbtn_img" src="${pageContext.request.contextPath}/resources/model_dental_images/icons/dental_model_detail_dropdown_icon.png" style="width: 12px;"/></button>
                <div class="dropdown-content">
                  <div class="p-2 d-flex flex-column">
			           <label class="dental_model_field_choice">
			               <input type="checkbox" name="field" value="normal">
			               <span class="ml-2">일반치과</span>
			           </label>
			           <label class="dental_model_field_choice">
			               <input type="checkbox" name="field" value="infant">
			               <span class="ml-2">소아치과</span>
			           </label>
			           <label class="dental_model_field_choice">
			               <input type="checkbox" name="field" value="special">
			               <span class="ml-2">특수치과</span>
			           </label>
			       </div>
                </div>
              </div>
        </div>
<!--    <div id="selected" style="font-size: 12px; background-color: #ca5c0d; border-radius: 5px;" class="ml-2"></div>
 <script>
 var onSelectedSorts = function () {
    var s = '';
    var checkboxs = document.getElementsByName("sort");

    for (var i = 0; i < checkboxs.length; i++) {
      var c = checkboxs.item(i);
      if (c.checked == true) {
        if (s) {
          s += ', ';
        }
        s += c.parentNode.innerText.trim();
      }
    }

    document.getElementById('selected').innerText = s;
  }
 </script> -->
<script src="${pageContext.request.contextPath}/resources/js/portfolio_dental/jsPortfolioDentalFilter.js"></script>