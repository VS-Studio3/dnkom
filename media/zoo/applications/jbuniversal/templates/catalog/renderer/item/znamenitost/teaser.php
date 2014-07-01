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


$imageAlign = $item->params->get('template.item_teaser_image_align', 'left');
?>

<div class="star_first">

    <?php if ($this->checkPosition('name')) { ?>
    <div class="job"><?php echo $this->renderPosition('name');?></div>
<?php } ?>
    <?php if ($this->checkPosition('job')) { ?>
    <div class="job"><?php echo $this->renderPosition('job');?></div>
<?php } ?>
    <?php if ($this->checkPosition('image')) { ?>
    <div class="image">
        <?php echo $this->renderPosition('image');?>
    </div>
<?php } ?>

</div>

<div class="star_second">
    <?php if ($this->checkPosition('title')) {?>
	<h3 class="title"><?php echo $this->renderPosition('title');?></h3>
<?php } ?>
    <?php if ($this->checkPosition('text')) { ?>
    <div class="text"><?php echo $this->renderPosition('text');?></div>
<?php } ?>
</div>

<div class="clr"></div>
