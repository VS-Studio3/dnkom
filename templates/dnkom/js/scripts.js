jQuery(function() {

    jQuery('.calls a').fancybox();

    function getCalculatorHTML() {
        var baseUrl = window.location.href.substr(0, window.location.href.indexOf('index.php'));
        return '<div id="calculator"><div class="calc_title">КАЛЬКУЛЯТОР</div>' +
                '<div class="count_of_analiz">Анализов: <span></span></div>' +
                '<div class="add">Добавить исследование к расчету</div><div class="separator"></div>' +
                '<div class="summa">Сумма: <span></span></div>' +
                '<div class="skidka">Скидка: <span></span></div><div class="separator">' +
                '<div class="itogo">Итого: <span></span></div><div class="clear">Очистить форму</div>' +
                '<div class="count_order"><a href="' + baseUrl + 'index.php/rasschitat-zakaz">Рассчитать заказ</a></div></div>';
    }
    
    function setCalculatorsCookie(){
        //Вставляем разметку формы калькулятора
        jQuery('#right_menu .moduletable').prepend(getCalculatorHTML());

        //Считываем куки калькулятора
        var calculatorCookie = CookieObject.find('calculatorCookie');
        var countOfAnalizes = 0;
        var summa = 0;
        var analizesList = '';

        if (calculatorCookie == null) {
            jQuery('#calculator .count_of_analiz span').html('0');
            jQuery('#calculator .summa span').html('0 руб.');
        }
        else {
            var cookieSpliters = calculatorCookie.split('|');
            countOfAnalizes = cookieSpliters[0];
            summa = cookieSpliters[1];

            jQuery('#calculator .count_of_analiz span').html(countOfAnalizes);
            jQuery('#calculator .summa span').html(summa + ' руб.');

            if (cookieSpliters.length == 3) {
                analizesList = cookieSpliters[2];

                jQuery('.item_object').each(function() {
                    if (analizesList.indexOf(jQuery.trim(jQuery(this).attr('itemid'))) != -1) {
                        jQuery(this).find('input').prop('checked', true);
                    }
                });
            }
        }

        //События по клику на чекбокс
        jQuery('input:checkbox').click(function() {
            var currentPrice = jQuery.trim(jQuery(this).attr('title'));
            var currentID = jQuery.trim(jQuery(this).closest('.item_object').eq(0).attr('itemid'));

            var generalPrice = jQuery.trim(jQuery('#calculator .summa span').text());
            generalPrice = parseFloat(generalPrice.substr(0, generalPrice.indexOf(' ')).replace(',', '.'));

            var currentCountOfAnalizes = parseFloat(jQuery.trim(jQuery('#calculator .count_of_analiz span').text()));

            if (this.checked) {
                //Добавляем в калькулятор
                generalPrice += parseFloat(currentPrice);
                currentCountOfAnalizes++;
                analizesList += jQuery.trim(currentID) + '-';
            }
            else {
                //Удаляем с калькулятора
                generalPrice -= parseFloat(currentPrice);
                currentCountOfAnalizes--;
                analizesList = analizesList.replace(jQuery.trim(currentID) + '-', '');
            }
            jQuery('#calculator .summa span').html(generalPrice + ' руб.');
            jQuery('#calculator .count_of_analiz span').html(currentCountOfAnalizes);

            //Сохраняем количество анализов и общую цену в cookie
            var today = new Date();
            var offset = 1000 * 60 * 60 * 24;
            var expires_at = new Date(today.getTime() + offset).toGMTString();

            var cookie = "calculatorCookie=value1|value2|value3; path=/; expires=" + expires_at;
            var cookie = cookie.replace('value1', currentCountOfAnalizes).replace('value2', generalPrice).replace('value3', analizesList).replace(' ', '');
            document.cookie = cookie;
        });

        jQuery('#calculator .clear').click(function() {
            analizesList = '';
            var today = new Date();
            var offset = 1000 * 60 * 60 * 24;
            var expires_at = new Date(today.getTime() + offset).toGMTString();

            var cookie = "calculatorCookie=value1|value2|value3; path=/; expires=" + expires_at;
            var cookie = cookie.replace('value1', '0').replace('value2', '0').replace('value3', '').replace(' ', '');
            document.cookie = cookie;

            jQuery('#calculator .count_of_analiz span').html('0');
            jQuery('#calculator .summa span').html('0 руб.');
            jQuery('.item_object').each(function() {
                jQuery(this).find('input').prop('checked', false);
            });
        });
    }

    CookieObject = {
        findAll: function() {
            var cookies = {};
            _(document.cookie.split(';'))
                    .chain()
                    .map(function(m) {
                        return m.replace(/^\s+/, '').replace(/\s+$/, '');
                    })
                    .each(function(c) {
                        var arr = c.split('='),
                                key = arr[0],
                                value = null;
                        var size = _.size(arr);
                        if (size > 1) {
                            value = arr.slice(1).join('');
                        }
                        cookies[key] = value;
                    });
            return cookies;
        },
        find: function(name) {
            var cookie = null,
                    list = this.findAll();

            _.each(list, function(value, key) {
                if (key === name)
                    cookie = value;
            });
            return cookie;
        }
    };

    /*Калькулятор*/
    if (jQuery('body').has('div#category_list_parameters').length > 0) {
        setCalculatorsCookie();

        jQuery('.jbzoo-filter.filter-default').hide();
        jQuery('.items.items-col-1').after('<div class="navigation_and_sort">' + jQuery('.navigation_and_sort').clone().html() + '</div>');
        jQuery('.navigation_and_sort:eq(1)').after('<dic class="description_text">' + jQuery('.description-full').html() + '</div>');
        jQuery('.description-full').remove();

        jQuery('.navigation_and_sort .sort').click(function() {
            //Сохраняем описание категории в cookie
            var today = new Date();
            var offset = 1000 * 60 * 60 * 24;
            var expires_at = new Date(today.getTime() + offset).toGMTString();

            var cookie = "categoryDescription=value; path=/; expires=" + expires_at;
            document.cookie = cookie.replace('value', jQuery('.description_text').html());
            jQuery('.jbzoo-filter.filter-default input').click();
        });
    }

    if (jQuery('body').has('form#.jbzoo-filter.filter-default').length > 0 && jQuery('body').has('div#category_list_parameters').length == 0) {
        setCalculatorsCookie();
        jQuery('.jbzoo-filter.filter-default, .title:eq(0), .title:eq(0) + p').hide();
        var categoryDescription = CookieObject.find('categoryDescription');
        jQuery('.items.items-col-1').before('<h1 class="title">' + jQuery.trim(jQuery('.jbzoo-filter.filter-default select:eq(0) option:selected').text()) + '</h1>' +
                '<div class="navigation_and_sort"><div class="sort">Сортировать по коду</div></div>' +
                '<div class="full_description"><div>Код</div>' +
                '<div>Наименование</div><div>Производитель реактивов</div>' +
                '<div>Срок исполнения</div><div>Цена в руб.</div>' +
                '<div>Добавить в калькулятор</div></div>');

        jQuery('.items.items-col-1').after('<div class="navigation_and_sort">' + jQuery('.navigation_and_sort').clone().html() + '</div><div class="description_text">' + categoryDescription + '</div>');

        jQuery('.navigation_and_sort .sort').click(function() {
            jQuery('.jbzoo-filter.filter-default input').click();
        });
    }

    /*Подготовка к анализам*/
    if (jQuery('body').attr('id') == 'podgotovka_k_analizam') {
        jQuery('.jbzoo.jbzoo-view-frontpage').after('<div class="nav"><div>Подготовка к анализам</div><div class="item_list"><ul></ul></div></div>' +
                '<dic class="description_wrapper"><div class="title"></div><div class="description"></div></div>');

        jQuery('.analiz').each(function() {
            var listElement = jQuery(this).find('.grup').text();
            jQuery('.nav .item_list ul').append('<li>' + listElement + '</li>');
        });

        jQuery('.nav .item_list ul li').click(function() {
            var grupName = jQuery(this).text();
            jQuery('.analiz').each(function() {
                if (grupName == jQuery(this).find('.grup').text()) {
                    jQuery('.description_wrapper .title').html(jQuery(this).find('.title').clone().text());
                    jQuery('.description_wrapper .description').html(jQuery(this).find('.opisanie').clone().text());
                }
            });
        });

        // jQuery('.jbzoo.jbzoo-view-frontpage').hide();
    }

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

    if (jQuery('body').attr('id') == 'analizy_po_razdelam') {
        var alphabet = '';
        jQuery('.subcategory-title').each(function() {
            var analizFirstSimbol = jQuery.trim(jQuery(this).text()).substr(0, 1).toUpperCase();
            if (alphabet.indexOf(analizFirstSimbol) == -1) {
                alphabet += analizFirstSimbol;
            }
        });

        for (var i = 0; i < alphabet.length; i++) {
            jQuery('#alphabet').append('<span>' + alphabet[i] + '</span> ');
        }
        jQuery('#alphabet').prepend('<span>ВСЕ</span> ');

        var currentListOFAnalizes = jQuery('.subcategories.subcategory-col-1').clone();
        jQuery('.subcategories.subcategory-col-1').remove();
        jQuery('#analiz_categories').html(jQuery(currentListOFAnalizes).html());

        jQuery('#alphabet span').click(function() {
            if (jQuery(this).text() == 'ВСЕ') {
                jQuery('#analiz_categories').html(jQuery(currentListOFAnalizes).html());
            }
            else {
                var selectedSimbol = jQuery(this).text();
                jQuery('#analiz_categories').html('');
                jQuery(currentListOFAnalizes).find('.subcategory').each(function() {
                    if (jQuery.trim(jQuery(this).find('.subcategory-title').text()).toUpperCase() == selectedSimbol) {
                        jQuery('#analiz_categories').html(jQuery(this).html());
                    }
                });
            }
        });
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