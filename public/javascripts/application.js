$(function(){
    $('a#sender').bind('click',function(){
        $('.ajax').load('ajax');
        return false;
    });


    $('.sender2').bind('ajax:success',function(data){
        //alert('success');

        /*
        var receive = $.parseJSON(data);
        alert(receive);
        $('div.ajax2').html(receive.num);
        */
    });




});