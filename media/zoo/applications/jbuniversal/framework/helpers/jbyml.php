<?php
/**
 * JBZoo App is universal Joomla CCK, application for YooTheme Zoo component
 *
 * @package     jbzoo
 * @version     2.x Pro
 * @author      JBZoo App http://jbzoo.com
 * @copyright   Copyright (C) JBZoo.com,  All rights reserved.
 * @license     http://jbzoo.com/license-pro.php JBZoo Licence
 * @coder       Vitaliy Yanovskiy <joejoker@jbzoo.com>
 */

defined('_JEXEC') or die('Restricted access');

/**
 * Class JBYmlHelper
 */
class JBYmlHelper extends AppHelper
{
    /**
     * @var array
     */
    protected $_country = array(
        "AF" => "Афганистан",
        "AL" => "Албания",
        "DZ" => "Алжир",
        "AS" => "",
        "AD" => "Андорра",
        "AO" => "Ангола",
        "AI" => "Ангилья",
        "AQ" => "",
        "AG" => "Антигуа и Барбуда",
        "AR" => "Аргентина",
        "AM" => "Армения",
        "AW" => "Аруба",
        "AU" => "Австралия",
        "AT" => "Австрия",
        "AZ" => "Азербайджан",
        "BS" => "Багамские острова",
        "BH" => "Бахрейн",
        "BD" => "Бангладеш",
        "BB" => "Барбадос",
        "BY" => "Беларусь",
        "BE" => "Бельгия",
        "BZ" => "Белиз",
        "BJ" => "Бенин",
        "BM" => "Бермудские Острова",
        "BT" => "Бутан",
        "BO" => "Боливия",
        "BA" => "Босния и Герцеговина",
        "BW" => "Ботсвана",
        "BV" => "",
        "BR" => "Бразилия",
        "IO" => "",
        "BN" => "Бруней",
        "BG" => "Болгария",
        "BF" => "Буркина-Фасо",
        "BI" => "Бурунди",
        "KH" => "Камбоджа",
        "CM" => "Камерун",
        "CA" => "Канада",
        "CV" => "Кабо-Верде",
        "KY" => "Каймановы острова",
        "CF" => "Центрально-Африканская Республика ",
        "TD" => "Чад",
        "CL" => "Чили",
        "CN" => "Китай",
        "CX" => "",
        "CC" => "",
        "CO" => "Колумбия",
        "KM" => "Коморские острова ",
        "CG" => "Республика Конго",
        "CD" => "Демократическая Республика Конго",
        "CK" => "Острова Кука",
        "CR" => "Коста-Рика",
        "CI" => "Кот-д'Ивуар",
        "HR" => "Хорватия",
        "CU" => "Куба",
        "CY" => "Кипр",
        "CZ" => "Чехия",
        "DK" => "Дания",
        "DJ" => "Джибути",
        "DM" => "Доминика",
        "DO" => "Доминиканская Республика",
        "EC" => "Эквадор",
        "EG" => "Египет",
        "SV" => "",
        "GQ" => "Экваториальная Гвинея",
        "ER" => "Эритрея",
        "EE" => "Эстония",
        "ET" => "Эфиопия",
        "FK" => "",
        "FO" => "",
        "FJ" => "Фиджи",
        "FI" => "Финляндия",
        "FR" => "Франция",
        "GF" => "Французская Гвиана",
        "PF" => "Французская Полинезия",
        "TF" => "",
        "GA" => "Габон",
        "GM" => "Гамбия",
        "GE" => "Грузия",
        "DE" => "Германия",
        "GH" => "Гана",
        "GI" => "Гибралтар",
        "GR" => "Греция",
        "GL" => "Гренландия",
        "GD" => "Гренада",
        "GP" => "Гваделупа",
        "GU" => "",
        "GT" => "Гватемала",
        "GN" => "Гвинея",
        "GW" => "Гвинея-Бисау",
        "GY" => "Гайана",
        "HT" => "Гаити",
        "HM" => "",
        "VA" => "",
        "HN" => "Гондурас",
        "HK" => "",
        "HU" => "Венгрия",
        "IS" => "Исландия",
        "IN" => "Индия",
        "ID" => "Индонезия",
        "IR" => "Иран",
        "IQ" => "Ирак",
        "IE" => "Ирландия",
        "IL" => "Израиль",
        "IT" => "Италия",
        "JM" => "Ямайка",
        "JP" => "Япония",
        "JO" => "Иордания",
        "KZ" => "Казахстан",
        "KE" => "Кения",
        "KI" => "Кирибати",
        "KP" => "Северная Корея",
        "KR" => "Южная Корея",
        "KW" => "Кувейт",
        "KG" => "Киргизия",
        "LA" => "Лаос",
        "LV" => "Латвия",
        "LB" => "Ливан",
        "LS" => "Лесото",
        "LR" => "Либерия",
        "LY" => "Ливия",
        "LI" => "Лихтенштейн",
        "LT" => "Литва",
        "LU" => "Люксембург",
        "MO" => "Macao",
        "MK" => "Македония",
        "MG" => "Мадагаскар",
        "MW" => "Малави",
        "MY" => "Малайзия",
        "MV" => "Мальдивы",
        "ML" => "Мали",
        "MT" => "Мальта",
        "MH" => "Маршалловы острова ",
        "MQ" => "",
        "MR" => "Мавритания",
        "MU" => "Маврикий",
        "YT" => "Майотта",
        "MX" => "Мексика",
        "FM" => "Федеративные Штаты Микронезии",
        "MD" => "Молдова",
        "MC" => "Монако",
        "MN" => "Монголия",
        "ME" => "Черногория",
        "MS" => "",
        "MA" => "Марокко",
        "MZ" => "Мозамбик",
        "MM" => "Мьянма",
        "NA" => "Намибия",
        "NR" => "Науру",
        "NP" => "Непал",
        "NL" => "Нидерланды",
        "AN" => "Нидерландские Антильские острова",
        "NC" => "Новая Каледония",
        "NZ" => "Новая Зеландия",
        "NI" => "Никарагуа",
        "NE" => "Нигер",
        "NG" => "Нигерия",
        "NU" => "",
        "NF" => "",
        "MP" => "",
        "NO" => "Норвегия",
        "OM" => "Оман",
        "PK" => "Пакистан",
        "PW" => "Палау",
        "PS" => "",
        "PA" => "Панама",
        "PG" => "Папуа - Новая Гвинея",
        "PY" => "Парагвай",
        "PE" => "Перу",
        "PH" => "Филиппины",
        "PN" => "",
        "PL" => "Польша",
        "PT" => "Португалия",
        "PR" => "",
        "QA" => "Катар",
        "RE" => "Реюньон",
        "RO" => "Румыния",
        "RU" => "Россия",
        "RW" => "Руанда",
        "SH" => "",
        "KN" => "Сент-Китс и Невис",
        "LC" => "Сент-Люсия",
        "PM" => "",
        "VC" => "Сент-Винсент и Гренадины",
        "WS" => "Самоа",
        "SM" => "Сан-Марино",
        "ST" => "Сан-Томе и Принсипи",
        "SA" => "Саудовская Аравия",
        "SN" => "Сенегал",
        "RS" => "Сербия",
        "SC" => "Сейшельские острова",
        "SL" => "Сьерра-Леоне",
        "SG" => "Сингапур (страна)",
        "SK" => "Словакия",
        "SI" => "Словения",
        "SB" => "",
        "SO" => "Сомали",
        "ZA" => "ЮАР",
        "GS" => "",
        "ES" => "Испания",
        "LK" => "Шри-Ланка",
        "SD" => "Судан",
        "SR" => "Суринам",
        "SJ" => "",
        "SZ" => "Свазиленд",
        "SE" => "Швеция",
        "CH" => "Швейцария",
        "SY" => "Сирия",
        "TW" => "",
        "TJ" => "Таджикистан",
        "TZ" => "Танзания",
        "TH" => "Таиланд",
        "TL" => "Восточный Тимор",
        "TG" => "Того",
        "TK" => "",
        "TO" => "Тонга",
        "TT" => "Тринидад и Тобаго",
        "TN" => "Тунис",
        "TR" => "Турция",
        "TM" => "Туркмения",
        "TC" => "Тёркс и Кайкос",
        "TV" => "Тувалу",
        "UG" => "Уганда",
        "UA" => "Украина",
        "AE" => "Объединённые Арабские Эмираты",
        "GB" => "Великобритания",
        "US" => "США",
        "UM" => "",
        "UY" => "Уругвай",
        "UZ" => "Узбекистан",
        "VU" => "Вануату",
        "VE" => "Венесуэла",
        "VN" => "Вьетнам",
        "VG" => "Британские Виргинские острова",
        "VI" => "Американские Виргинские острова",
        "WF" => "",
        "EH" => "Западная Сахара",
        "YE" => "Йемен",
        "ZM" => "Замбия",
        "ZW" => "Зимбабве"
    );

