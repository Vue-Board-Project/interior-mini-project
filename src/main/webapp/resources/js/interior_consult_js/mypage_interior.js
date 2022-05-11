function mypage_interior_step_btn(nowClick){

    $(".mypage_interior_step_btn").each(function(){
        var title = $(this).attr('title');
        var divId = "#misb_"+title;
        if(title == nowClick){
            //현재 클릭한 버튼일 경우
            //버튼이 포함된 section 의 디자인 변경 및 하단 div show 처리
            $(this).css("backgroundColor","white");
            $(this).css("borderTop","1px solid #ccc");
            $(this).css("borderLeft","1px solid #ccc");
            $(this).css("borderRight","1px solid #ccc");
            $(this).css("borderBottom","none");
            $(divId).show();
        }else{ 
            //클릭하지 않은 경우
            //버튼이 포함된 section 의 디자인 변경 및 하단 div hide 처리
            $(this).css("backgroundColor","#f1f1f1");
            $(this).css("borderBottom","1px solid #ccc");
            $(this).css("borderTop","none");
            $(this).css("borderLeft","none");
            $(this).css("borderRight","none");
            $(divId).hide();
        }
    });
}