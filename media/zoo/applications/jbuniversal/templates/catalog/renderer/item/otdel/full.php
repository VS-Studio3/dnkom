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

	 <?php if($this->renderPosition('right_menu')): ?>
	 	<div id="right_menu">
        <?php echo $this->renderPosition('right_menu'); ?>
        </div>
    <?php endif; ?>


 <?php if($this->renderPosition('title')): ?>
        <h1 class="title"><?php echo $this->renderPosition('title'); ?></h1>
    <?php endif; ?>

 <?php if($this->renderPosition('address')): ?>
        <h2 class="address"><?php echo $this->renderPosition('address'); ?></h2>
    <?php endif; ?>


    <div class="table-grafic">
    	<ul>
    		<li class="row1">
    			<table>
    				<tr>
    					<td>График взятия биоматериала</td>
    					<td>пн-пт</td>
    					<td>сб-вс</td>
    				</tr>
    			</table>
    		</li>
    		<li class="row2">
    			<table>
    				<tr>
    					<td>кровь/ моча/ кал</td>
    					<td><?php echo $this->renderPosition('grafik-mocha-kal-pn-pt'); ?></td>
    					<td><?php echo $this->renderPosition('grafik-mazki-pn-pt'); ?></td>
    				</tr>
    				<tr>
    					<td>мазки</td>
    					<td><?php echo $this->renderPosition('grafik-mocha-kal-sb-vs'); ?></td>
    					<td><?php echo $this->renderPosition('grafik-mazki-sb-vs'); ?></td>
    				</tr>
    			</table>
    		</li>
    		<li class="row3">
    			<table>
    				<tr>
    					<td>ВЫДАЧА РЕЗУЛЬТАТОВ</td>
    					<td><?php echo $this->renderPosition('vydacha-pn-pt'); ?></td>
    					<td><?php echo $this->renderPosition('vydacha-sb-vs'); ?></td>
    				</tr>
    			</table>
    		</li>
    	</ul>
    </div>

<ul class="tab-links">
	<li><a href="#yamap-tab">Яндекс карта</a></li>
	<li><a href="#schema-tab">Схема проезда</a></li>
</ul>
<div class="tabs-container">
	<div id="yamap-tab"><?php echo $this->renderPosition('ymaps'); ?></div>
	<div id="schema-tab"><?php echo $this->renderPosition('schema'); ?></div>
</div>

<?php echo $this->renderPosition('descr'); ?>


<?php echo $this->renderPosition('photo-otdel'); ?>


<?php echo $this->renderPosition('how-to-go'); ?>