    /**
     * @var null
     */
    protected $_appParams = null;

    /**
     * @var null
     */
    protected $_apps = null;

    /**
     * @var null
     */
    protected $_count = null;

    /**
     * Action init yml export
     */
    public function init()
    {
        // Init vars

        $appId        = defined('JBZOO_CONFIG_YML_APP_LIST') ? explode(':', JBZOO_CONFIG_YML_APP_LIST) : '';
        $siteName     = defined('JBZOO_CONFIG_YML_SITE_NAME') ? JBZOO_CONFIG_YML_SITE_NAME : '';
        $siteUrl      = defined('JBZOO_CONFIG_YML_SITE_URL') ? JBZOO_CONFIG_YML_SITE_URL : '';
        $companyName  = defined('JBZOO_CONFIG_YML_COMPANY_NAME') ? JBZOO_CONFIG_YML_COMPANY_NAME : '';
        $currencyRate = defined('JBZOO_CONFIG_YML_CURRENCY_RATE') ? JBZOO_CONFIG_YML_CURRENCY_RATE : '';
        $type         = defined('JBZOO_CONFIG_YML_TYPE') ? explode(':', JBZOO_CONFIG_YML_TYPE) : '';
        $filePath     = defined('JBZOO_CONFIG_YML_FILE_PATH') ? JBZOO_CONFIG_YML_FILE_PATH : '';
        $fileName     = defined('JBZOO_CONFIG_YML_FILE_NAME') ? JBZOO_CONFIG_YML_FILE_NAME : '';

        $this->_appParams = $this->app->data->create(array(
            'app_id'        => $appId,
            'site_name'     => $siteName,
            'site_url'      => $siteUrl,
            'company_name'  => $companyName,
            'currency'      => 'RUB',
            'currency_rate' => $currencyRate,
            'type'          => $type,
            'file_path'     => $filePath,
            'file_name'     => $fileName,
            // 'delivery'      => JBZOO_CONFIG_YML_DELIVERY
        ));

        if (!empty($appId)) {
            $this->_apps = $this->app->table->application->all(array(
                'conditions' => array(
                    'id IN (' . implode(',', $this->_appParams->get('app_id')) . ')')
            ));
        } else {
            $this->_apps = '';
        }
        $this->_count = $this->app->jbsession->get('ymlCount', 'yml');
    }

