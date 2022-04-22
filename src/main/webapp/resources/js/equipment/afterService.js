//input(type=text) í´ë¦­íë©´ default value ì¬ë¼ì§ëë¡
        function clearText(thefield){
        if (thefield.defaultValue==thefield.value)
                thefield.value = ""
        }


        function is_checked() {
        // 1. checkbox elementë¥¼ ì°¾ìµëë¤.
        const checkbox = $('checkwhenyoudontknow');
        // 2. checked ìì±ì ì²´í¬í©ëë¤.
        const is_checked = checkbox.checked;   
        }
        
        //ì²´í¬ ìí©ì ë°ë¼ ì ë³´ ìë ¥ì ì ì  ì ë³´ ê·¸ëë¡ ê° ê²ì¸ì§, ìë¡ ìë ¥ ë°ì ê²ì¸ì§ ê²°ì 
        function setDisplay(){
            if($('input:radio[id=checked_same_user]').is(':checked')){
                $('#checked_same_user_info').show();
                $('#checked_user_update_info').hide();
            }else{
                $('#checked_same_user_info').hide();
                $('#checked_user_update_info').show();
            }     
        }
        $(document).ready(function(){ 
            $("#btn_select_reservation_date").click(function(){ 
            $("#as_reservation_date_ch").css("display", "block"); 
            }); 
            $("#login-popup-close").click(function(){ 
            $("#as_reservation_date_ch").css("display", "none"); 
            }); 
        }); 