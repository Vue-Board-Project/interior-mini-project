
class Price{
    constructor(arce){
        this.arce = arce;
        this.min = 100*arce;//최소값
        this.max = 150*arce;//최대값
    }
    //추가시공 
    allRoom(list){
        let roomPriceList = new Map([
            ['operating' , 1000],
            ['xray',300],
            ['owner',100],
            ['consult',100],
            ['makeup',150],
            ['bath',150]
        ]);
        for(let room of list){
            console.log(room);
            this.min = this.min +roomPriceList.get(room);
            this.max = this.max + roomPriceList.get(room); 
        }
    }
    //모든도배
    papering(papp ,roomwide){
        let papplist = new Map([
            ['silk' , 3],
            ['paper', 0],
            ['silkpaper', 1]
        ]);
        var pappSize = Math.round(this.arce * roomwide);
        this.min = this.min + pappSize*papplist.get(papp);
        this.max = this.max + pappSize*papplist.get(papp);
    }

    //모든바닥
    flooring(floor, roomwide){
        let floorlist = new Map([
            ['veneer',-2],
            ['reinforcedfloor',0],
            ['riverfloor',1],
            ['solidwoodfloor',10],
            ['porcelaintile',0],
            ['naturalmarble',6]
        ]);
        var floorSize = Math.round(this.arce * roomwide);
        this.min = this.min + floorSize*floorlist.get(floor);
        this.max = this.max + floorSize*floorlist.get(floor);
    }
    //모든조명
    light(lightcho, roomwide){
        var lightSize = Math.round(this.arce*roomwide);
        if(lightcho == '실링라이트'){
            this.min = this.min + 50 + (2*lightSize);
            this.max = this.max + 50 + (2*lightSize);
        }else{
            this.min = this.min + 20 + (2*lightSize);
            this.max = this.max + 20 + (2*lightSize);
        }
    }
    //유니트체어
    unite(count){
        this.min = this.min + (400*count);
        this.max = this.max + (400*count);
    }
}
//유효성 검사를 위한 id 값들
let key = ['all','waiting','treatment','disinfection','machine'];
let values = [ ['allRoomTone','wallpaperTone','floorTone'],
                ["papering","flooring","light","furniture"],
                ["papering","flooring","light","structure","unit"],
                ["warehouse_sq","capital","machin"],
                ["papering","flooring","light","structure","capital"]
                ];

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

// //상담신청 완료 팝업창
// function quick_consult_finish_btn(el){

//     var $el = $(el);    //레이어의 id를 $el 변수에 저장
//     $('.consult_finish_dim-layer').fadeIn();

//     var $elWidth = ~~($el.outerWidth()),
//         $elHeight = ~~($el.outerHeight()),
//         docWidth = $(document).width(),
//         docHeight = $(document).height();

//     // 화면의 중앙에 레이어를 띄운다.
//     if ($elHeight < docHeight || $elWidth < docWidth) {
//         $el.css({
//             marginTop: -$elHeight /2,
//             marginLeft: -$elWidth/2
//         })
//     } else {
//         $el.css({top: 0, left: 0});
//     }

//     $('.layer .dimBg').click(function(){
//         $('.consult_finish_dim-layer').fadeOut();
//         return false;
//     });

// } 

