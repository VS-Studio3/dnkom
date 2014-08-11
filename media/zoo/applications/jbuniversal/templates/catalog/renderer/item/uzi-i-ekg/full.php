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


<div id="full_uzi_item">

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

    <div class="related_items">
        <?php if ($this->renderPosition('related2')): ?>
            <?php echo $this->renderPosition('related2'); ?>
        <?php endif; ?>
    </div>

</div>