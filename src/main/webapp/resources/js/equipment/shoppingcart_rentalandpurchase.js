
        //전체선택 체크박스
        function selectAll(selectAll)  {
            const checkboxes=document.getElementsByName('purchase_cart_select');
            
            checkboxes.forEach((checkbox) => {
                checkbox.checked = selectAll.checked;
            })
        }

        function selectAll_r(selectAll)  {
            const checkboxes=document.getElementsByName('rental_cart_select');
            
            checkboxes.forEach((checkbox) => {
                checkbox.checked = selectAll.checked;
            })
        }

        //오른쪽 영역은 스크롤 따라다니기인데 웨않되
        $(document).ready(function(){
            var currentPosition = parseInt($("#shoppingCart_content_right").css("top"));
            $(window).scroll(function() {
                var position = $(window).scrollTop(); 
                $("#shoppingCart_content_right").stop().animate({"top":position+currentPosition+"px"},1000);
            });
        });
