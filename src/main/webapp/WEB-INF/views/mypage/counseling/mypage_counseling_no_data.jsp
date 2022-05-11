<%@ page contentType="text/html; charset=UTF-8"%>


<div class = "mypage_no_counseling_info" 
style = "display : inline-block; width : 100%; height : 400px; padding-top : 50px;">
	<div style = "display : inline-block; width : 85%; margin-left : 7%; margin-top : 30px; background-color : #e8e8db; border-radius : 20px;">
		<div class = "mp_noinfo_title" 
		style = "font-size : 1.5rem; font-family: 'MinSans-Regular'; text-align : center; margin-top : 50px;">
		상담 내역이 없습니다.
		</div>
		
		<div class = "mp_noinfo_content" 
		style = "font-size : 1.5rem; font-family: 'MinSans-Regular'; margin-top :50px; text-align : center;">
		치과에 최적화된 인테리어로 고객의 눈높이에 맞는 맞춤제안을 제공합니다.
		</div>	
		<div style = "display : flex; align-items: center; justify-content: center; margin-bottom : 50px;">
			<button type="button" class="btn btn-primary btn-lg"
			 style = "margin-top :50px; background-color : #ca5c0d; border : 0; outline : 0;
			 width:300px; height:50px;"
			onclick="location.href='/springframework-mini-project/interior_consult/quick_consultation'"> 
			인테리어 견적 보기 
			</button>
			
			<button type="button" class="btn btn-primary btn-lg" 
			style = "margin-top :50px; background-color : #ca5c0d; border : 0; outline : 0; margin-left : 50px;
			width:300px; height:50px;"
			onclick="location.href='/springframework-mini-project/goPortfolioDental'">
			포트폴리오 구경하기
			</button>
		</div>
	</div>
</div>
		