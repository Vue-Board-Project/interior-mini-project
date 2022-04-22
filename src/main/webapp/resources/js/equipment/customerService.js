function showcontent1(){
            if($('#customer_service_second').css('display')=='none'){
                $('#customer_service_second').show();
            }else{
            $('#customer_service_second').hide();
            }
            $('#customer_service_third').hide();
            $('#customer_service_fourth').hide();
            $('#customer_service_fifth').hide();
        }
        function showcontent2(){
            if($('#customer_service_third').css('display')=='none'){
                $('#customer_service_third').show();
            }else{
            $('#customer_service_third').hide();
            }

            $('#customer_service_second').hide();
            $('#customer_service_fourth').hide();
            $('#customer_service_fifth').hide();
        }
        function showcontent3(){
            if($('#customer_service_fourth').css('display')=='none'){
                $('#customer_service_fourth').show();
            }else{
            $('#customer_service_fourth').hide();
            }
            $('#customer_service_second').hide();
            $('#customer_service_third').hide();
            $('#customer_service_fifth').hide();
        }
        function showcontent4(){
            if($('#customer_service_fifth').css('display')=='none'){
                $('#customer_service_fifth').show();
            }else{
            $('#customer_service_fifth').hide();
            }
            $('#customer_service_second').hide();
            $('#customer_service_third').hide();
            $('#customer_service_fourth').hide();
        }