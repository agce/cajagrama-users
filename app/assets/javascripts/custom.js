$(document).ready(function(){
   var banderatype = $("#suscription_suscription_type").val();

    $('#one-time-price').css('display','block');
    $('#monthly-price').css('display','none');

    $('#suscription_suscription_type').click(function(){
        banderatype = $("#suscription_suscription_type").val();
        
        if( banderatype == 'One-time')
        {
            
            $('#one-time-price').css('display','block');
            $('#monthly-price').css('display','none');
            
        }
        else
        {
            $('#one-time-price').css('display','none');
            $('#monthly-price').css('display','block');
        }
    });
});