//모든 값이 입력되었는지 확인
function checkAllPonint(where){

    var allState = allAsideChage();
    var waitingState = watingAsideChage();
    var waitingState = watingAsideChage();
    var treatmentState = treatmentAsideChage();
    var  disinfectionState = disinfectionAsidechange();
    var machineState  = machineAsidechange();

    if(allState && waitingState && treatmentState &&  disinfectionState && machineState){
        let nowPrice = new Price($("#acreageRange").val());
        //종합
        let roomList = [];
        $("input[name=allSideRoom]:checked").each(function(){
            roomList.push($(this).val());
        })
        if(roomList.length){
            nowPrice.allRoom(roomList);
        }
        //대기실
        console.log($("input[name='waiting_papering']:checked").val());
        nowPrice.papering($("input[name='waiting_papering']:checked").val(),0.25);
        nowPrice.flooring($("input[name='waiting_flooring']:checked").val(),0.25);
        nowPrice.light($("input[name='waiting_light']:checked").val(), 0.25);
        //진료실
        nowPrice.papering($("input[name='treatment_papering']:checked").val(),0.5);
        nowPrice.flooring($("input[name='treatment_flooring']:checked").val(),0.5);
        nowPrice.light($("input[name='treatment_light']:checked").val(), 0.25);
        nowPrice.unite($("input[name='treatment_unite']").val());
        //소독실
        //기계실
        nowPrice.papering($("input[name='machine_papering']:checked").val(),0.25);
        nowPrice.flooring($("input[name='machine_flooring']:checked").val(),0.25);
        nowPrice.light($("input[name='machinelight']:checked").val(), 0.25);

        var min = nowPrice.min;
        var max = nowPrice.max;
        $("#priceResultSpan").text(" ~ ");
        $("#priceResultwon").text(" 만원 ");
  
        $({ val : 0 }).animate({ val : min }, {
        duration: 400,
        step: function() {
            var min = numberWithCommas(Math.floor(this.val));
            $("#priceResultmin").text(min);
        },
        complete: function() {
            var min = numberWithCommas(Math.floor(this.val));
            $("#priceResultmin").text(min);
        }
        });
        $({ val : 0 }).animate({ val : max }, {
            duration: 400,
            step: function() {
                var max = numberWithCommas(Math.floor(this.val));
                $("#priceResultmax").text(max);
            },
            complete: function() {
                var max = numberWithCommas(Math.floor(this.val));
                $("#priceResultmax").text(max);
            }
            });

        function numberWithCommas(x) {
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }

    }else{
        if(where == 'done'){//마지막 버튼일 경우 유효성 검사
            whereNotCheck();
            $("#priceResultSpan").text("입력 되지 않은 값이 있습니다.");
        }else if(where == 'check'){
            $("#priceResultSpan").text("입력 되지 않은 값이 있습니다.");
            $("#priceResultmin").empty();
            $("#priceResultmax").empty();
            $("#priceResultwon").empty();
        }
    }
    
}


//모든값 입력되지 않았을 때 유효성 검사
function whereNotCheck(){
  //종합
    if(!allAsideChage()){
        $("#all_i").css("color","#E32310");

        if($("#acreageResult").text() == "" ||  $("#acreageResult").text() == "평수 미입력"){//평수 미입력
            $("#acreageResult").text("평수 미입력");
            $("#acreageResult").css("color", "red");
        }

        if(!$("input[name='allRoomTone']:checked").length){//전체 톤 미선택
            $("#all_allRoomTone_span").text("미입력");
            $("#all_allRoomTone_i").css("color", "red");

        }

        if(!$("input[name='wallpaperTone']:checked").length){//벽 톤 미선택
            $("#all_wallpaperTone_span").text("미입력");
            $("#all_wallpaperTone_i").css("color", "red");
          
        }
        if(!$("input[name='floorTone']:checked").length){//바닥 톤 미선택
            $("#all_floorTone_span").text("미입력");
            $("#all_floorTone_i").css("color", "red");
           
        }
    }

    //대기실
    if(!watingAsideChage()){
        $("#waiting_i").css("color","#E32310");

        if(!$("input[name='waiting_papering']:checked").length){//도배 미선택
            $("#waiting_papering_span").text("미입력");
            $("#waiting_papering_i").css("color", "red");
        }

        if(!$("input[name='waiting_flooring']:checked").length){//바닥 미선택
            $("#waiting_flooring_span").text("미입력");
            $("#waiting_flooring_i").css("color", "red");
        }

        if(!$("input[name='wating_light']:checked").length){//조명 미선택
            $("#waiting_light_span").text("미입력");
            $("#waiting_light_i").css("color", "red");
        }

        if(!$("input[name='waiting_furniture']:checked").length){//가구 미선택
            $("#waiting_furniture_span").text("미입력");
            $("#waiting_furniture_i").css("color", "red");
        }

    }
    
    //진료실
    if(!treatmentAsideChage()){
        $("#treatment_i").css("color","#E32310");
            

        if(!$("input[name='treatment_papering']:checked").length){//도배
            $("#treatment_papering_i").css("color", "red");
            $("#treatment_papering_span").text("미입력");
        }
        if(!$("input[name='treatment_flooring']:checked").length){//바닥
            $("#treatment_flooring_i").css("color", "red");
            $("#treatment_flooring_span").text("미입력");
        }
        if(!$("input[name='treatment_light']:checked").length){//조명
            $("#treatment_light_i").css("color", "red");
            $("#treatment_light_span").text("미입력");
        }
        if(!$("input[name='treatment_structure']:checked").length){//구조
            $("#treatment_structure_i").css("color", "red");
            $("#treatment_structure_span").text("미입력");
        }
        if( $("input[name='treatment_unite']").val() == ""){//유니트체어
            $("#treatment_unite_i").css("color", "red");
            $("#treatment_unite_span").text("미입력");
        }
    }
    
    //소독실
    if(!disinfectionAsidechange()){
        $("#disinfection_i").css("color","#E32310");

        if(!$("input[name='disinfection_warehouse_sq']:checked").length){//창고분리
            $("#disinfection_warehouse_sq_i").css("color", "red");
            $("#disinfection_warehouse_sq_span").text("미입력");
        }
        if(!$("input[name='disinfection_capital']:checked").length){//수도설치
            $("#disinfection_capital_i").css("color", "red");
            $("#disinfection_capital_span").text("미입력");
        }
        if($("input[name='disinfection_machin']").val() == ""){//기계
            $("#disinfection_machin_i").css("color", "red");
            $("#disinfection_machin_span").text("미입력");
        }
    }

    //기계실
    if(!machineAsidechange()){
        $("#machine_i").css("color","#E32310");
        if(!$("input[name='machine_papering']:checked").length){//도배
            $("#machine_papering_i").css("color", "red");
            $("#machine_papering_span").text("미입력");
        }
        if(!$("input[name='machine_flooring']:checked").length){//바닥
            $("#machine_flooring_i").css("color", "red");
            $("#machine_flooring_span").text("미입력");
        }
        if(!$("input[name='machine_light']:checked").length){//조명
            $("#machine_light_i").css("color", "red");
            $("#machine_light_span").text("미입력");
        }
        if(!$("input[name='machine_papering']:checked").length){//창고분리
            $("#machine_papering_i").css("color", "red");
            $("#machine_papering_span").text("미입력");
        }
    }
}

    



