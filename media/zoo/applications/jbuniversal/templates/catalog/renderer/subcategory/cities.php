<?php
/**
 * JBZoo App is universal Joomla CCK, application for YooTheme Zoo component
 *
 * @package     jbzoo
 * @version     2.x Pro
 * @author      JBZoo App http://jbzoo.com
 * @copyright   Copyright (C) JBZoo.com,  All rights reserved.
 * @license     http://jbzoo.com/license-pro.php JBZoo Licence
 * @coder       Denis Smetannikov <denis@jbzoo.com>
 */

// no direct access
defined('_JEXEC') or die('Restricted access');


$this->app->jbdebug->mark('layout::subcategory(' . $vars['object']->id . ')::start');

// set vars
$subcategory = $vars['object'];
$params = $subcategory->getParams('site');
$link = $this->app->route->category($subcategory);
$task = $this->app->jbrequest->get('task', 'category');

// teaser content
$text = $params->get('content.category_teaser_text', '');
$imageAlign = $params->get('template.subcategory_teaser_image_align', 'left');

// items
$itemsOrder = $vars['params']->get('config.item_order', 'none');
$maxItems = $vars['params']->get('template.subcategory_items_count', 5);
$showCount = $vars['params']->get('template.subcategory_items_count_show', 1);

$items = array();
$countItems = 0;
if ($showCount || $maxItems != "0" || $maxItems == "-1") {
    $items = JBModelCategory::model()->getItemsByCategory($subcategory->application_id, $subcategory->id, $itemsOrder, $maxItems);
    $countItems = $subcategory->itemCount();
}

$image = $this->app->jbimage->get('category_teaser_image', $params);

?>
    <script type="text/javascript">
        var coordsObjects = [];
    </script>

    <div class="subcategory subcategory-<?php echo $subcategory->alias; ?>">

        <?php if ($vars['params']->get('template.subcategory_teaser_image', 1) && $image['src']) : ?>
            <div class="subcategory-image align-<?php echo $imageAlign; ?>">
                <a href="<?php echo $link; ?>" title="<?php echo $subcategory->name; ?>"><img
                        src="<?php echo $image['src']; ?>" <?php echo $image['width_height']; ?>
                        alt="<?php echo $subcategory->name; ?>"
                        title="<?php echo $subcategory->name; ?>"
                        /></a>
            </div>
        <?php endif; ?>


        <h1 class="subcategory-title">
            <?php echo $subcategory->name; ?>
        </h1>

        <div class="show_all_territories">
            <button>Показать все точки на карте</button>
        </div>

        <?php if (in_array($task, array('category', 'frontpage'))) : ?>
            <?php if ($maxItems != 0 && count($items) > 0) : ?>
                <div class="clear clr"></div>
                <div class="subcategory-items">
                    <?php
                    foreach ($items as $item) {
                        echo $this->app->jblayout->renderItem($item, 'subcategory_item');
                    }
                    ?>
                </div>
            <?php endif; ?>
        <?php endif; ?>

        <div class="clear clr"></div>
    </div>


    <script type="text/javascript">

        window.temporaryCoordsObject = window.coordsObjects.slice();

        function initYMap() {
            var myMap = new ymaps.Map('map', {
                center: window.temporaryCoordsObject[0].coords,
                zoom: 9,
                behaviors: ['default', 'scrollZoom']
            });
            var myPoints = window.temporaryCoordsObject;

            // Создадим элемент управления "Пробки".
            var trafficControl = new ymaps.control.TrafficControl({ state: {
                // Отображаются пробки "Сейчас".
                providerKey: 'traffic#actual',
                // Начинаем сразу показывать пробки на карте.
                trafficShown: true
            }});

            // Добавим контрол на карту.
            myMap.controls.add(trafficControl);
            // Получим ссылку на провайдер пробок "Сейчас" и включим показ инфоточек.
            trafficControl.getProvider('traffic#actual').state.set('infoLayerShown', true);

            myCollection = new ymaps.GeoObjectCollection();

            for (var i = 0, l = myPoints.length; i < l; i++) {
                var point = myPoints[i];
                myCollection.add(new ymaps.Placemark(
                    point.coords, {
                        balloonContentBody: point.text
                    }
                ));
            }

            myMap.geoObjects.add(myCollection);
            myMap.controls.add('zoomControl').add('mapTools');
        }

        ymaps.ready(initYMap);

        $j = jQuery.noConflict();
        $j(function () {

            $j('.show_all_territories button').click(function () {
                $j('#map').html('');
                window.temporaryCoordsObject = [];
                window.temporaryCoordsObject = window.coordsObjects.slice();
                ymaps.ready(initYMap);
            });

            $j('a.show_map').click(function () {
                $j('#map').html('');
                var textString = $j(this).attr('title');
                var index = null;
                for (var i = 0; i < window.coordsObjects.length; i++) {
                    if (window.coordsObjects[i].text == textString) {
                        index = i;
                        break;
                    }
                }
                window.temporaryCoordsObject = [];
                window.temporaryCoordsObject.push(window.coordsObjects[index]);
                ymaps.ready(initYMap);
            });
        });

    </script>
    <div id="map" style="width:100%;height:430px;"></div>
<?php if ($vars['params']->get('template.subcategory_teaser_text', 1) && strlen($text) > 0) : ?>
    <div class="subcategory-description"><?php echo $text; ?></div>
<?php endif; ?>
<?php
$this->app->jbdebug->mark('layout::subcategory(' . $vars['object']->id . ')::finish');
