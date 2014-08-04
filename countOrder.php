<?php
$issetAnalizesInCookie = false;
if ($_COOKIE['calculatorCookie']) {
    $calculatorCookieLementsList = explode('|', $_COOKIE['calculatorCookie']);
    if (count($calculatorCookieLementsList) == 3) {
        $issetAnalizesInCookie = true;

        //Считываем данные с БД
        $connection = new mysqli('localhost', 'root', '', 'joomla');
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
            jQuery('.message').html('Необходимо выбрать исследования.');
        }

        var baseUrl = window.location.href.substr(0, window.location.href.indexOf('index.php')) + 'index.php/2014-06-25-06-27-00/2014-06-25-06-37-56';
        jQuery('.add-other-order a').attr('href', baseUrl);

        var issetAnalizesInCookie = '<?php echo $issetAnalizesInCookie; ?>';
        if (issetAnalizesInCookie == 1) {
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
            jQuery('.foxform textarea').hide();

            //Выбор взятия биоматериала
            var summaryPriceOfBiomaterials = 0;
            jQuery('.full_description.vyberite-uslugu input:checkbox').click(function() {
                var currentPrice = parseFloat(jQuery(this).attr('price').replace(' ', '').replace(',', '.'));
                if (this.checked) {
                    //summaryPriceOfBiomaterials +
                    summaryPriceOfBiomaterials += currentPrice;
                }
                else {
                    //summaryPriceOfBiomaterials -
                    summaryPriceOfBiomaterials -= currentPrice;
                }
                onChange();
            });
            
            //Выбор исследований
            var summaryPriceOfAnalizes = 0;
            //Подсчет суммы по всем исследованиям
            jQuery('.full_description.list-issledovaniy .item_object').each(function(){
                summaryPriceOfAnalizes += parseFloat(jQuery(this).find('div:eq(4)').text().replace(' ', '').replace(',', '.'));
            });
            
            //При удалении или добавлении(заново) анализа
            jQuery('.full_description.list-issledovaniy input:checkbox').click(function() {
                var currentPrice = parseFloat(jQuery(this).attr('price').replace(' ', '').replace(',', '.'));
                if (this.checked) {
                    //Снимаем анализ из списка
                    summaryPriceOfAnalizes -= currentPrice;
                }
                else {
                    //Добавляем анализ к списку
                    summaryPriceOfAnalizes += currentPrice;
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
            var biomaterialNaDomu = 0;
            jQuery('.full_description.vyberite-platnuy-uslugu input:checkbox').click(function(){
                var currentPrice = parseFloat(jQuery(this).attr('title').replace(' ', '').replace(',', '.'));
                if (this.checked) {
                    //summaryPriceOfBiomaterials +
                    biomaterialNaDomu += currentPrice;
                }
                else {
                    //summaryPriceOfBiomaterials -
                    biomaterialNaDomu -= currentPrice;
                }
                onChange();
            });
            
            var onChange = function(){
                var generalSumma = summaryPriceOfBiomaterials + summaryPriceOfAnalizes + biomaterialNaDomu;
                jQuery('.full_description.stoimost-zakaza .inner div:eq(0)').html('Сумма: ' + generalSumma + ' руб.');
                jQuery('.full_description.stoimost-zakaza .inner div:eq(1)').html('Скидка: ' + skidka + '%');
                
                if(skidka == 0) jQuery('.full_description.stoimost-zakaza .inner div:eq(2)').html('Сумма: ' + generalSumma + ' руб.');
                else{
                    var generalSumma = parseFloat(generalSumma);
                    var summary = generalSumma - ((generalSumma/100.00) * skidka);
                    jQuery('.full_description.stoimost-zakaza .inner div:eq(2)').html('Сумма: ' + summary + ' руб.');
                }
            }
            
            onChange();
        }
        else
            ifIsNotCookie();
    });
</script>

