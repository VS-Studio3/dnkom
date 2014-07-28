jQuery(function() {

    jQuery('.calls a').fancybox();
    
    /*Анализы на дому*/
    if (jQuery('body').attr('id') == 'analizy_na_domu') {
        jQuery('#analizy_na_domu a[href="#ogranicheniya"]').fancybox();

        jQuery('#analizy_na_domu .foxform .foxfield input[title="Телефон"]').mask('+7(999)999+99+99');
        jQuery('#analizy_na_domu .foxform .foxfield input[title="Дата выезда медсестры"]').mask('99.99.9999');

        jQuery.datepicker.regional['ru'] = {
            closeText: 'Закрыть',
            prevText: '&#x3c;Пред',
            nextText: 'След&#x3e;',
            currentText: 'Сегодня',
            monthNames: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь',
                'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
            monthNamesShort: ['Янв', 'Фев', 'Мар', 'Апр', 'Май', 'Июн',
                'Июл', 'Авг', 'Сен', 'Окт', 'Ноя', 'Дек'],
            dayNames: ['воскресенье', 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота'],
            dayNamesShort: ['вск', 'пнд', 'втр', 'срд', 'чтв', 'птн', 'сбт'],
            dayNamesMin: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
            weekHeader: 'Не',
            dateFormat: 'dd.mm.yy',
            firstDay: 1,
            isRTL: false,
            showMonthAfterYear: false,
            yearSuffix: ''};
        jQuery.datepicker.setDefaults(jQuery.datepicker.regional['ru']);
        jQuery('#analizy_na_domu .foxform .foxfield input[title="Дата выезда медсестры"]').datepicker();
    }

    /**SLIDER**/
    if (jQuery('.nivo-directionNav') != null) {
        var sliderShow = function() {
            jQuery('.nivo-directionNav').show();
        }
        sliderShow();
        jQuery('.nivo-slider-wrapper').hover(function() {
            sliderShow();
        });
    }

    /**MAIN MENU**/
    jQuery('#top_menu .menu > li:last-child').css({'background': 'none', 'background-color': 'white',
        'border-top-right-radius': '5px', 'border-bottom-right-radius': '5px'});

    jQuery('#top_menu .menu > li.parent').each(function() {
        if (jQuery(this).hasClass('active')) {
            jQuery('.submenu_container').html(jQuery(this).find('ul').clone());
        }
    });


    jQuery('#top_menu .menu > li > span').click(function() {
        jQuery('.submenu_container').html(jQuery(this).next('ul').clone());
        jQuery('#top_menu .menu > li').removeClass('active_menu_link');
        jQuery('#top_menu .menu > li').removeClass('active');
        jQuery(this).parent().addClass('active_menu_link');
        return false;
    });
});