    /**
     * Action Cet params Market
     * @return array
     */
    protected function _getMarketParams()
    {
        $textCurrencyRate = array();
        $siteUrl          = $this->_appParams->get('site_url');
        $siteName         = $this->_appParams->get('site_name');
        $companyName      = $this->_appParams->get('company_name');
        $supportCurrency  = array('RUR', 'RUB', 'USD', 'BYR', 'KZT', 'EUR', 'UAH');
        $currency         = $this->_appParams->get('currency');
        $currencyRate     = $this->_appParams->get('currency_rate');

        if (!empty($siteUrl)) {
            $site_url = $this->replaceSpecial($this->_appParams->get('site_url', ''));
        } else {
            $site_url = $this->replaceSpecial(JURI::root());
        }

        if (!empty($siteName)) {
            $site_name = $this->replaceSpecial($this->_appParams->get('site_name', ''));
        } else {
            $site_name = $this->replaceSpecial(JFactory::getConfig()->get('sitename'));
        }

        if (!empty($companyName)) {
            $company_name = $this->replaceSpecial($this->_appParams->get('company_name', ''));
        } else {
            $company_name = $this->replaceSpecial(JFactory::getConfig()->get('sitename'));
        }

        foreach ($this->app->jbmoney->getCurrencyList() as $key => $value) {
            if ($currencyRate == 'default') {
                if (in_array($key, $supportCurrency)) {
                    $textCurrencyRate[$key] = str_replace(',', '.', $this->app->jbmoney->convert($key, $currency, 1));

                }
            } else {
                if (in_array($key, $supportCurrency)) {
                    $textCurrencyRate[$key] = $this->_appParams->get('currency_rate');

                }
            }
        }

        $categories = $this->app->table->category->all(array(
            'conditions' => array(
                'application_id IN (' . implode(',', $this->_appParams->get('app_id')) . ')')
        ));

        return array(
            'site_url'      => $site_url,
            'site_name'     => $site_name,
            'company_name'  => $company_name,
            'currency_rate' => $textCurrencyRate,
            'categories'    => $categories
        );
    }

