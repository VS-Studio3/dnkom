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


$align = $this->app->jbitem->getMediaAlign($item, $layout);
?>

<div class="item_object">    
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
                    <input type="checkbox" id="calculator">
                </div>
            </div>
