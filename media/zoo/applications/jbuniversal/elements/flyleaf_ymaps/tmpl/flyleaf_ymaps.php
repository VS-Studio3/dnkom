<? 
// элемент ymaps написан worstinme@ya.ru 
// спасибо можно отправить на 
// WM R138753723227 или про ЯД 41001613153284 
// ЯД пополняется только с других кошельков или счетов, пополнение через терминал невозможно

// в ближайшее время возможно выложу обновленную версию с дополнительными возможностями


// no direct access
defined('_JEXEC') or die('Restricted access');

$this->app->system->document->addScript("http://api-maps.yandex.ru/2.0/?coordorder=longlat&load=package.full&mode=debug&lang=ru-RU&onload=init");
?>
<div id="<? print $maps_id; ?>" style="width: <? print $width; ?>; height: <? print $height; ?>"></div>

<!-- Создано с помощью сервиса Яндекса Народная карта -->
<!-- Элемент для  ZOO от flyleaf.su -->
<script type="text/javascript">
function init () {
	
	var myMap = new ymaps.Map("<? print $maps_id; ?>", {center: [<? print $location; ?>],zoom: <? print $zoom; ?>,type: "yandex#<? print $map_type; ?>"});
	<? if ($showcontrol == 1) : ?>
	myMap.controls.add("zoomControl").add("mapTools").add(new ymaps.control.TypeSelector(["yandex#map", "yandex#satellite", "yandex#hybrid", "yandex#publicMap"]));
	<? endif; ?>
	myMap.geoObjects.add(new ymaps.Placemark([<? print $location; ?>], {balloonContent: "<? print $marker_text; ?>"}, {preset: "twirl#lightblueDotIcon"}));
};
</script>


