//오른쪽 영역은 스크롤 따라다니기인데 웨않되
        $(document).ready(function(){
            var currentPosition = parseInt($("#shoppingCart_content_right").css("top"));
            $(window).scroll(function() {
                var position = $(window).scrollTop(); 
                $("#shoppingCart_content_right").stop().animate({"top":position+currentPosition+"px"},1000);
            });
        });

        //step1=>2 넘어가기
        function payment_nextstep1(){
            $('#payment_step2').show();
            $('#step2_bt_list').show();
            $('#payment_step1').hide();
            $('#next_page_go_to_payment_step1').hide();
            $('#payment_step3').hide();
        }
        //step2=>3
        function payment_nextstep2(){
            $('#payment_step3').show();
            $('#step3_bt_list').show();
            $('#step2_bt_list').hide();
            $('#payment_step2').hide();
        }
        //step2=>1 
        function payment_backstep1(){
            $('#payment_step1').show();
            $('#next_page_go_to_payment_step1').show();
            $('#payment_step2').hide();
            $('#step2_bt_list').hide();
        }
        //step2=>3
        function payment_nextstep2(){
            $('#payment_step3').show();
            $('#step3_bt_list').show();
            $('#step2_bt_list').hide();
            $('#payment_step2').hide();
        }
        //step3=>2
        function payment_backstep2(){
            $('#payment_step3').hide();
            $('#step3_bt_list').hide();
            $('#step2_bt_list').show();
            $('#payment_step2').show();
        }