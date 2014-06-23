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
$config = & JFactory::getConfig();
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
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<jdoc:include type="head" />
    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic|PT+Sans+Caption:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/style.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/jquery.fancybox.css" type="text/css" />

</head>
<body  id="<?php echo $pageclass ? htmlspecialchars($pageclass) : 'default'; ?>" class="<?php echo $option.' '.$task. ' '. $view ; ?>">
<img src="<?php echo $this->baseurl
?>/templates/<?php echo $this->template ?>/images/lines.png" alt="dnkom" class="lines"/>
<div id="wrapper">
    <div id="header" class="header">
        <div class="logos-area">
            <a href="<?php echo $this->baseurl ?>" class="logo"><img src="<?php echo $this->baseurl
                ?>/templates/<?php echo $this->template ?>/images/logotypes.png" alt="dnkom" /></a>
        </div>
        <a href="#" class="header_link">Лицензия министерства здравоохранения № JIO-77-01-006636 <br>
            Международный контроль качества лабороторных услуг EQAS</a>
        <div class="info_block">
            <p class="numder_phone tel"><span class="icon_phone"></span>
                <span>+7 495</span> 689 77 04
                <span class="slesh">&nbsp;/&nbsp;</span>
                <span>+7 495</span> 689 69 31
            </p>
            <p class="adress street-address"><span class="icon_home"></span> ул. Тверская, дом 6, стр. 6</p>
            <p class="email"><span class="icon_email"></span><a href="#">info@dnk-diagnostika.ru</a></p>
            <p class="calls"><a href="#">ЗАКАЗАТЬ ОБРАТНЫЙ ЗВОНОК</a></p>
        </div>
        <jdoc:include type="modules" name="header" style="xhtml"/>
    </div><!-- #header-->

    <div id="middle">
        <div id="container">
            <div id="content" class="content">
                <jdoc:include type="modules" name="top-content" style="xhtml"/>
                <jdoc:include type="message" />
                <jdoc:include type="component" />
                <jdoc:include type="modules" name="bottom-component" style="xhtml"/>

            </div><!-- #content-->
        </div><!-- #container-->

    </div><!-- #middle-->
</div><!-- #wrapper -->



<div class="width_100_monitor">
    <div class="container for_search">
        <form class="search" method="" action="">
            <input type="text" placeholder="Поиск по сайту:">
            <a href="#" class="search_link"><span class="icon_search"></span>Начать поиск</a>
            <a class="btn"><span class="icon_search_btn"></span>Результаты анализов</a>
        </form>
    </div>
    <div class="container">
        <ul class="menu_list">
            <li class="active"><a href="#">Анализы и цены</a></li>
            <li><a href="#">Контакты, адреса и услуги</a></li>
            <li><a href="#">Комплексные обследования</a></li>
            <li><a href="#">УЗИ и ЭКГ</a></li>
            <li><a href="#">О компании</a></li>
            <li><a href="#">Он-лайн консультант</a></li>
            <li><a href="#">Партнеры</a></li>
        </ul>
    </div>
    <div class="container">
        <ul class="menu_list_second">
            <li>
                <a href="#">
                    <img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/analiz.png" alt="dnkom">
                    <span>Анализы по <br> разделам</span>
                </a>
            </li>
            <li><a href="#"><img src="<?php echo $this->baseurl
                    ?>/templates/<?php echo $this->template ?>/images/srochnuy_analiz.png" alt="dnkom">
                    <span>Срочные
                    анализы</span></a></li>
            <li><a href="#"><img src="<?php echo $this->baseurl
                    ?>/templates/<?php echo $this->template ?>/images/podgotovka.png" alt="dnkom">  <span>Подготовка
                    к анализам</span></a></li>
            <li><a href="#"><img class="procent_img" src="<?php echo $this->baseurl
                    ?>/templates/<?php echo $this->template ?>/images/procent.png" alt="dnkom">
                    <span>Cкидки</span></a></li>
            <li><a href="#"><img src="<?php echo $this->baseurl
                    ?>/templates/<?php echo $this->template ?>/images/home_analiz.png" alt="dnkom">  <span>Анализы
                    на дому</span></a></li>
            <li><a href="#"><img src="<?php echo $this->baseurl
                    ?>/templates/<?php echo $this->template ?>/images/otzuv.png" alt="dnkom">  <span>Отзывы и
                    претензии</span></a></li>
        </ul>
    </div>
