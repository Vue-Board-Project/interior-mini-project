//도배 가격 클래스
class Paper{
    constructor(arec){
        this.min = 20;
        this.max = 23;
        this.arec = arec;
    }
    paperType(pType){
        if(pType == '실크'){
            this.min = this.min + 4;
            this.max = this.max + 4;
        }else if(pType == '믹스'){
            this.min = this.min + 2;
            this.max = this.max + 2;
        }
        this.min = this.min + 1* this.arec;
        this.max = this.max + 2* this.arec;
    }

    roomType(rTypeList){
        let addPriceRoomList = ['진료실','x-ray','기계실'];
        for(let room of rTypeList){
            if(addPriceRoomList.includes(room)){
                this.min = this.min + 10;
                this.max = this.max + 10;
            }
        }
    }

    brandAndCellingType(brand, celling){
        if(brand == "브랜드"){
            this.min = this.min + 2;
            this.max = this.max + 2;
        }
        if(celling == "포함"){
            this.min = this.min + 10;
            this.max = this.max + 10;
        }
    }
}
//공간 클래스
class Room{
    constructor(arec){
        this.min = 0;
        this.max = 0;
        this.arec = (arec -5 >0 ? arec -5 : 0);
    }
    paperType(type){
        if(type == '실크'){
            this.min = this.min + 24 + (this.arec*3);
            this.max = this.max + 27 + (this.arec*3);
        }else if(type == '합지'){
            this.min = this.min + 20 + this.arec;
            this.max = this.max + 23 + this.arec;
        }else if(type == '믹스'){
            this.min = this.min + 22 + (this.arec*2);
            this.max = this.max + 25 + (this.arec*2);
        }
    }
    floorType(type){
       const floorTypeList = [
        {ftype:'장판', mBase:14, xBase:15, add:4},
        {ftype:'강화마루', mBase:52, xBase:57, add:9},
        {ftype:'강마루', mBase:58, xBase:65, add:11},
        {ftype:'원목마루', mBase:131, xBase:144, add:20},
        {ftype:'포세린타일', mBase:53, xBase:58, add:10},
        {ftype:'천연대리석', mBase:60, xBase:67, add:16}
       ];
       let floorT = floorTypeList.find((item) => item.ftype === type);
       console.log(floorT);
       if(typeof floorT != 'undefined'){
        this.min = this.min + floorT.mBase + (floorT.add*this.arec);
        this.max = this.max + floorT.xBase + (floorT.add*this.arec);
       }      
    }
    light(type){
        if(type == '전체교체'){
            this.min = this.min + 50 + 2*this.arec;
            this.max = this.max + 60 + 2*this.arec;
        }else if(type == '부분교체'){
            this.min = this.min + 20 + this.arec;
            this.max = this.max + 30 + this.arec;
        }
    }
    extraWating(elements){
        const waitExtraList = [
            {elem:'출입문교체',mBase:50, xBase:100},
            {elem:'접수실변경',mBase:100, xBase:200},
            {elem:'놀이방설치',mBase:100, xBase:300},
            {elem:'의자',mBase:50, xBase:100},
            {elem:'쇼파',mBase:100, xBase:200}
        ];
        for(let element of elements){
            let selectE = waitExtraList.find((item) => item.elem === element);
        if(typeof selectE != 'undefined'){
            this.min = this.min + selectE.mBase;
            this.max = this.max + selectE.xBase; 
        }
        }
        
    }
}

//사이드 바 선택 시 색 변경
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
function minAndMaxResult(min, max){
    //아래 가격 출력
    let yespaper = `<div style=" display: inline-block; padding:20px 0 0 90px; font-family:'MinSans-Medium'; font-size: 17px;">리모델링 견적 계산 결과&nbsp;&nbsp;<i class="fas fa-comment-dollar"></i></div>`;
    yespaper += '<div  style=" display: inline-block; padding-right: 50px; font-family:'+ "'MinSans-Bold'" + '; font-size: 30px;" class="pt-2"><span id="paperMin"></span> ~ <span id="paperMax"></span> 만원</div>';
    $("#rPirceResult").html(yespaper);
    $("#rPirceResult").css("justify-content", "space-between");

    $({ val : 0 }).animate({ val : min }, {
        duration: 400,
        step: function() {
            var min = nwPaper(Math.floor(this.val));
            $("#paperMin").text(min);
        },
        complete: function() {
            var min = nwPaper(Math.floor(this.val));
            $("#paperMin").text(min);
        }
        });
        $({ val : 0 }).animate({ val : max }, {
            duration: 400,
            step: function() {
                var max = nwPaper(Math.floor(this.val));
                $("#paperMax").text(max);
            },
            complete: function() {
                var max = nwPaper(Math.floor(this.val));
                $("#paperMax").text(max);
            }
    });

    function nwPaper(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }

}

