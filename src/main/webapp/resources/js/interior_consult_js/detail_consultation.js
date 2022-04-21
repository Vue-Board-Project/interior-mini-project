function detail_consult_aside_btn(nowClick){

    $(".detail_consult_aside_jsonci_class").each(function(){
        var value = $(this).val();
        var detailDiv = "#dcajc" + value;
        if($(this).val() == nowClick){
            $(detailDiv).show();
            $(this).css("color","#ca5c0d");
        }else{
            $(detailDiv).hide();
            $(this).css("color","#272723");
        }
    });

}