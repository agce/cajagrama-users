
   $banderamenu = 0;
   
    $('#menu-open').click(function(){
        $('#background-menu-hidden').css('display','block');
        $('#background-menu-hidden').css('opacity','1');
        $('#close-menu').css('display','block');
        $('#menu-oculto').css('display','block');
        $('#menu-oculto').removeClass('fadeOutDown');
        $('#menu-oculto').addClass('fadeInUp');
        $banderamenu = 0;
    });
    
    $('#close-menu').click(function() {
        $('#background-menu-hidden').css('display','none');
        $('#close-menu').css('display','none');
        $('#menu-oculto').removeClass('fadeInUp');
        $('#menu-oculto').addClass('fadeOutDown');
        $('#menu-oculto').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
            if($banderamenu == 1)
            {
                $(this).css('display','none');
            }
        });
        $banderamenu = 1;
    });