//input 값 변경시마다 감지
//[종합]
$("input[name='allSideRoom']").on("click", function() {
    allAsideChage();
    checkAllPonint('no');
});

//평수 계산 방법
$("#acreageRange").change(function(){
    var value =Math.floor($("#acreageRange").val() * 3.305);
    var result = $("#acreageRange").val() + "평(" + value + "㎡)"; 
    $("#acreageResult").css("color", "#80807a");
    $("#acreageResult").text(result);
    allAsideChage();
    checkAllPonint('no');
   
});
//색깔 change
$("input[name='allRoomTone']").on("click", function() {
    chageRed( 'all' , 'allRoomTone');
    $("#all_allRoomTone_span").empty();
    $("#all_allRoomTone_i").css("color", "white");
    allAsideChage();
    checkAllPonint('no');
});
$("input[name='wallpaperTone']").on("click", function() {
    chageRed( 'all' , 'wallpaperTone');
    allAsideChage();
    checkAllPonint('no');
});
$("input[name='floorTone']").on("click", function() {
    chageRed( 'all' , 'floorTone');
    allAsideChage();
    checkAllPonint('no');
});

//종합창에 모든 값이 입력되었는지 확인
function allAsideChage(){
    //종합
    var allAcreageResult = $("#acreageResult").text();//평수
    var allRoomTone = $("input[name='allRoomTone']:checked");//전체 색
    var wallpaperTone = $("input[name='wallpaperTone']:checked");//벽 색
    var floorTone = $("input[name='floorTone']:checked");//바닥 색

    if( allAcreageResult != "" && allAcreageResult != "평수 미입력" 
        && allRoomTone.length && wallpaperTone.length && floorTone.length){
            $("#all_i").css("color","white");
            return true;
    }else{
        return false;
    }
}
//[대기실]
$("input[name='waiting_papering']").on("click", function() {
    chageRed( 'waiting' , 'papering');
    watingAsideChage();
    checkAllPonint('no');
});
$("input[name='waiting_flooring']").on("click", function() {
    chageRed( 'waiting' , 'flooring');
    watingAsideChage();
    checkAllPonint('no');
});
$("input[name='waiting_light']").on("click", function() {
    chageRed( 'waiting' , 'light');
    watingAsideChage();
    checkAllPonint('no');
});
$("input[name='waiting_furniture']").on("click", function() {
    chageRed( 'waiting' , 'furniture');
    watingAsideChage();
    checkAllPonint('no');
});

//대기실창에 모든 값이 입력되었는지 확인
function watingAsideChage(){
    var waiting_papering = $("input[name='waiting_papering']:checked");//도배
    var waiting_flooring= $("input[name='waiting_flooring']:checked");//바닥
    var wating_light = $("input[name='waiting_light']:checked");//조명
    var waiting_furniture = $("input[name='waiting_furniture']:checked");//가구

    if(waiting_papering.length && waiting_flooring.length && 
        wating_light.length && waiting_furniture.length){
        $("#waiting_i").css("color","white");
        return true;

    }else{
        return false;
    }
}

