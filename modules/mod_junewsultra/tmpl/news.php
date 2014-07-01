<?php
/**
* @package Joomla! 2.5
* @version 4.x
* @author 2008-2012 (c)  Denys Nosov (aka Dutch)
* @author web-site: www.joomla-ua.org
* @copyright This module is licensed under a Creative Commons Attribution-Noncommercial-No Derivative Works 3.0 License.
**/

/******************* PARAMS (update 20.11.2012) ************
*
* $params->get('moduleclass_sfx') - module class suffix
*
* $item->link           - display link
* $item->title          - display title
* $item->title_alt      - for attribute title and alt
*
* $item->cattitle       - display category title
*
* $item->image          - display image
* $item->imagesource    - display raw image source
*
* $item->date           - display date & time
* $item->df_d           - display day
* $item->df_m           - display mounth
* $item->df_y           - display year
*
* $item->author         - display author
*
* $item->hits           - display Hits
*
* $item->rating         - display Rating
* $item->rating_count   - display Rating Count
*
* $item->introtext      - display introtex
* $item->fulltext       - display fulltext
* $item->readmore       - display 'Read more...'
* $item->rmtext         - display 'Read more...' text
*
* $item->commentslink   - display JComments link to comments
* $item->commentstext   - display JComments text
* $item->commentscount  - display count comments for JComments
*
************************************************************/

// no direct access
defined('_JEXEC') or die('Restricted access');

?>
<div class="junewsultra <?php echo $params->get('moduleclass_sfx'); ?>">
<?php foreach ($list as $item) :  ?>

    <?php
        $currentMonthNumber = substr($item->date, 3, 2);

        $months = array('01'=>' января ', '02'=>' февраля ', '03'=>' марта ', '04'=>' апреля ', '05'=>' мая ',
            '06'=>' июня ', '07'=>' июля ', '08'=>' августа ', '09'=>' сентября ', '10'=>' октября ',
            '11'=>' ноября ', '12'=>' декабря ');

        $currentlyDate = substr_replace($item->date, $months[$currentMonthNumber], 2, 4);
    ?>

    <div class="block_news">
        <?php if($params->get('pik')): ?>
            <?php echo $item->image; ?>
        <?php endif; ?>

        <div style="float:left; width: 380px;">
            <p>
            <span>
                    <?php echo $currentlyDate; ?>
            </span>
                <a href="<?php echo $item->link; ?>">
                        <?php echo $item->introtext; ?>
                </a>
            </p>
            <p>
                <?php if($params->get('show_title')): ?>
                    <?php echo $item->title; ?>
                <?php endif; ?>
            </p>
        </div>

    </div>

<?php endforeach; ?>
</div>