</div>
    <div class="container">
        <div class="left_block">
            <p>ПАЦИЕНТАМ</p>
            <div class="rows">
                <div>
                    <a href="#">
                    <img src="<?php echo $this->baseurl
                    ?>/templates/<?php echo $this->template ?>/images/razchitat.png" alt="dnkom">Расчитать заказ</a>
                </div>
                <div>
                    <a href="#">
                        <img src="<?php echo $this->baseurl
                        ?>/templates/<?php echo $this->template ?>/images/uzi.png" alt="dnkom">Записаться на УЗИ</a>
                </div>
            </div>
            <p>ПАРТНЕРАМ</p>
            <div class="rows">
                <div>
                    <a href="#">
                        <img src="<?php echo $this->baseurl
                        ?>/templates/<?php echo $this->template ?>/images/med_tech.png" alt="dnkom"><br>Мед.
                            учреждениям</a>
                </div>
                <div>
                    <a href="#">
                        <img src="<?php echo $this->baseurl
                        ?>/templates/<?php echo $this->template ?>/images/docter.png" alt="dnkom">Врачам</a>
                </div>
            </div>
        </div>
        <div class="slider">
            <div class="controls">
                <span class="left_control"></span>
                <span class="right_control"></span>
            </div>
            <div class="relative">
                <img src="<?php echo $this->baseurl
                ?>/templates/<?php echo $this->template ?>/images/slide.png" alt="dnkom">
                <div class="slide_text">
                    <p class="genetic">ГЕНЕТИЧЕСКИЕ ИССЛЕДОВАНИЯ</p>
                    <p class="geneti_dangerous">ОПРЕДЕЛЕНИЕ ГЕНЕТИЧЕСКИХ ФАКТОРОВ РИСКА</p>
                    <p class="list_genetic"><img src="<?php echo $this->baseurl
                        ?>/templates/<?php echo $this->template ?>/images/galochka.png" alt="dnkom">Венозных
                        тромбозов<br>
                        <span>для женщин и мужчин</span></p>
                    <p class="list_genetic"><img src="<?php echo $this->baseurl
                        ?>/templates/<?php echo $this->template ?>/images/galochka.png" alt="dnkom">Патологии беременности
                        <span class="first_span">(невынашивание)</span><br>
                        <span>для матери и ребенка</span></p>
                    <p class="metod_genetic">Современный метод исследования</p>
                </div>
            </div>
        </div>
        <div style="clear: both"></div>
    </div>
    <div class="back_news">
    <div class="container ">
        <div class="news">
            <h3><span class="icon_news"></span>НОВОСТИ</h3>
            <div class="block_news">
                <img src="<?php echo $this->baseurl
                ?>/templates/<?php echo $this->template ?>/images/peoples.png" alt="dnkom">
                <p>
                    <span>14 мая 2014</span>
                    <a href="#">С 15 декабря пункт забора с Петровского переулка переместился в новый корпус по адресу Тверская дом 6, строение 6</a>
                </p>
                <p>Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки</p>
            </div>
            <div class="block_news">
                <img src="<?php echo $this->baseurl
                ?>/templates/<?php echo $this->template ?>/images/peoples.png" alt="dnkom">
                <p>
                    <span>14 мая 2014</span>
                    <a href="#">С 15 декабря пункт забора с Петровского переулка переместился в новый корпус по адресу Тверская дом 6, строение 6</a>
                </p>
                <p>Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки</p>
            </div>
            <p class="more"><a href="#">Все новости<span class="icon_all_news"></span></a> </p>
        </div>
        <div class="news two">
            <h3><span class="icon_title"></span>СТАТЬИ</h3>
            <div class="block_news">
                <img src="<?php echo $this->baseurl
                ?>/templates/<?php echo $this->template ?>/images/peoples.png" alt="dnkom">
                <p>
                    <span>14 мая 2014</span>
                    <a href="#">С 15 декабря пункт забора с Петровского переулка переместился в новый корпус по адресу Тверская дом 6, строение 6</a>
                </p>
                <p>Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки</p>
            </div>
            <div class="block_news">
                <img src="<?php echo $this->baseurl
                ?>/templates/<?php echo $this->template ?>/images/peoples.png" alt="dnkom">
                <p>
                    <span>14 мая 2014</span>
                    <a href="#">С 15 декабря пункт забора с Петровского переулка переместился в новый корпус по адресу Тверская дом 6, строение 6</a>
                </p>
                <p>Диагностика вируса папилломы человека в аспекте скрининга и профилактики рака шейки матки</p>
            </div>
            <p class="more"><a href="#">Все статьи<span class="icon_all_news"></span></a> </p>
        </div>
        <div style="clear: both"></div>
    </div>
