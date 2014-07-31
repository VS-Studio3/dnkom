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


$this->app->jbdebug->mark('layout::category::start');

// set vars
$category = $vars['object'];
$title = $this->app->string->trim($vars['params']->get('content.category_title', ''));
$subTitle = $this->app->string->trim($vars['params']->get('content.category_subtitle', ''));
$image = $this->app->jbimage->get('category_image', $vars['params']);

$title = $title ? $title : $category->name;

if ((int) $vars['params']->get('template.category_show', 1)) :
    ?>
    <div id="category_list_parameters"></div>
    <div class="category rborder alias-<?php echo $category->alias; ?>">

        <?php if ((int) $vars['params']->get('template.category_title_show', 1)) : ?>
            <h1 class="title"><?php echo $title; ?></h1>
        <?php endif; ?>

        <div class="navigation_and_sort">
            <div class="sort">Сортировать по коду</div>
        </div>

        <?php if ((int) $vars['params']->get('template.category_subtitle', 1) && !empty($subTitle)) : ?>
            <h2 class="subtitle"><?php echo $subTitle; ?></h2>
        <?php endif; ?>

        <?php if ((int) $vars['params']->get('template.category_image', 1) && $image['src']) : ?>
            <div class="image-full align-<?php echo $vars['params']->get('template.category_image_align', 'left'); ?>">
                <img src="<?php echo $image['src']; ?>" <?php echo $image['width_height']; ?>
                     title="<?php echo $category->name; ?>" alt="<?php echo $category->name; ?>"/>
            </div>
        <?php endif; ?>

        <?php if ((int) $vars['params']->get('template.category_teaser_text', 1) && $vars['params']->get('content.category_teaser_text', '')) : ?>
            <div class="description-teaser">
                <?php echo $vars['params']->get('content.category_teaser_text', ''); ?>
            </div>
        <?php endif; ?>

        <?php if ((int) $vars['params']->get('template.category_text', 1) && $category->description) : ?>
            <div class="description-full"><?php echo $category->getText($category->description); ?></div>
        <?php endif; ?>

        <div class="clr clear"></div>
    </div>

<?php else: ?>
    <div class="category alias-<?php echo $category->alias; ?>">
        <?php if ((int) $vars['params']->get('template.category_title_show', 1)) : ?>
            <h1 class="title"><?php echo $title; ?></h1>
        <?php endif; ?>
    </div>
<?php endif; ?>

<div class="full_description">
    <div>Код</div>
    <div>Наименование</div>
    <div>Производитель реактивов</div>
    <div>Срок исполнения</div>
    <div>Цена в руб.</div>
    <div>Добавить в калькулятор</div>
</div>

<?php
$this->app->jbdebug->mark('layout::category::finish');
