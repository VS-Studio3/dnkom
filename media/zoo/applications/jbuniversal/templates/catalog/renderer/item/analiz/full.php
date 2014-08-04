<?php
/**
 * JBZoo is universal CCK based Joomla! CMS and YooTheme Zoo component
 * @category   JBZoo
 * @author     smet.denis <admin@joomla-book.ru>
 * @copyright  Copyright (c) 2009-2012, Joomla-book.ru
 * @license    http://joomla-book.ru/info/disclaimer
 * @link       http://joomla-book.ru/projects/jbzoo JBZoo project page
 */
defined('_JEXEC') or die('Restricted access');
?>
<div id="category_list_parameters"></div>
<div id="full_analiz">
    <h1><?php echo $this->renderPosition('title'); ?></h1>
    <a class="back" href="<?php echo JURI::base(); ?>index.php/2014-06-25-06-27-00/2014-06-25-06-37-56">Вернуться
        назад</a>

    <div class="full_description">
        <div>Код</div>
        <div>Наименование</div>
        <div>Производитель реактивов</div>
        <div>Срок исполнения</div>
        <div>Цена в руб.</div>
        <div>Добавить в калькулятор</div>

        <div class="inner">
            <div class="item_object" itemid="<?php echo $item->id; ?>">    
                <div>
                    <?php if ($this->renderPosition('code')): ?>
                        <?php echo $this->renderPosition('code'); ?>
                    <?php endif; ?>
                </div>

                <div>
                    <?php if ($this->renderPosition('title')): ?>
                        <?php echo $this->renderPosition('title'); ?>
                    <?php endif; ?>  
                </div>

                <div>
                    <?php if ($this->renderPosition('proizvoditel')): ?>
                        <?php echo $this->renderPosition('proizvoditel'); ?>
                    <?php endif; ?>      
                </div>

                <div>
                    <?php if ($this->renderPosition('srok')): ?>
                        <?php echo $this->renderPosition('srok'); ?>
                    <?php endif; ?>       
                </div>

                <div>
                    <?php if ($this->renderPosition('price')): ?>
                        <?php echo $this->renderPosition('price'); ?>
                    <?php endif; ?>      
                </div>

                <div>
                    <input type="checkbox" id="calculator" title="<?php echo $this->renderPosition('price'); ?>">
                </div>
            </div>
        </div>
    </div>

    <?php if ($this->checkPosition('biomaterialy')) : ?>
        <div class="biomaterialy">
            <div>Взятие биоматериала в руб.:</div><div>Цена:</div>
            <div class="list"><?php echo $this->renderPosition('biomaterialy'); ?></div>
            <div class="desc"><span class="required"></span>Оплачивается отдельно</div>
        </div>
    <?php endif; ?>

    <div class="add-to-calculator">Добавить в калькулятор</div>
    <div style="clear: both"></div>
    <button class="opisaniye">Описание исследования</button>
    <button class="podgotovka">Подготовка к иследованию</button>
    <div class="opisaniye_text">
        <?php if ($this->renderPosition('description_issledovalie')): ?>
            <?php echo $this->renderPosition('description_issledovalie'); ?>
        <?php endif; ?>   
    </div>
    <div class="podgotovka_text">
        <?php if ($this->renderPosition('podgotovka')): ?>
            <?php echo $this->renderPosition('podgotovka'); ?>
        <?php endif; ?>  
    </div>
</div>

<div class="others">Другие анализы РАЗДЕЛА</div>

<div class="full_description">
    <div>Код</div>
    <div>Наименование</div>
    <div>Производитель реактивов</div>
    <div>Срок исполнения</div>
    <div>Цена в руб.</div>
    <div>Добавить в калькулятор</div>

    <?php echo $this->renderPosition('related2'); ?>
</div>

<script type="text/javascript">
    jQuery(function() {
        var biomaterialList = jQuery('.biomaterialy .list').text().split(',');
        jQuery('.biomaterialy .list').empty();
        for (var i = 0; i < biomaterialList.length; i++) {
            var separates = biomaterialList[i].split('-');
            jQuery('.biomaterialy .list').append('<div class="lines_bottom"><div class="material">' + separates[0] +
                    '</div><div>' +
                    separates[1] + '<span class="required"></span>руб.</div></div>');
        }

        jQuery('.podgotovka_text').hide();

        jQuery('.opisaniye').click(function() {
            jQuery('.opisaniye_text').show();
            jQuery('.podgotovka_text').hide();
        });

        jQuery('.podgotovka').click(function() {
            jQuery('.opisaniye_text').hide();
            jQuery('.podgotovka_text').show();
        });
    });
</script>