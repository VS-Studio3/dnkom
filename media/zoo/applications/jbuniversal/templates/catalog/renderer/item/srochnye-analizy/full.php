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


<div id="srochnie_analizy">

    <?php if ($this->renderPosition('title')): ?>
        <div class="title">
            <?php echo $this->renderPosition('title'); ?>
        </div>
    <?php endif; ?>

    <div class="description">
        <?php if ($this->renderPosition('opisanie')): ?>
            <?php echo $this->renderPosition('opisanie'); ?>
        <?php endif; ?>
    </div>

    <div class="biomaterial_title">Прием биоматериала производится в следующих лабораторных отделениях:</div>
    <div class="related_items">
        <?php if ($this->renderPosition('related1')): ?>
            <?php echo $this->renderPosition('related1'); ?>
        <?php endif; ?>
    </div>

    <div class="full_description">
        <div>Код</div>
        <div>Наименование</div>
        <div>Производитель реактивов</div>
        <div>Срок исполнения</div>
        <div>Цена в руб.</div>

        <div class="inner">
            <div class="general_blood">Общий анализ крови</div>
			<div class="bottom">
            <?php if ($this->renderPosition('related2')): ?>
                <?php echo $this->renderPosition('related2'); ?>
            <?php endif; ?>
            </div>
            
            <div class="general_blood">Биохимия</div>
			<div class="bottom">
            <?php if ($this->renderPosition('related3')): ?>
                <?php echo $this->renderPosition('related3'); ?>
            <?php endif; ?>
            </div>
        </div>
    </div>

</div>