//[진료실]
$("input[name='treatment_papering']").on("click", function() {
    chageRed( 'treatment' , 'papering');
    treatmentAsideChage();
    checkAllPonint('no');

});
$("input[name='treatment_flooring']").on("click", function() {
    chageRed( 'treatment' , 'flooring');
    treatmentAsideChage();
    checkAllPonint('no');
});  
$("input[name='treatment_light']").on("click", function() {
    chageRed( 'treatment' , 'light');
    treatmentAsideChage();
    checkAllPonint('no');
});
$("input[name='treatment_structure']").on("click", function() {
    chageRed( 'treatment' , 'structure');
    treatmentAsideChage();
    checkAllPonint('no');
});
$("input[name='treatment_unite']").on("change keyup paste", function() {
    chageRed( 'treatment' , 'unite');
    treatmentAsideChage();
    checkAllPonint('no');
});


//진료실창에 모든 값이 입력되었는지 확인
function treatmentAsideChage(){
    var treatment_papering = $("input[name='treatment_papering']:checked");//도배
    var treatment_flooring = $("input[name='treatment_flooring']:checked");//바닥
    var treatment_light = $("input[name='treatment_light']:checked");//조명
    var treatment_structure = $("input[name='treatment_structure']:checked");//구조
    var treatment_unite = $("input[name='treatment_unite']").val();//유니트체어
   
    if(treatment_papering.length && treatment_flooring.length 
        && treatment_light.length && treatment_structure.length && treatment_unite != ""){
        $("#treatment_i").css("color","white");
        return true;
    }else{
        return false;
    }
}

//[소독실]
$("input[name='disinfection_warehouse_sq']").on("click", function() {
    chageRed( 'disinfection' , 'warehouse_sq');
    disinfectionAsidechange();
    checkAllPonint('no');
});
$("input[name='disinfection_capital']").on("click", function() {
    chageRed( 'disinfection' , 'capital');
    disinfectionAsidechange();
    checkAllPonint('no');
});
$("input[name='disinfection_machin']").on("change keyup paste", function() {
    chageRed( 'disinfection' , 'machin');
    disinfectionAsidechange();
    checkAllPonint('no');
});

function disinfectionAsidechange(){
    var disinfection_warehouse_sq = $("input[name='disinfection_warehouse_sq']:checked");
    var disinfection_capital =$("input[name='disinfection_capital']:checked")
    var disinfection_machin =$("input[name='disinfection_machin']").val();
    if(disinfection_warehouse_sq.length && disinfection_capital.length && disinfection_machin.length){
        $("#disinfection_i").css("color","white");
        return true;
    }else{
        return false;
    }
}
//[기계실]
$("input[name='machine_papering']").on("click", function() {
    chageRed( 'machine' , 'papering');
    checkAllPonint('no');
});
$("input[name='machine_flooring']").on("click", function() {
    chageRed( 'machine' , 'flooring');
    machineAsidechange();
    checkAllPonint('no');
});
$("input[name='machine_light']").on("click", function() {
    chageRed( 'machine' , 'light');
    machineAsidechange();
    checkAllPonint('no');
});
$("input[name='machine_capital']").on("click", function() {
    chageRed( 'machine' , 'capital');
    machineAsidechange();
    checkAllPonint('done');
});

function machineAsidechange(){
    var machine_papering = $("input[name='machine_papering']:checked");
    var machine_flooring = $("input[name='machine_flooring']:checked");
    var machine_light = $("input[name='machine_light']:checked");
    var machine_capital = $("input[name='machine_capital']:checked");
    if(machine_papering.length && machine_flooring.length && machine_light.length &&machine_capital.length ){
        $("#machine_i").css("color","white");
        return true;
    }else{
        return false;
    }
}
//리셋버튼
function resetAll(){
    $("input").prop('checked', false);

    for(let a=0;a<=4;a++){
        chageSideRed(key[a]);
        for(let b of values[a]){
            chageRed( key[a] , b);
        }
    }
    checkAllPonint('check');
}

function chageRed( asides , inputer){
    var span = "#"+asides+"_"+inputer+"_span";
    var i = "#"+asides+"_"+inputer+"_i";
    $(span).empty();
    $(i).css("color", "white");
}
function chageSideRed(side){
    var sideValue = "#"+side+"_i"
    $(sideValue).css("color","white");
}

