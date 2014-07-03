<? 
// элемент ymaps написан worstinme@ya.ru 
// спасибо можно отправить на 
// WM R138753723227 или про ЯД 41001613153284 
// ЯД пополняется только с других кошельков или счетов, пополнение через терминал невозможно

// в ближайшее время возможно выложу обновленную версию с дополнительными возможностями


// no direct access
defined('_JEXEC') or die('Restricted access');
?>
<div>
    <div class="row">
        <?php echo $this->app->html->_('control.text', $this->getControlName('location'), $this->get('location'), 'maxlength="255" title="'.JText::_('Координаты longlat 54.294045901216144,56.08725790404904').'" placeholder="'.JText::_('Координаты longlat 54.294045901216144,56.08725790404904').'"'); ?>
    </div>
    <div class="more-options">
		<div class="trigger">
			<div>
				<div class="advanced button hide">Скрыть опции</div>
				<div class="advanced button">Показать опции</div>
			</div>
	</div>
	<div class="advanced options">
        <div class="row" style="line-height:34px">Определение координат <a href="http://api.yandex.ru/maps/tools/getlonglat/" target="_blank">api.yandex.ru</a></div>
            
			<div class="row">
        <?php echo $this->app->html->_('control.text', $this->getControlName('width'), $this->get('width'), 'maxlength="255" title="'.JText::_('Ширина карты, например, 600px').'" placeholder="'.JText::_('Ширина карты, например, 600px').'"'); ?>
    	</div>

		<div class="row">
        <?php echo $this->app->html->_('control.text', $this->getControlName('height'), $this->get('height'), 'maxlength="255" title="'.JText::_('Высота, например, 300px').'" placeholder="'.JText::_('Высота, например, 300px').'"'); ?>
    	</div>
            
        <div class="row">
        <?php echo $this->app->html->_('control.text', $this->getControlName('zoom'), $this->get('zoom'), 'maxlength="255" title="'.JText::_('zoom, по умолчанию 12').'" placeholder="'.JText::_('zoom, по умолчанию 12').'"'); ?>
    	</div>
        
        <div class="row">
        <?php echo $this->app->html->_('control.textarea', $this->getControlName('ballun'), $this->get('ballun'), 'maxlength="255" title="'.JText::_('Содержимое баллуна, по умолчанию будет взят текст заголовка материала').'" placeholder="'.JText::_('Содержимое баллуна, по умолчанию будет взят текст заголовка материала').'"'); ?>
    	</div>

		</div>
	</div>
    
    
    
    
    
</div>