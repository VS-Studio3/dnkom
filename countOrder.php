<?php
if ($_COOKIE['calculatorCookie']) {
    $calculatorCookieLementsList = explode('|', $_COOKIE['calculatorCookie']);
    if (count($calculatorCookieLementsList) == 3) {

        //Считываем данные с БД
        $connection = new mysqli('localhost', 'root', '', 'joomla');
        $connection->query("SET NAMES 'utf8';");
        if ($connection->connect_error) {
            echo '<strong>Ошибка подключения к БД.</strong><br />Перезагрузите страницу пожалуйста.';
            exit;
        }

        $currentItemsID = explode('-', $calculatorCookieLementsList[2]);

        //Ассоциативный массивы с данными по иследованиям.
        $separatorAnalizesString = '';

        for ($i = 0; $i < count($currentItemsID); $i++) {
            if ($currentItemsID[$i] != '') {
                $query = 'SELECT name, elements FROM y18x3_zoo_item WHERE id = "' . $currentItemsID[$i] . '"';
                $result = $connection->query($query)->fetch_assoc();

                $separatorAnalizesString = $separatorAnalizesString . $result['name'] . '+' . json_encode(json_decode($result['elements'])) . '|';
            }
        }

        $connection->close();
    }
}
?>
<script type="text/javascript">
    jQuery(function() {
        function ifIsNotCookie() {
            jQuery('#count_order_module').hide();
        }

        var baseUrl = '<?php echo JURI::base(); ?>' + 'analizy-i-tseny/analizy-po-razdelam.html';
        jQuery('.add-other-order a').attr('href', baseUrl);

        var issetAnalizesInCookie = '<?php echo $issetAnalizesInCookie; ?>';
        if ('<?php echo $calculatorCookieLementsList[2]; ?>' != '') {
            var analizesList = '<?php echo $separatorAnalizesString; ?>'.split('|');

            //Массив элементов с информацией по каждому выбранному анализу
            var analizesDataList = [];
            for (var i = 0; i < analizesList.length; i++) {
                if (analizesList[i] != '') {
                    var separatorAnaliz = analizesList[i].split('+');

                    var analiz = {name: separatorAnaliz[0]}
                    var elementsObject = JSON.parse(separatorAnaliz[1])

                    analiz.code = elementsObject['5d8c05c2-3ef7-400d-bf7b-24b6c713a7e5']['0'].value;
                    analiz.proizvoditel = elementsObject['60e031d8-2508-4d1c-b9f8-cd5b825a7afe']['option']['0'];
                    analiz.srok = elementsObject['0cfa4f03-0cd0-4c23-96db-18c61ec1109c']['0'].value;
                    analiz.price = elementsObject['c0a63fd1-6651-4710-a6bc-f1e252c7854e']['0'].value;
                    analiz.biomaterials = elementsObject['bf2ac3ce-f1aa-4124-bff6-5813e841db6a']['0'].value;

                    analizesDataList.push(analiz)
                }
            }

            //Выводим данные в таблицы
            for (var i = 0; i < analizesDataList.length; i++) {
                jQuery('.full_description.list-issledovaniy .inner').append('<div class="item_object">' +
                        '<div>' + analizesDataList[i].code + '</div>' +
                        '<div>' + analizesDataList[i].name + '</div>' +
                        '<div>' + analizesDataList[i].proizvoditel + '</div>' +
                        '<div>' + analizesDataList[i].srok + '</div>' +
                        '<div>' + analizesDataList[i].price + '</div>' +
                        '<div><input type="checkbox" price="' + analizesDataList[i].price + '"></div></div>');

                if (analizesDataList[i].biomaterials != '') {
                    var biomaterialsList = analizesDataList[i].biomaterials.split(',');
                    for (var j = 0; j < biomaterialsList.length; j++) {
                        var biomaterial = biomaterialsList[j].split('-');

                        jQuery('.full_description.vyberite-uslugu .inner').append('<div class="item_object">' +
                                '<div>' + analizesDataList[i].name + '(' + jQuery.trim(biomaterial[0]) + ')</div>' +
                                '<div>' + jQuery.trim(biomaterial[1]) + '</div><div><input type="checkbox" price="' + jQuery.trim(biomaterial[1]) + '"></div></div>');
                    }
                }
            }

            //Скрываем поле формы. В него буду записывать данные по заявке для отправки по E-mail'у
            //jQuery('.foxform .foxfield:eq(3)').hide();

            //Выбор взятия биоматериала
            var listOfBiomaterials = '';
            var summaryPriceOfBiomaterials = 0;
            jQuery('.full_description.vyberite-uslugu input:checkbox').click(function() {
                var currentPrice = parseFloat(jQuery(this).attr('price').replace(' ', '').replace(',', '.'));
                if (this.checked) {
                    //summaryPriceOfBiomaterials +
                    summaryPriceOfBiomaterials += currentPrice;
                    listOfBiomaterials += jQuery.trim(jQuery(this).closest('.item_object').find('div:eq(0)').html()) + ',';
                }
                else {
                    //summaryPriceOfBiomaterials -
                    summaryPriceOfBiomaterials -= currentPrice;
                    listOfBiomaterials = listOfBiomaterials.replace(jQuery.trim(jQuery(this).closest('.item_object').find('div:eq(0)').html()) + ',', '');
                }
                onChange();
            });
            
            //Выбор исследований
            var summaryPriceOfAnalizes = 0;
            //Подсчет суммы по всем исследованиям
            jQuery('.full_description.list-issledovaniy .item_object').each(function(){
                summaryPriceOfAnalizes += parseFloat(jQuery(this).find('div:eq(4)').text().replace(' ', '').replace(',', '.'));
            });
            
            var listOfAnalizes = '';
            jQuery('.full_description.list-issledovaniy .item_object').each(function(){
                listOfAnalizes += jQuery.trim(jQuery(this).find('div:eq(1)').html()) + ',';
            });
            
            //При удалении или добавлении(заново) анализа
            jQuery('.full_description.list-issledovaniy input:checkbox').click(function() {
                var currentPrice = parseFloat(jQuery(this).attr('price').replace(' ', '').replace(',', '.'));
                if (this.checked) {
                    //Снимаем анализ из списка
                    summaryPriceOfAnalizes -= currentPrice;
                    listOfAnalizes = listOfAnalizes.replace(jQuery.trim(jQuery(this).closest('.item_object').find('div:eq(1)').html()) + ',', '');
                }
                else {
                    //Добавляем анализ к списку
                    summaryPriceOfAnalizes += currentPrice;
                    listOfAnalizes += jQuery.trim(jQuery(this).closest('.item_object').find('div:eq(1)').html()) + ',';
                }
                onChange();
            });
            
            //Процент скидки
            var skidka = 0;
            jQuery('.full_description.vyberite-skidku input:radio').click(function(){
                skidka = parseFloat(jQuery(this).val());
                onChange();
            });
            
            //Цена за взятие биоматериала (на дому и нет)
            var listOfBiomaterialsNaDomu = '';
            var biomaterialNaDomu = 0;
            jQuery('.full_description.vyberite-platnuy-uslugu input:checkbox').click(function(){
                var currentPrice = parseFloat(jQuery(this).attr('title').replace(' ', '').replace(',', '.'));
                if (this.checked) {
                    //summaryPriceOfBiomaterials +
                    biomaterialNaDomu += currentPrice;
                    listOfBiomaterialsNaDomu += jQuery.trim(jQuery(this).closest('.item_object').find('div:eq(0)').html()) + ',';
                }
                else {
                    //summaryPriceOfBiomaterials -
                    biomaterialNaDomu -= currentPrice;
                    listOfBiomaterialsNaDomu = listOfBiomaterialsNaDomu.replace(jQuery.trim(jQuery(this).closest('.item_object').find('div:eq(0)').html()) + ',', '');
                }
                onChange();
            });
            
            var onChange = function(){
                var generalSumma = summaryPriceOfBiomaterials + summaryPriceOfAnalizes + biomaterialNaDomu;
                jQuery('.full_description.stoimost-zakaza .inner div:eq(0)').html('Сумма: ' + generalSumma + ' руб.');
                jQuery('.full_description.stoimost-zakaza .inner div:eq(1)').html('Скидка: ' + skidka + '%');
                
                var summary = 0;
                if(skidka == 0) jQuery('.full_description.stoimost-zakaza .inner div:eq(2)').html('Сумма: ' + generalSumma + ' руб.');
                else{
                    var generalSumma = parseFloat(generalSumma);
                    summary = generalSumma - ((generalSumma/100.00) * skidka);
                    jQuery('.full_description.stoimost-zakaza .inner div:eq(2)').html('Сумма: ' + summary + ' руб.');
                }
                
                var printText = 'Сумма: ' + generalSumma + ' руб. | Скидка: ' + skidka + '% | Итого: ' + (skidka > 0 ? summary : generalSumma) + ' руб.';
                printText += ' | Исследования: ' + (listOfAnalizes.length > 0 ? listOfAnalizes.substr(0, listOfAnalizes.length - 1) : ' не выбраны');
                printText += ' | Платные услуги(взятие биоматериала): ' + (listOfBiomaterials.length > 0 ? listOfBiomaterials.substr(0, listOfBiomaterials.length - 1) : ' не выбраны');
                printText += ' | Дополнительные услуги: ' + (listOfBiomaterialsNaDomu.length > 0 ? listOfBiomaterialsNaDomu.substr(0, listOfBiomaterialsNaDomu.length - 1) : ' не выбраны');
                jQuery('.foxform textarea').html(printText);
            }
            
            onChange();
            jQuery('.fcaptchainputcontainer input').removeAttr('style');
            jQuery('.foxform label').removeAttr('style');
            jQuery('.fcaptcha-reload-container').append('<div class="reload">Обновить картинку</div>');
            jQuery('.fcaptcha-reload-container img').hide();
            jQuery('.fcaptcha-reload-container .reload').click(function(){
                jQuery('.fcaptcha-reload-container img').click();
            });
            jQuery('.foxbutton').after('<div class="offcose"><span>*</span> - поля, ' +
                'обязательные для заполнения</div>');
        }
        else
            ifIsNotCookie();
    });
</script>

