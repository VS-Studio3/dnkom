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

<div class="otdel">

    <h2><span class="item-title"><?php echo $this->renderPosition('title'); ?></span></h2>

    <div class="grafik_priema">
        <div>
            <span>График приема биоматериала</span><span>пн-пт</span><span>сб-вс</span>
        </div>
        <span><?php echo $this->renderPosition('srok_vipolneniya'); ?></span>
        <span><?php echo $this->renderPosition('grafik_pn_pt'); ?></span>
        <span><?php echo $this->renderPosition('grafik_sb-vs'); ?></span>
    </div>

    <?php if($this->renderPosition('uzi')): ?>
        <div class="uzi"></div>
    <?php endif; ?>

    <?php if($this->renderPosition('ekg')): ?>
        <div class="ekg"></div>
    <?php endif; ?>

    <?php if($this->renderPosition('ginekolog')): ?>
        <div class="ginekolog"></div>
    <?php endif; ?>

    <?php
        $script = htmlspecialchars($this->renderPosition('yandex'));
        $coordsPosition = strpos($script, '{center: [');

        $startCoords = $coordsPosition + 10;
        $endCoords = null;
        for($i = $startCoords; $i<strlen($script); $i++){
            if($script[$i] == ']'){
                $endCoords = $i;
                break;
            }
        }
        $coordsString =  substr($script, $startCoords, $endCoords - $startCoords);
        //Координаты зоны
        $firstNumber = (float)substr($coordsString, 0, strpos($coordsString, ','));
        $secondNumber = (float)substr($coordsString, strpos($coordsString, ',') + 1);

        $titleString = htmlspecialchars($this->renderPosition('title'));
        $prepareTitle = substr($titleString, strpos($titleString, 'title') + 12);
        //Title -> text in objects
        $currentTitle =  substr($prepareTitle, 0, strpos($prepareTitle, '&quot;'));
    ?>

    <script type="text/javascript">
        coordsObjects.push(
            {
                coords : [<?php echo $firstNumber; ?>, <?php echo $secondNumber; ?>],
                text : "<?php echo $currentTitle; ?>"
            }
        );
    </script>
    <a class="show_map" title="<?php echo $currentTitle; ?>">Показать на карте</a>

</div>

<div class="clear clr"></div>

