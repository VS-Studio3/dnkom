<?php
/**
 * @version    $Id: index.php 20196 2011-01-09 02:40:25Z ian $
 * @package    Joomla.Site
 * @copyright  Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/* The following line gets the application object for things like displaying the site name */
$app = JFactory::getApplication();
$config = JFactory::getConfig();
$menu = $app->getMenu();
$lang = JFactory::getLanguage();
$option = $_GET['option'];
$view = $_GET['view'];
$task = $_GET['task'];
  $itemid = JRequest::getVar('Itemid');
  $pmenu = $app->getMenu()->getActive();
  $pageclass = '';

  if (is_object($pmenu)) {
  	$pageclass = $pmenu->params->get('pageclass_sfx');
  }
?>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://digitalbush.com/wp-content/uploads/2013/01/jquery.maskedinput-1.3.1.min_.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <jdoc:include type="head" />
        
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/style.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/owl-carousel/owl.carousel.css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/owl-carousel/owl.theme.css" />
<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/owl-carousel/owl.carousel.js"></script>
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/jquery.fancybox.css" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/fancyBox/source/jquery.fancybox.pack.js"></script>


<script src="<?php echo $this->baseurl ?>/templates/dnkom/js/scripts.js" type="text/javascript"></script>
<script src="<?php echo $this->baseurl ?>/templates/dnkom/js/underscore.js" type="text/javascript"></script>
</head>
<body  id="<?php echo $pageclass ? htmlspecialchars($pageclass) : 'default'; ?>" class="<?php echo $option.' '.$task. ' '. $view ; ?>">

<div class="for_header">
<div id="wrapper">
    <div id="header" class="header">
        <div class="logos-area">
            <a href="<?php echo $this->baseurl ?>" class="logo">
                <jdoc:include type="modules" name="header_logo"/>
            </a>
        </div>
        <jdoc:include type="modules" name="header_content" style="xhtml"/>
    </div><!-- #header-->

    <div id="middle">
        <div id="container">
            <div id="content" class="content">
                <div id="contact_form">
                    <jdoc:include type="modules" name="order_form_module" style="xhtml"/>
                </div>
                <jdoc:include type="modules" name="top-content" style="xhtml"/>
                <jdoc:include type="message" />
                <jdoc:include type="modules" name="bottom-component" style="xhtml"/>

            </div><!-- #content-->
        </div><!-- #container-->

    </div><!-- #middle-->
</div><!-- #wrapper -->
</div>
<div class="width_100_monitor">
    <div class="container for_search">
        <jdoc:include type="modules" name="search_module" style="xhtml"/>
        <a href="#" class="results_of_analizes">Результаты анализов</a>
    </div>
    <div class="menu_container">
        <div id="top_menu">
            <jdoc:include type="modules" name="menu_module" style="xhtml"/>
        </div>
        <div class="submenu_container"></div>
    </div>
</div>
<div id="for_all_pages">


    <div class="container">
        <?php if (($option == 'com_zoo' && $task == 'category') || ($option == 'com_zoo' && $task == 'filter')): ?>
        <jdoc:include type="modules" name="sort-mod" style="xhtml"/>
        <?php endif; ?>
        <jdoc:include type="component" />
        

        <?php if ($option == 'com_content' && $view == 'article') : ?>
            <jdoc:include type="modules" name="link-news" style="xhtml"/>
        <?php endif; ?>


        <?php if ($this->countModules( 'left_block_pacient' )) : ?>
            <div class="left_block">
                <jdoc:include type="modules" name="left_block_pacient" style="xhtml"/>
                <jdoc:include type="modules" name="left_block_partners" style="xhtml"/>
            </div>
        <?php endif; ?>
        <!--Блок слайдера-->
        <?php if ($this->countModules( 'slider_module' )) : ?>
            <div class="slider">
                <div class="relative">
                    <jdoc:include type="modules" name="slider_module" style="xhtml"/>
                </div>
            </div>
        <?php endif; ?>
        <div style="clear: both"></div>
    </div>

    <!--Правый блок по ссылке знаменитости -->
    <?php if ($this->countModules( 'right_menu' )) : ?>
        <div id="right_menu">
            <jdoc:include type="modules" name="right_menu" style="xhtml"/>
            <jdoc:include type="modules" name="banners" style="xhtml"/>
        </div>
    <?php endif; ?>
    <!--END-->
</div>
<div class="both"></div>
<?php if ($this->countModules( 'slider_module' )) : ?>
    <div class="back_news">
        <div class="container ">
            <div class="news">
                <jdoc:include type="modules" name="news_module" style="xhtml"/>
                <div class="all_news">
                    <jdoc:include type="modules" name="all_news_module" style="xhtml"/>
                </div>
            </div>

            <div class="materials">
                <jdoc:include type="modules" name="materials_module" style="xhtml"/>
                <div class="all_news">
                    <jdoc:include type="modules" name="all_materials_module" style="xhtml"/>
                </div>
            </div>
            <div style="clear: both"></div>
        </div>
    </div>
<?php endif; ?>
<?php if ($this->countModules( 'description_module' )) : ?>
    <div class="container only_text">
        <jdoc:include type="modules" name="description_module" style="xhtml"/>
    </div>
	<?php endif; ?>
    <div id="footer" class="footer">
		<jdoc:include type="modules" name="footer" style="xhtml"/>
    <div class="container">
        <div class="footer_menu">
            <jdoc:include type="modules" name="menu_analizi" style="xhtml"/>
        </div>
        <div class="footer_menu">
            <jdoc:include type="modules" name="menu_kompleksi" style="xhtml"/>
        </div>
        <div class="footer_menu">
            <jdoc:include type="modules" name="menu_polovie" style="xhtml"/>
        </div>
        <div class="footer_menu last">
            <jdoc:include type="modules" name="social-tabs" style="xhtml"/>
        </div>
    </div>

    <div class="container downs_footer">
        <div id="footer_logo">
            <jdoc:include type="modules" name="footer_logo" style="xhtml"/>
        </div>

        <div class="for_footer">
            <jdoc:include type="modules" name="footer_contacts" style="xhtml"/>
        </div>

        <div class="social_icon">
            <jdoc:include type="modules" name="footer_social_buttons" style="xhtml"/>
        </div>
    </div>

</div>

<div style="display:none;">
    <div id="order-form">
    	<h3></h3>
		<jdoc:include type="modules" name="order-product-form" style="xhtml"/>
	</div>
</div>


</body>
</html>
