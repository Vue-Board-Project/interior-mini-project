function showcontent1(){
            if($('#c_service_second').c_services('display')=='none'){
                $('#c_service_second').show();
            }else{
            $('#c_service_second').hide();
            }
            $('#c_service_third').hide();
            $('#c_service_fourth').hide();
            $('#c_service_fifth').hide();
        }
        function showcontent2(){
            if($('#c_service_third').c_services('display')=='none'){
                $('#c_service_third').show();
            }else{
            $('#c_service_third').hide();
            }

            $('#c_service_second').hide();
            $('#c_service_fourth').hide();
            $('#c_service_fifth').hide();
        }
        function showcontent3(){
            if($('#c_service_fourth').c_services('display')=='none'){
                $('#c_service_fourth').show();
            }else{
            $('#c_service_fourth').hide();
            }
            $('#c_service_second').hide();
            $('#c_service_third').hide();
            $('#c_service_fifth').hide();
        }
        function showcontent4(){
            if($('#c_service_fifth').c_services('display')=='none'){
                $('#c_service_fifth').show();
            }else{
            $('#c_service_fifth').hide();
            }
            $('#c_service_second').hide();
            $('#c_service_third').hide();
            $('#c_service_fourth').hide();
        }