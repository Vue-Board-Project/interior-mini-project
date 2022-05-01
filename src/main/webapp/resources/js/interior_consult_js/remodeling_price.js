function remodeling_price_aside_btn(nowvalue){

    $(".remodeling_price_aside_jsonci_class").each(function(){
        var value = $(this).val();
        var detailDiv = "#rpajc"+value;
        if($(this).val() == nowvalue){
            $(detailDiv).show();
            $(this).css("color","#ca5c0d");
            $(this).css("fontWeight","bold");
        }else{
            $(detailDiv).hide();
            $(this).css("color","#272723");
            $(this).css("fontWeight","normal");
        }

    });
}


$("#acreageRange").change(function(){
    $("#acreageResult").text($("#acreageRange").val());
    console.log($("#acreageRange").val());
});