//도배 
$(".rp_papering").on("click", function() {
    rpChagnepaperingPrice();
});
$
//도배지 가격 계산
function rpChagnepaperingPrice(){
    let result = rpParperingChange();
    if(result){
        
        let paper1 = new Paper($("#rpPaperArecResult").text()); 
        paper1.paperType( $("input[name='remodeling_price_only_papering']:checked").val());

        let roomList = [];
        $("input[name='remodeling_price_only_papering_room']:checked").each(function(){
            roomList.push($(this).val());
        })
        if(roomList.length){
            paper1.roomType(roomList);
        }
        paper1.brandAndCellingType($("input[name='remodeling_price_only_papering_brand']:checked").val(),$("input[name='remodeling_price_only_papering_celling']:checked").val());
        
        min = paper1.min;
        max = paper1.max;
        minAndMaxResult(min, max);
        
        
    }
}

function paperingReset(){//도배 리셋버튼
    $(".rp_papering").prop('checked', false);
    rpParperingChange();
}

//도배 유효성 검사
function rpParperingChange(){
    //도배지 용 지역변수
    let papering = $("input[name='remodeling_price_only_papering']:checked");//도배지 종류
    let brand = $("input[name='remodeling_price_only_papering_brand']:checked"); //브랜드
    let celling = $("input[name='remodeling_price_only_papering_celling']:checked");//천장포함
    let ArecResult = $("#rpPaperArecResult");//평수
    let room = $("input[name='remodeling_price_only_papering_room']:checked");//원하는 공간

    //도배 모든 값 입력 확인 
    if(papering.length && brand.length && celling.length  && room.length && ArecResult.text() != '0'){//입력 완료
        return true;
    }else{//입력 안됨
        // 아래 가격에 아직 출력
        let nopaper = `<div style="color: white; font-family: 'MinSans-Medium'; font-size: 20px;" class="pt-3">아직 입력되지 않은 값이 있습니다.</div> `;
        $("#rPirceResult").html(nopaper);
        $("#rPirceResult").css("justify-content", "center");
        return false;
    }
     
}

//대기실
//대기실 가격 계산
$(".rp_wating").on("click", function() {
    rpChangeWatingPrice();
});

//대기실 유효성 검사
function rpWatingChage(){
    let WatingArec = $("#rpWatingArecResult");
    let paper = $("input[name='remodeling_price_wating_papering']:checked");//도배
    let floor = $("input[name='remodeling_price_wating_flooring']:checked");
    let light = $("input[name='remodeling_price_wating_light']:checked");
    let entrance = $("input[name='remodeling_price_waiting_entrance']:checked");
    let reception = $("input[name='remodeling_price_waiting_reception']:checked");
    let playroom = $("input[name='remodeling_price_waiting_playroom']:checked");
    let furniture = $("input[name='remodeling_price_waiting_furniture']:checked");

    if(WatingArec.text() != '0'&& (paper.length || floor.length || light.length || entrance.length || reception.length || playroom.length || furniture.length)){       
        return true;
    }else{
        let nopaper = `<div style="color: white; font-family: 'MinSans-Medium'; font-size: 20px;" class="pt-3">아직 입력되지 않은 값이 있습니다.</div> `;
        $("#rPirceResult").html(nopaper);
        $("#rPirceResult").css("justify-content", "center");
        return false;
    }
}