    /**
     * Action write Start File
     */
    public function renderStart()
    {
        $this->_count = null;
        $marketParams = $this->_getMarketParams();
        $string       = '<?xml version="1.0" encoding="utf-8"?>' . "\n" . '<!DOCTYPE yml_catalog SYSTEM "shops.dtd">' . "\n\t" . '<yml_catalog date="' . JHTML::_("date", "now", JText::_("Y-m-d H:i")) . '">
        <shop>
            <name>' . $marketParams['site_name'] . '</name>
            <company>' . $marketParams['company_name'] . '</company>
            <url>' . $marketParams['site_url'] . '</url>

            <currencies>' . "\n";

        foreach ($marketParams['currency_rate'] as $key => $value) {
            $string .= "\t\t\t\t" . '<currency id="' . $key . '" rate="' . $this->replaceSpecial($value) . '"/>' . "\n";
        }
        $string .= "\t\t\t" . '</currencies>' . "\n\n\t\t\t" . '<categories>' . "\n";

        foreach ($marketParams['categories'] as $category) {
            if (!empty($category->parent)) {
                $string .= "\t\t\t\t" . '<category id="' . $category->id . '" parentId="' . $category->parent . '">' . $this->replaceSpecial($category->name) . '</category>' . "\n";
            } else {
                $string .= "\t\t\t\t" . '<category id="' . $category->id . '">' . $this->replaceSpecial($category->name) . '</category>' . "\n";
            }
        }
        $string .= "\t\t\t" . '</categories>' . "\n\n\t\t\t" . '<offers>' . "\n";

        $this->_writeToFile($string, true);
    }


