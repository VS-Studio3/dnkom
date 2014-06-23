var $j = jQuery.noConflict();

$j( document ).ready(function() {



    //Отключение перехода по якорю #
    $j('body').on('click','[href^=#]',function ( e) {
        e.preventDefault();
    });
});

