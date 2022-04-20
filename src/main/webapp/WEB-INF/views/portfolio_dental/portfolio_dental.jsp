<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
    <style>

        .dropbtn {
        background-color: #f1f1f1;
        color: black;
        padding: 10px;
        margin-right: 5px;
        font-size: 14px;
        border: none;
        border-radius: 10px;
        }

        .dropdown {
        position: relative;
        display: inline-block;
        }

        .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f1f1f1;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
        border-radius: 10px;
        }
        
        .dental_model_color_choice{
        display: none;
        position: absolute;
        background-color: #f1f1f1;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
        border-radius: 10px;
        }

        .dropdown-content .dropdown_content_top {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        }
        
        .dropdown-content .dropdown_content_mid {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        }

        .dropdown-content .dropdown_content_bottom {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        border-bottom-left-radius: 10px;
        border-bottom-right-radius: 10px;
        }

        .dropdown-content a:hover {background-color: #ddd;}

        .dropdown:hover .dropdown-content {display: block;}
        /* .dropdown:hover .dental_model_color_choice {display: block;} */
        
        .detail_interior_color_choie{
            margin: 0;
        }
        .detail_interior_color_choie input[type="checkbox"] {
            display: none;
        }
        .dental_model_field_choice input[type="checkbox"] {
        	display: none;
        }
     
        .detail_interior_color_choie input[type="checkbox"] + span {
            width: 20px;
            height: 20px;
            display: inline-block;
            border: 1px solid #f1f1f1;
            cursor: pointer;
            font-size: 20px;
            border-radius: 10px;
        }
     	.dental_model_field_choice input[type="checkbox"] + span {
            display: inline-block;
            border: 1px solid #f1f1f1;
            cursor: pointer;
            font-size: 14px;
        }
        .detail_interior_color_choie input[type="checkbox"]:checked + span {
            width: 20px;
            height: 20px;
            border: 3px solid #ca5c0d;
        }
        .dental_model_field_choice input[type="checkbox"]:checked + span {
            border: 2px solid #ca5c0d;
            border-radius : 10px;
        }
    </style>
<div id="dental_model_wrap" style="margin: 0 auto; width: 996px; font-family: 'MinSans-Regular';">
        <div id="dental_model_filter_group" class="m-3 text-left">
            <div class="dropdown">
              <button class="dropbtn"><span style="color: #7c7c7c;" class="mr-2">정렬</span><img src="${pageContext.request.contextPath}/resources/model_dental_images/icons/dental_model_detail_dropdown_icon.png" style="width: 12px;"/></button>
              <div class="dropdown-content">
                <div class="p-2 d-flex flex-column">
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="sort" value="new">
		                <span class="mr-2">최신순</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="sort" value="popular">
		                <span class="mr-2">인기순</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="sort" value="past">
		                <span class="mr-2">과거순</span>
		            </label>
			     </div>
              </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn"><span style="color: #7c7c7c;" class="mr-2">스타일</span><img src="${pageContext.request.contextPath}/resources/model_dental_images/icons/dental_model_detail_dropdown_icon.png" style="width: 12px;"/></button>
                <div class="dropdown-content">

                  <div class="p-2 d-flex flex-column">
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="sort" value="new">
		                <span class="mr-2">모던</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="sort" value="popular">
		                <span class="mr-2">시크</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="sort" value="past">
		                <span class="mr-2">네추럴</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="sort" value="popular">
		                <span class="mr-2">미니멀</span>
		            </label>
		            <label class="dental_model_field_choice">
		                <input type="checkbox" name="sort" value="past">
		                <span class="mr-2">북유럽</span>
		            </label>
			     </div>
                </div>
              </div>
              <div class="dropdown">
                <button class="dropbtn"><span style="color: #7c7c7c;" class="mr-2">컬러</span><img src="${pageContext.request.contextPath}/resources/model_dental_images/icons/dental_model_detail_dropdown_icon.png" style="width: 12px;"/></button>
                <div class="dropdown-content">
	                <div class="dental_model_color_choice p-2" style="display: flex;">
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
                <button class="dropbtn"><span style="color: #7c7c7c;" class="mr-2">분야</span><img src="${pageContext.request.contextPath}/resources/model_dental_images/icons/dental_model_detail_dropdown_icon.png" style="width: 12px;"/></button>
                <div class="dropdown-content">
                  <div class="p-2 d-flex flex-column">
			            <label class="dental_model_field_choice">
			                <input type="checkbox" name="field" value="normal">
			                <span class="mr-2">일반치과</span>
			            </label>
			            <label class="dental_model_field_choice">
			                <input type="checkbox" name="field" value="infant">
			                <span class="mr-2">소아치과</span>
			            </label>
			            <label class="dental_model_field_choice">
			                <input type="checkbox" name="field" value="special">
			                <span class="mr-2">특수치과</span>
			            </label>
			       </div>
                </div>
              </div>
        </div>
        <div class="d-flex flex-column text-center mt-5 mb-5">
       		<div class="ml-3 text-left" style="font-size:14px; color:#7c7c7c;"><p style="line-height: 0; margin:0; padding:0;">전체 <span>9</span></p></div>
            <div class="d-flex" style=" margin:0 auto;">
                <div class="m-3 pb-3" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);"> 
                    <a href="#" style="text-decoration: none; color: black;">
                        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/chungchun_waiting_room5.jpg" style="width: 300px; height: 200px;"/>
                        <b class="mt-3" style="line-height: 3;">화이트 톤의 자연친화적인 인테리어</b>
                        <small class="d-block" style="line-height: 1;">mansik</small>
                    </a>
                </div>
                <div class="m-3" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);">
                    <a href="portfolioDentalDeatail2" style="text-decoration: none; color: black;">
                        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_6.PNG" style="width: 300px; height: 200px;"/>
                        <b class="mt-3" style="line-height: 3;">블랙 포인트를 준 시크한 인테리어</b>
                        <small class="d-block" style="line-height: 1;">manok</small>
                    </a>
                </div>
                <div class="m-3" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);">
                    <a href="#" style="text-decoration: none; color: black;">
                        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/treatment_room2.jpg" style="width: 300px; height: 200px;"/>
                        <b class="mt-3" style="line-height: 3;">편안한 분위기의 인테리어</b>
                        <small class="d-block" style="line-height: 1;">manbok</small>
                    </a>
                </div>
            </div>
            <div class="d-flex" style=" margin:0 auto;">
                <div class="m-3 pb-3" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);"> 
                    <a href="#" style="text-decoration: none; color: black;">
                        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/chungchun_waiting_room5.jpg" style="width: 300px; height: 200px;"/>
                        <b class="mt-3" style="line-height: 3;">화이트 톤의 자연친화적인 인테리어</b>
                        <small class="d-block" style="line-height: 1;">mansik</small>
                    </a>
                </div>
                <div class="m-3" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);">
                    <a href="#" style="text-decoration: none; color: black;">
                        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_6.PNG" style="width: 300px; height: 200px;"/>
                        <b class="mt-3" style="line-height: 3;">블랙 포인트를 준 시크한 인테리어</b>
                        <small class="d-block" style="line-height: 1;">manok</small>
                    </a>
                </div>
                <div class="m-3" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);">
                    <a href="#" style="text-decoration: none; color: black;">
                        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/treatment_room2.jpg" style="width: 300px; height: 200px;"/>
                        <b class="mt-3" style="line-height: 3;">편안한 분위기의 인테리어</b>
                        <small class="d-block" style="line-height: 1;">manbok</small>
                    </a>
                </div>
            </div>
            <div class="d-flex" style=" margin:0 auto;">
                <div class="m-3 pb-3" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);"> 
                    <a href="#" style="text-decoration: none; color: black;">
                        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/chungchun_waiting_room5.jpg" style="width: 300px; height: 200px;"/>
                        <b class="mt-3" style="line-height: 3;">화이트 톤의 자연친화적인 인테리어</b>
                        <small class="d-block" style="line-height: 1;">mansik</small>
                    </a>
                </div>
                <div class="m-3" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);">
                    <a href="#" style="text-decoration: none; color: black;">
                        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/black_6.PNG" style="width: 300px; height: 200px;"/>
                        <b class="mt-3" style="line-height: 3;">블랙 포인트를 준 시크한 인테리어</b>
                        <small class="d-block" style="line-height: 1;">manok</small>
                    </a>
                </div>
                <div class="m-3" style="box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);">
                    <a href="#" style="text-decoration: none; color: black;">
                        <img src="${pageContext.request.contextPath}/resources/model_dental_images/photos/treatment_room2.jpg" style="width: 300px; height: 200px;"/>
                        <b class="mt-3" style="line-height: 3;">편안한 분위기의 인테리어</b>
                        <small class="d-block" style="line-height: 1;">manbok</small>
                    </a>
                </div>
            </div>
        </div>
    </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>