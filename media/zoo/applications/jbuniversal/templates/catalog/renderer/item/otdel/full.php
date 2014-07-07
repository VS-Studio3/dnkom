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
<script type="text/javascript">

    jQuery(function () {
        jQuery('.tab-links li.yandex a').addClass('activeButton');
        jQuery('#schema-tab').hide();

        jQuery('.tab-links li a').click(function(){
            jQuery('.tab-links li a').removeClass('activeButton');
            jQuery(this).addClass('activeButton');

            if(jQuery(this).attr('href') == '#yamap-tab'){
                jQuery('#yamap-tab').show();
                jQuery('#schema-tab').hide();
            }else{
                jQuery('#yamap-tab').hide();
                jQuery('#schema-tab').show();
            }
        });

        jQuery("#owl-example").owlCarousel({
            items : 3
        });

        jQuery('.how-to-go img').each(function(){
            jQuery(this).before('<div class="btn unactive">' + jQuery(this).attr('title') + '</div>');
            jQuery(this).wrap('<div>');
        });

        jQuery('.how-to-go img').each(function(){
            jQuery(this).parent().slideUp();
        });

        jQuery('.how-to-go .btn + div').css('padding-left', jQuery('.container').offset().left.toString() + 'px');

        jQuery('.how-to-go .btn').click(function(){
            if(jQuery(this).hasClass('active')){
                jQuery(this).removeClass('active').addClass('unactive');
                jQuery(this).next().slideUp(500);
            }else{
                jQuery(this).removeClass('unactive').addClass('active');
                jQuery(this).next().slideDown(500);
            }
        });

        jQuery('.how-to-go').appendTo(jQuery('.container.only_text'));
    });
</script>

    <?php if ($this->renderPosition('right_menu')): ?>
        <div id="right_menu">
            <?php echo $this->renderPosition('right_menu'); ?>
        </div>
    <?php endif; ?>


    <?php if ($this->renderPosition('title')): ?>
        <h1 class="title"><?php echo $this->renderPosition('title'); ?></h1>
    <?php endif; ?>

    <?php if ($this->renderPosition('address')): ?>
        <h2 class="address"><?php echo $this->renderPosition('address'); ?></h2>
    <?php endif; ?>


    <div class="table-grafic">
        <ul>
            <li class="row1">
                <table>
                    <tr class="first_tr">
                        <td class="first_td">График взятия биоматериала</td>
                        <td class="second_td">пн-пт</td>
                        <td class="third_td">сб-вс</td>
                    </tr>
                </table>
            </li>
            <li class="row2 relative">
                <table class="second_table">
                    <tr class="second_tr_first">
                        <td class="first_td">кровь/ моча/ кал</td>
                        <td class="second_td"><?php echo $this->renderPosition('grafik-mocha-kal-pn-pt'); ?></td>
                        <td class="third_td"><?php echo $this->renderPosition('grafik-mazki-pn-pt'); ?></td>
                    </tr>
                    <hr class="line">
                    <tr class="second_tr">
                        <td class="first_td">мазки</td>
                        <td class="second_td"><?php echo $this->renderPosition('grafik-mocha-kal-sb-vs'); ?></td>
                        <td class="third_td"> <?php echo $this->renderPosition('grafik-mazki-sb-vs'); ?></td>
                    </tr>
                </table>
            </li>
            <li class="row3">
                <table>
                    <tr class="third_tr">
                        <td class="first_td">ВЫДАЧА РЕЗУЛЬТАТОВ</td>
                        <td class="second_td"><?php echo $this->renderPosition('vydacha-pn-pt'); ?></td>
                        <td class="third_td"><?php echo $this->renderPosition('vydacha-sb-vs'); ?></td>
                    </tr>
                </table>
            </li>
        </ul>
    </div>

    <ul class="tab-links btn_two">
        <li class="yandex"><a href="#yamap-tab">Яндекс карта</a></li>
        <li class="proezd"><a href="#schema-tab">Схема проезда</a></li>
    </ul>
    <div class="tabs-container">
        <div id="yamap-tab"><?php echo $this->renderPosition('ymaps'); ?></div>
        <div id="schema-tab"><?php echo $this->renderPosition('schema'); ?></div>
    </div>

    <?php echo $this->renderPosition('descr'); ?>

    <div id="owl-example" class="owl-carousel">
        <?php echo $this->renderPosition('photo-otdel'); ?>
    </div>

    <div class="how-to-go">
        <?php echo $this->renderPosition('how-to-go'); ?>
    </div>
