jQuery(function() {

    jQuery('.calls a').fancybox();

    //еСЛИ ВЫВОДИТСЯ ПРАВЫЙ БЛОК
    if (jQuery('body').has('#right_menu').length > 0) {
        jQuery('#right_menu li:first a').attr('href', window.BASE_URL + '/chasto-zadavaemye-voprosy.html');
    }

    function getCalculatorHTML() {
        return '<div id="calculator"><div class="calc_title">КАЛЬКУЛЯТОР</div>' +
                '<div class="count_of_analiz">Анализов: <span></span></div>' +
                '<div class="add">Добавить исследование к расчету</div><div class="separator"></div>' +
                '<div class="summa">Сумма: <span></span></div>' +
                '<div class="skidka">Скидка: <span></span></div><div class="separator">' +
                '<div class="itogo">Итого: <span></span></div><div class="clear">Очистить форму</div>' +
                '<div class="count_order"><a href="' + window.BASE_URL + '/rasschitat-zakaz.html">Рассчитать заказ</a></div></div>';
    }

    function setParametersInCalculator(countOfAnalizes, summaryPrice) {
        jQuery('#calculator .count_of_analiz span').html(countOfAnalizes);
        jQuery('#calculator .summa span').html(summaryPrice + ' руб.');
    }

    function setCookie(currentCountOfAnalizes, generalPrice, analizesList) {
        //Сохраняем количество анализов и общую цену в cookie
        var today = new Date();
        var offset = 1000 * 60 * 60 * 24;
        var expires_at = new Date(today.getTime() + offset).toGMTString();

        var cookie = "calculatorCookie=value1|value2|value3; path=/; expires=" + expires_at;
        var cookie = cookie.replace('value1', currentCountOfAnalizes).replace('value2', generalPrice).replace('value3', analizesList).replace(' ', '');
        document.cookie = cookie;
    }

    function setCalculatorsCookie() {
        //Вставляем разметку формы калькулятора
        jQuery('#right_menu .moduletable').prepend(getCalculatorHTML());

        //Считываем куки калькулятора
        var calculatorCookie = CookieObject.find('calculatorCookie');
        var countOfAnalizes = 0;
        var summa = 0;
        var analizesList = '';

        if (calculatorCookie == null) {
            setParametersInCalculator('0', '0');
        }
        else {
            var cookieSpliters = calculatorCookie.split('|');
            countOfAnalizes = cookieSpliters[0];
            summa = cookieSpliters[1];

            setParametersInCalculator(countOfAnalizes, summa);

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
            setParametersInCalculator(currentCountOfAnalizes, generalPrice);

            setCookie(currentCountOfAnalizes, generalPrice, analizesList);
        });

        jQuery('#calculator .clear').click(function() {
            analizesList = '';
            setCookie('0', '0', '');

            setParametersInCalculator('0', '0');
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

    /*Часто задаваемые вопросы*/
    if (jQuery('body').attr('id') == 'chasto-zadavaemye-voprosy') {
        jQuery('#comments-list-footer, #comments-footer, #jc h4, .comments-list .rbox').hide();
        jQuery('#comments-form-title').val('ВОПРОС');
        jQuery('#comments-form-title, label[for="comments-form-title"]').hide();
        
        jQuery('label[for="comments-form-name"]').html('ФИО<span class="required"></span>:');
        jQuery('label[for="comments-form-email"]').html('E-mail<span class="required"></span>:');
        jQuery('#comments-form-comment').before('<span class="text_of_question">Текст вопроса<span class="required"></span>:</span>');
        jQuery('#comments-form img.captcha[alt="Защитный код"]').before('<span class="captcha_text">Введите код с картинки<span class="required"></span>:</span>');
        jQuery('.captcha:eq(1)').html('Обновить картинку');
        jQuery('#comments-form-buttons #comments-form-send').after('<span class="bottom_text"><span class="required">*</span>- поля, обязательные для заполнения</div>');
        jQuery('#comments-form').prepend('<h2>Задать вопрос врачу</h2>');

        var questions = [];
        jQuery('.comments-list .comment-box').each(function() {
            if (jQuery(this).find('.comment-author').text() == 'Super User') {
                var currentAnswerToQuestion = '<div class="answer"><div class="text"><span>ОТВЕТ: </span>' + jQuery(this).find('.comment-body').text() + '</div></div>';
                questions[questions.length - 1] += currentAnswerToQuestion;
            }
            else {
                var text = jQuery(this).find('.comment-body').text();
                var answerButton = jQuery(this).find('.comments-buttons').html();
                if (answerButton == null)
                    answerButton = '';
                questions.push(text + '<span class="comments-buttons">' + answerButton + '</span>');
            }
        });
        questions = questions.reverse();

        //Количество вопросов на станице
        var countOfCommentsInPage = 3;

        var setCommentsPagination = function() {
            jQuery('#comments .rbox').empty();
            jQuery('#comments').append('<div class="commentsPagination"><div class="prev">&lt;</div></div>');

            var countOfSummaryComments = questions.length;

            var countOfPages = Math.ceil(parseFloat(countOfSummaryComments) / countOfCommentsInPage);

            for (var i = 0; i < countOfPages; i++) {
                var currentPage = i + 1;
                jQuery('#comments .commentsPagination').append(' <div>' + currentPage + '</div>');
            }
            jQuery('#comments .commentsPagination').append(' <div class="next">&gt;</div>');

            jQuery('.commentsPagination div').click(function() {
                var currentActiveNumber = jQuery('.commentsPagination div#active:eq(0)').text();
                var countOfPages = jQuery('.commentsPagination div').size() - 2;

                if (jQuery(this).attr('class') == 'prev') {
                    previous(currentActiveNumber, countOfPages);
                }
                else if (jQuery(this).attr('class') == 'next') {
                    next(currentActiveNumber, countOfPages);
                }
                else {
                    separateCommentsInPage(jQuery(this).text());
                }
            });
        }
       
        setCommentsPagination();

        jQuery('.commentsPagination div:eq(1)').attr('id', 'active');

        var renderComment = function(comment) {
            jQuery('#comments').prepend('<div class="comment_object"><span>ВОПРОС: </span>' + comment + '</div></div>');
        }
        
        var previous = function(currentActiveNumber) {
            if (currentActiveNumber != '1') {
                separateCommentsInPage((parseInt(currentActiveNumber) - 1).toString());
            }
        }

        var next = function(currentActiveNumber, countOfPages) {
            if (currentActiveNumber != countOfPages) {
                separateCommentsInPage((parseInt(currentActiveNumber) + 1).toString());
            }
        }
        
        var separateCommentsInPage = function(selectedPage) {
            jQuery('#comments .comment_object').remove();
            var startCommentNumber, endCommentNumber;
            var userSelectedNumber = parseInt(selectedPage);

            startCommentNumber = userSelectedNumber * 3 - 3;
            endCommentNumber = startCommentNumber + 2;

            if (endCommentNumber > (questions.length - 1))
                endCommentNumber = questions.length - 1;
            
            for(var i = endCommentNumber; i >= startCommentNumber; i--) {
                renderComment(questions[i]);
            }

            jQuery('.commentsPagination div').removeAttr('id');
            jQuery('.commentsPagination div').each(function() {
                if (jQuery(this).text() == selectedPage)
                    jQuery(this).attr('id', 'active');
            });
        }
        
        separateCommentsInPage('1');
    }

    /*Отзывы и претензии*/
    if (jQuery('body').attr('id') == 'otzyvy_i_pretenzii') {
        jQuery('#comments-list-footer, #comments-footer, #jc h4, .rbox').hide();
        if (CookieObject.find('superuser') == null || CookieObject.find('superuser') == 'false')
        {
            jQuery('#comments-form').prepend('<p class="type_of_comment"><span>Тип отзыва<span class="required"></span></span>' +
                    '<span><input type="radio" name="type" value="+">Положительный<input type="radio" name="type" value="-">Отрицательный</span></p>');

            var type = '';

            jQuery('#comments-form p.type_of_comment input').click(function() {
                type = jQuery(this).val();
                jQuery('#comments-form p:eq(3) input').val(type);
            });


        }
        else {
            jQuery('#comments-form-title').val('Ответ администрации');
        }

        jQuery('#comments-form-title, label[for="comments-form-title"]').hide();

        var comments = [];
        jQuery('.comments-list .comment-box').each(function() {
            if (jQuery(this).find('.comment-author').text() == 'Super User') {
                var currentAnswerToQuestion = '<div class="answer"><span class="date">' + jQuery(this).find('.comment-date').text() + '</span>' +
                        '<span class="name">Администрация</span><div class="text">' + jQuery(this).find('.comment-body').text() + '</div></div>';

                comments[comments.length - 1].text += currentAnswerToQuestion;
            }
            else {
                var answerButton = jQuery(this).find('.comments-buttons').html();
                if (answerButton == null)
                    answerButton = '';
                var commentObject = {
                    date: jQuery(this).find('.comment-date').text(),
                    name: jQuery(this).find('.comment-author').text(),
                    type: jQuery(this).find('.comment-title').text(),
                    text: jQuery(this).find('.comment-body').text(),
                    button: '<span class="comments-buttons">' + answerButton + '</span>'
                }
                comments.push(commentObject);
            }
        });

        //Функция для фильтрации вывода комментариев
        var filterComments = function(separator) {
            if (separator == 'neytral')
                return comments;

            var separatorValue = '';
            if (separator == 'positive')
                separatorValue = '+';
            else
                separatorValue = '-';

            var currentComments = [];
            for (var i = 0; i < comments.length; i++) {
                if (comments[i].type == separatorValue)
                    currentComments.push(comments[i]);
            }
            return currentComments;
        }

        //Количество комментариев на станице
        var countOfCommentsInPage = 2;

        //Массив со всеми комментариями по категории
        var tempCommentsList = comments;

        var setCommentsPagination = function() {
            jQuery('#list_of_comments').empty();
            jQuery('#list_of_comments').append('<div class="commentsPagination"><div class="prev">&lt;</div></div>');

            var countOfSummaryComments = tempCommentsList.length;

            var countOfPages = Math.ceil(parseFloat(countOfSummaryComments) / countOfCommentsInPage);

            for (var i = 0; i < countOfPages; i++) {
                var currentPage = i + 1;
                jQuery('#list_of_comments .commentsPagination').append(' <div>' + currentPage + '</div>');
            }
            jQuery('#list_of_comments .commentsPagination').append(' <div class="next">&gt;</div>');

            jQuery('.commentsPagination div').click(function() {
                var currentActiveNumber = jQuery('.commentsPagination div#active:eq(0)').text();
                var countOfPages = jQuery('.commentsPagination div').size() - 2;

                if (jQuery(this).attr('class') == 'prev') {
                    previous(currentActiveNumber, countOfPages);
                }
                else if (jQuery(this).attr('class') == 'next') {
                    next(currentActiveNumber, countOfPages);
                }
                else {
                    separateCommentsInPage(jQuery(this).text());
                }
            });
        }

        var renderComment = function(comment) {
            var typeValue = '';
            if (comment.type == '+')
                typeValue = 'positive';
            else
                typeValue = 'negative';

            jQuery('#list_of_comments').prepend('<div class="comment_object">' +
                    '<span class="date">' + comment.date + '</span>' +
                    '<span class="name">' + comment.name + '</span>' +
                    '<span class="type' + typeValue + '"></span>' +
                    '<div class="text">' + comment.text + comment.button + '</div></div>');
        }

        var previous = function(currentActiveNumber) {
            if (currentActiveNumber != '1') {
                separateCommentsInPage((parseInt(currentActiveNumber) - 1).toString());
            }
        }

        var next = function(currentActiveNumber, countOfPages) {
            if (currentActiveNumber != countOfPages) {
                separateCommentsInPage((parseInt(currentActiveNumber) + 1).toString());
            }
        }

        /*
         * @param {string} selectedPage - выбранная пользователем страница перехода к комментариям
         */
        var separateCommentsInPage = function(selectedPage) {
            jQuery('#list_of_comments .comment_object').remove();
            var startCommentNumber, endCommentNumber;
            var userSelectedNumber = parseInt(selectedPage);

            startCommentNumber = userSelectedNumber * 2 - 2;
            endCommentNumber = startCommentNumber + 1;

            if (endCommentNumber > (tempCommentsList.length - 1))
                endCommentNumber = tempCommentsList.length - 1;

            if (endCommentNumber != startCommentNumber) {
                renderComment(tempCommentsList[endCommentNumber]);
            }
            renderComment(tempCommentsList[startCommentNumber]);

            jQuery('.commentsPagination div').removeAttr('id');
            jQuery('.commentsPagination div').each(function() {
                if (jQuery(this).text() == selectedPage)
                    jQuery(this).attr('id', 'active');
            });
        }

        jQuery('#comments-form-buttons').after('<div id="comments_category"><span class="neytral">Все</span> <span class="positive">Положительные</span> <span class="negative">Негативные</span></div><div id="list_of_comments"></div>');
        //Кликаем по все, позитивные или негативные
        jQuery('#comments_category span').click(function() {
            tempCommentsList = filterComments(jQuery(this).attr('class'));
            setCommentsPagination();
            jQuery('.commentsPagination div:eq(1)').attr('id', 'active');
            separateCommentsInPage('1');
            /***********************/
            jQuery('#comments_category span').removeAttr('id');
            jQuery(this).attr('id', 'active');
        });

        jQuery('#comments_category span:first').attr('id', 'active');
        setCommentsPagination();
        jQuery('.commentsPagination div:eq(1)').attr('id', 'active');
        separateCommentsInPage('1');
    }

    /*Калькулятор*/
    if (jQuery('body').has('div#category_list_parameters').length > 0) {
        setCalculatorsCookie();

        if (jQuery('body').has('div.add-to-calculator').length > 0) {
            jQuery('.add-to-calculator').click(function() {
                if (!jQuery('#full_analiz .full_description input:checkbox').prop('checked')) {
                    jQuery('#full_analiz .full_description input:checkbox').prop('checked', true);
                    jQuery('#full_analiz .full_description input:checkbox').click();
                    jQuery('#full_analiz .full_description input:checkbox').prop('checked', true);
                }
            });
        }

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
        jQuery('.fcaptchainputcontainer input').removeAttr('style');
        jQuery('.foxform label').removeAttr('style');
        jQuery('.fcaptcha-reload-container').append('<div class="reload">Обновить картинку</div>');
        jQuery('.fcaptcha-reload-container img').hide();
        jQuery('.fcaptcha-reload-container .reload').click(function(){
            jQuery('.fcaptcha-reload-container img').click();
        });
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
    jQuery('.foxtext.hasDatepicker').removeAttr('style');
    jQuery('#top_menu .menu > li > span').click(function() {
        jQuery('.submenu_container').html(jQuery(this).next('ul').clone());
        jQuery('#top_menu .menu > li').removeClass('active_menu_link');
        jQuery('#top_menu .menu > li').removeClass('active');
        jQuery(this).parent().addClass('active_menu_link');
        return false;
    });
});