function rpChangeWatingPrice(){
    let result = rpWatingChage();
    if(result){
        let wPrice = new Room($("#rpWatingArecRange").val());
        wPrice.paperType($("input[name='remodeling_price_wating_papering']:checked").val());
        wPrice.floorType($("input[name='remodeling_price_wating_flooring']:checked").val());
        wPrice.light($("input[name='remodeling_price_waiting_light']:checked").val());
        let extraList = [
            $("input[name='remodeling_price_waiting_entrance']:checked").val(),
            $("input[name='remodeling_price_waiting_reception']:checked").val(),
            $("input[name='remodeling_price_waiting_playroom']:checked").val(),
            $("input[name='remodeling_price_waiting_furniture']:checked").val() 
        ];
        wPrice.extraWating(extraList);

        min = wPrice.min;
        max = wPrice.max;
        minAndMaxResult(min, max);
        
    }
}


//대기실 초기화 버튼
function watingReset(){//도배 리셋버튼
    $(".rp_wating").prop('checked', false);
    rpWatingChage();
}


//진료실
//진료실 가격 계산
$(".rp_treatment").on("click", function() {
    rpChangeTreatmentPrice();
});

//진료실 유효성 검사
function rpTreatmentChage(){
    let TreatmentArec = $("#rpTreatmentArecResult");
    let paper = $("input[name='remodeling_price_treatment_papering']:checked");//도배
    let floor = $("input[name='remodeling_price_treatment_flooring']:checked");
    let light = $("input[name='remodeling_price_treatment_light']:checked");
    let structure = $("input[name='remodeling_price_treatment_structure']:checked");
    
    if(TreatmentArec.text() != '0'&& (paper.length || floor.length || light.length)){       
        return true;
    }else{
        let nopaper = `<div style="color: white; font-family: 'MinSans-Medium'; font-size: 20px;" class="pt-3">아직 입력되지 않은 값이 있습니다.</div> `;
        $("#rPirceResult").html(nopaper);
        $("#rPirceResult").css("justify-content", "center");
        return false;
    }
}


function rpChangeTreatmentPrice(){
    let result = rpTreatmentChage();
    if(result){
        let tPrice = new Room($("#rpTreatmentArecRange").val());
        tPrice.paperType($("input[name='remodeling_price_treatment_papering']:checked").val());
        tPrice.floorType($("input[name='remodeling_price_treatment_flooring']:checked").val());
        tPrice.light($("input[name='remodeling_price_treatment_light']:checked").val());

        min = tPrice.min;
        max = tPrice.max;
        minAndMaxResult(min, max);
        
    }
}


//진료실 초기화 버튼
function treatmentReset(){//도배 리셋버튼
    $(".rp_treatment").prop('checked', false);
    rpTreatmentChage();
}



//소독실
//소독실 가격 계산
$(".rp_disinfection").on("click", function() {
    rpChangeDisinfectionPrice();
});

//진료실 유효성 검사
function rpDisinfectionChage(){
    let DisinfectionArec = $("#rpDisinfectionArecResult");
    let paper = $("input[name='remodeling_price_disinfection_papering']:checked");//도배
    let floor = $("input[name='remodeling_price_disinfection_flooring']:checked");
    let light = $("input[name='remodeling_price_disinfection_light']:checked");
    let structure = $("input[name='remodeling_price_treatment_structure']:checked");
    
    if(DisinfectionArec.text() != '0'&& (paper.length || floor.length || light.length)){       
        return true;
    }else{
        let nopaper = `<div style="color: white; font-family: 'MinSans-Medium'; font-size: 20px;" class="pt-3">아직 입력되지 않은 값이 있습니다.</div> `;
        $("#rPirceResult").html(nopaper);
        $("#rPirceResult").css("justify-content", "center");
        return false;
    }
}


function rpChangeDisinfectionPrice(){
    let result = rpDisinfectionChage();
    if(result){
        let dPrice = new Room($("#rpDisinfectionArecRange").val());
        dPrice.paperType($("input[name='remodeling_price_disinfection_papering']:checked").val());
        dPrice.floorType($("input[name='remodeling_price_disinfection_flooring']:checked").val());
        dPrice.light($("input[name='remodeling_price_disinfection_light']:checked").val());

        min = dPrice.min;
        max = dPrice.max;
        minAndMaxResult(min, max);
        
    }
}


//진료실 초기화 버튼
function disinfectionReset(){//도배 리셋버튼
    $(".rp_disinfection").prop('checked', false);
    rpDisinfectionChage();
}