    /**
     * @param $offset
     * @param $limit
     * @throws AppException
     */
    public function exportItems($offset, $limit)
    {
        $types = $this->_appParams->get('type');
        $items = JBModelItem::model()->getList(
            $this->_appParams->get('app_id'),
            null,
            $types,
            array(
                'limit'     => array(
                    $offset,
                    $limit
                ),
                'published' => 1
            )
        );
        $price = $categoryId = $currencyId = $available = $picture = $link = array();

        foreach ($items as $key => $item) {
            $offer = false;
            $arr   = $item->getElements();
            foreach ($arr as $value) {
                if ($value->config->type == 'jbpriceadvance') {
                    // get price
                    $price[$key] = $this->replaceSpecial($value->getElementData()->basic['value']);

                    // get currency id
                    $currencyId[$key] = $this->replaceSpecial($value->getElementData()->basic['currency']);

                    // get available
                    if ((int)$value->getElementData()->basic['balance'] > 0 ||
                        (int)$value->getElementData()->basic['balance'] == -1
                    ) {
                        $available[$key] = 'true';
                    } else {
                        $available[$key] = 'false';
                    }

                    $offer = true;
                } elseif ($value->config->type == 'jbprice') {
                    $data             = $value->current();
                    $price[$key]      = $data['value'];
                    $currencyId[$key] = $value->config->currency;
                    $available[$key]  = $data['in_stock'] ? 'true' : 'false';
                    $offer            = true;
                }

                // get image path
                if ($value->config->type == 'jbimage' || $value->config->type == 'image') {
                    $picture[$key] = $this->replaceSpecial(JURI::root() . str_replace('\\','/',$value->getElementData()->get('file')));
                }

                if ($value->config->type == 'country') {
                    $data = $value->getElementData()->get('country');

                    if (isset($data) && array_key_exists($data[0], $this->_country)) {
                        $country[$key] = $this->_country[$data[0]];
                    }

                }
            }

            if (!$offer) {

                $filePath = $this->getPath();

                if (JFile::exists($filePath)) {
                    JFile::delete($filePath);
                }

                throw new AppException(JText::_('JBZOO_YML_NOT_PRODUCT_OFFER_FILE') . $item->getType()->getName());
            }

            // get item link
            $link[$key] = $this->replaceSpecial($this->app->jbrouter->externalItem($item));

            // get category Id
            if ($item->getPrimaryCategoryId() != null) {
                $categoryId[$key] = $item->getPrimaryCategoryId();
            }
        }

        $itemParams = array(
            'price'      => $price,
            'categoryId' => $categoryId,
            'currencyId' => $currencyId,
            'available'  => $available,
            'picture'    => $picture,
            'link'       => $link,
        );

        if (isset($country) && !empty($country)) {
            $itemParams['country'] = $country;
        }

        $renderer = $this->app->renderer->create('item')->addPath(
            array(
                $this->app->path->path('component.site:'),
                $this->app->path->path('jbtmpl:') . '/catalog'
            )
        );
        $strItems = "";
        foreach ($items as $item) {
            if ($renderer->pathExists('item/' . $item->type . '/ymlexport.php')) {
                $tmpStrItems = $renderer->render(
                    'item.' . $item->type . '.ymlexport',
                    array(
                        'view'        => $this,
                        'item'        => $item,
                        'item_params' => $itemParams
                    )
                );
                $tmpStrItems = JString::trim($tmpStrItems);

                if (!empty($tmpStrItems)) {
                    $this->_count++;
                }

                $strItems .= $tmpStrItems;

            } else {
                throw new AppException(JText::_('JBZOO_YML_NOT_EXISTS_TEMPLATE') . $item->getType()->getName());
            }
        }
        $this->app->jbsession->set('ymlCount', $this->_count, 'yml');
        $this->_writeToFile($strItems, false);
    }

    /**
     * Action write finish file
     */
    public function renderFinish()
    {
        $this->_writeToFile('</offers></shop></yml_catalog>', false);
    }


    /**
     * @param $resource
     * @param bool $start
     * @throws AppException
     */
    protected function _writeToFile($resource, $start = true)
    {
        $filePath = $this->getPath();
        $dir      = $this->_appParams->get('file_path', 'images');

        if ($start && JFile::exists($filePath)) {
            JFile::delete($filePath);
        }

        if (!JFile::exists($filePath)) {
            JFolder::create(JPATH_ROOT . DS . $dir);
        }

        $handle = fopen($filePath, 'a');

        if (is_writable($filePath)) {

            fwrite($handle, $resource);

        } else {
            throw new AppException(JText::_('JBZOO_YML_NOT_WRITABLE_FILE'));
        }
        fclose($handle);
    }


    /**
     * @param bool $path
     * @return string
     */
    public function getPath($path = true)
    {
        if ($path) {
            $tmpPath  = $this->_appParams->get('file_path', 'images');
            $tmpPath  = JPath::clean(JPATH_ROOT . DS . $tmpPath);
            $fileName = $this->_appParams->get('file_name', 'yml');
            $filePath = $tmpPath . DS . $fileName . '.xml';
        } else {
            $tmpPath  = $this->_appParams->get('file_path', 'images');
            $filePath = JUri::root() . $tmpPath . '/' . $this->_appParams->get('file_name', 'yml') . '.xml';
        }

        return $filePath;
    }

    /**
     * Action Replace special simbols
     * @param $text
     * @return string
     */
    public function replaceSpecial($text)
    {
        return trim(addslashes(htmlspecialchars(strip_tags($text))));
    }

    /**
     * @return int
     */
    public function getTotal()
    {
        $types = $this->_appParams->get('type');
        $appId = $this->_appParams->get('app_id');
        return JBModelItem::model()->getTotal($appId, $types);

    }
}