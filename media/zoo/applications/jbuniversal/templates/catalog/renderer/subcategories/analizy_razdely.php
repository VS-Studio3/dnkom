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

echo '<div id="analizy_razdely"><p>Сортировать разделы по алфавиту:</p><div id="alphabet"></div>'
. '<div id="analiz_categories"></div>';

$this->app->jbdebug->mark('layout::subcategories::start');

// remove empty categories
if ($vars['params']->get('template.subcategory_items', 0)) {

    $objects = array();
    foreach ($vars['objects'] as $category) {
        if ($category->itemCount()) {
            $objects[] = $category;
        }
    }

} else {
    $objects = $vars['objects'];
}


echo $this->columns('subcategory', $objects);


$this->app->jbdebug->mark('layout::subcategories::finish');

echo '</div>';