</div>
    <div class="container only_text">
        <h1>Медицинские анализы в Москве <span>(h1)</span></h1>
        <p>Научный центр молекулярно-генетических исследований «ДНКОМ» обладает самым широким спектром лабораторных анализов в Москве. У нас вы можете провести диагностику инфекционных возбудителей, таких как ВИЧ, сифилис, гепатиты А, В,С, возбудителей половых инфекций (хламидия, уреаплазма, микоплазма, трихомонада, вирус папилломы человека, гонококк (возбудитель гонореи)); сдать клинические и биохимические анализы крови и мочи; сдать анализы крови на гормоны (T3, Т4, ТТГ, половые гормоны, и проч.); обследоваться на аллергены и онкомаркеры. В своей работе мы используем самые современные методы исследований: ПЦР-диагностику, серологическую диагностику (иммуноферментный и иммунохемилюминисцентный анализ), общеклинические, иммунологические, биохимические и аллергологические тесты, культуральные и микроскопические методики. </p>
        <h2>Для чего нужны анализы <span>(H2)</span></h2>
        <p>Результаты, проведенных в лаборатории исследований, могут многое рассказать о здоровье пациента. Медицинские анализы - важная составляющая часть любого лечения. Без проведения необходимых процедур практически невозможно определить причину заболевания, и, следовательно, эффективность лечения болезни получается значительно ниже. Медицинские анализы дают возможность определить реакцию на лекарственные препараты и противопоказания с ними связанные. Также, помогут узнать наиболее подходящие и эффективные методы лечения.</p>
        <p>Наш научный центр молекулярно-генетических исследовани — один из немногих медицинских учреждений Москвы, который имеет несколько мощных клинико-лабораторных баз для исследований. Новейшее оборудование наших лабораторий позволит провести анализы в Москве быстро и эффективно, и получить наиболее точные результаты, что в дальнейшем будет способствовать качественному лечению и экономии Вашего времени.</p>
        <h3>5 причин сдать анализы в Москве именно в нашем центре (H3):</h3>
        <ul>
            <li><span class="icon first"></span>Огромный выбор медицинских лабораторных исследований и медицинских
                анализов.</li>
            <li><span class="icon second"></span>Высокое качество выполнения всех медицинских анализов,
                начиная от сбора материала до получения Вами ответа</li>
            <li><span class="icon third"></span>Полная безопасность Ваших обследований, конфиденциальность.</li>
            <li><span class="icon four"></span>Грамотное разъяснение результатов медицинских анализов.</li>
            <li><span class="icon five"></span>Доступные цены на медицинские анализы и лучшее соотношение
                цена/качество</li>
        </ul>
    </div>
    <div id="footer" class="footer">
		<jdoc:include type="modules" name="footer" style="xhtml"/>
    <div class="container">
        <div class="footer_menu">
            <h4>АНАЛИЗЫ (H4)</h4>
            <ul>
                <li><a href="#">Срочные анализы</a></li>
                <li><a href="#">Анализ крови</a></li>
                <li><a href="#">Диагностика инфекций</a></li>
                <li><a href="#">Диагностика гепатитов</a></li>
                <li><a href="#">Гормоны</a></li>
                <li><a href="#">Анализ крови</a></li>
                <li><a href="#">Анализ мочи</a></li>
                <li><a href="#">Общеклинические исследования</a></li>
                <li><a href="#">Гемостаз</a></li>
                <li><a href="#">Онкомаркеры</a></li>
            </ul>
        </div>
        <div class="footer_menu">
            <h4>Комплексы  (H4)</h4>
            <ul>
                <li><a href="#">Срочные анализы</a></li>
                <li><a href="#">Анализ крови</a></li>
                <li><a href="#">Диагностика инфекций</a></li>
                <li><a href="#">Диагностика гепатитов</a></li>
                <li><a href="#">Гормоны</a></li>
                <li><a href="#">Анализ крови</a></li>
                <li><a href="#">Анализ мочи</a></li>
                <li><a href="#">Общеклинические исследования</a></li>
                <li><a href="#">Гемостаз</a></li>
                <li><a href="#">Онкомаркеры</a></li>
            </ul>
        </div>
        <div class="footer_menu">
            <h4>половые инфекции  (H4)</h4>
            <ul>
                <li><a href="#">Срочные анализы</a></li>
                <li><a href="#">Анализ крови</a></li>
                <li><a href="#">Диагностика инфекций</a></li>
                <li><a href="#">Диагностика гепатитов</a></li>
                <li><a href="#">Гормоны</a></li>
                <li><a href="#">Анализ крови</a></li>
                <li><a href="#">Анализ мочи</a></li>
                <li><a href="#">Общеклинические исследования</a></li>
                <li><a href="#">Гемостаз</a></li>
                <li><a href="#">Онкомаркеры</a></li>
            </ul>
        </div>
        <div class="footer_menu absolute">
            <jdoc:include type="modules" name="social-tabs" style="xhtml"/>
        </div>
    </div>

    <div class="container downs_footer">
        <a href="<?php echo $this->baseurl ?>" class="logo"><img src="<?php echo $this->baseurl
        ?>/templates/<?php echo $this->template ?>/images/footer_logotype.png" alt="dnkom" class="logotype_footer"
                /></a>
        <div class="for_footer">
            <p class="numder_phone tel"><span class="icon_phone"></span><span>+7 495</span> 689 77 04  <span
                        class="slesh">&nbsp;/&nbsp;</span> <span>+7 495</span> 689 69 31</p>
            <p class="footer_adress street-address"> <span class="icon_home"></span>ул. Тверская, дом 6,
                    стр. 6 <span class="icon_email"></span><a
                            href="#">info@dnk-diagnostika.ru</a></p>
        </div>
        <div class="social_icon">
            <ul>
                <li><a href="#"><span class="icon_rss"></span></a></li>
                <li><a href="#"><span class="icon_face"></span></a></li>
                <li><a href="#"><span class="icon_twitter"></span></a></li>
                <li><a href="#"><span class="icon_google"></span></a></li>
                <li><a href="#"><span class="icon_istagram"></span></a></li>
                <li><a href="#"><span class="icon_yotube"></span></a></li>
            </ul>
        </div>
    </div>

</div>

<div style="display:none;">
    <div id="order-form">
    	<h3></h3>
		<jdoc:include type="modules" name="order-product-form" style="xhtml"/>
	</div>
</div>


<script src="<?php echo $this->baseurl ?>/templates/dnkom/js/scripts.js" type="text/javascript"></script>
</body>
</html>
