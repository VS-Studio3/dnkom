<? 
// элемент ymaps написан worstinme@ya.ru 
// спасибо можно отправить на 
// WM R138753723227 или про ЯД 41001613153284 
// ЯД пополняется только с других кошельков или счетов, пополнение через терминал невозможно

// в ближайшее время возможно выложу обновленную версию с дополнительными возможностями
 
class ElementFlyleaf_ymaps extends Element implements iSubmittable {
	
	
public function hasValue($params = array()) { 

		$value = $this->get('location');
		return !empty($value) || ($this->get('width')) || ($this->get('height')) || ($this->get('zoom'));
}
	
public function render($params = array()) {
	
	$params			   = $this->app->data->create($params);
	$location 		   = $this->get('location');
	$width             = $this->get('width');
	$height            = $this->get('height');
	$zoom              = $this->get('zoom');
	$ballun            = $this->get('ballun');
	$map_type          = $params->get('map_type');
	$width_default	   = $params->get('width_default');
	$height_default	   = $params->get('height_default');
	$zoom_default	   = $params->get('zoom_default');
	$showcontrol	   = $params->get('showcontrol');
	$maps_id           = 'ymaps-'.uniqid();
	$path   = 'item';
	$prefix = 'item.';
	
	$jertva = array ('\r','\t','\n','\0','\x0B','\r\n',chr(13),chr(10));
	$gumno = array ('','','','','',' ',' ',' ');
	
	if (empty($width_default)) $width_default = "100%";
	if (empty($height_default)) $height_default = "300px";
	if (empty($zoom_default)) $zoom_default = "12";	
	if (empty($width)) $width = $width_default;
	if (empty($height)) $height = $height_default;
	if (empty($zoom)) $zoom = $zoom_default;
	
	// get marker text
	
	if (!empty($ballun))  
		$marker_text = str_replace($jertva,$gumno,addslashes($ballun));
	else {
		$marker_text = '';
		$renderer = $this->app->renderer->create('item')->addPath(array($this->app->path->path('component.site:'), $this->_item->getApplication()->getTemplate()->getPath()));
		$layout = 'maps';
		if ($item = $this->getItem()) {
			$type   = $item->getType()->id;
			if ($renderer->pathExists($path.DIRECTORY_SEPARATOR.$type)) {
				$path   .= DIRECTORY_SEPARATOR.$type;
				$prefix .= $type.'.';
			}
			if (in_array($layout, $renderer->getLayouts($path)) && !$render_all && $item->getState()) 
			$marker_text = str_replace($jertva,$gumno,addslashes($renderer->render($prefix.$layout, array('item' => $item))));
		}
		
	}
		
	
	if ($layout = $this->getLayout()) {
			return $this->renderLayout($layout, compact('maps_id', 'map_type', 'width', 'height', 'location', 'zoom', 'marker_text','showcontrol'));
	}
	return null;
}
	
	public function edit() {
        if ($layout = $this->getLayout('edit.php')) {
            return $this->renderLayout($layout);
        }

        return null;
	}
	
	public function renderSubmission($params = array()) {
        return $this->edit();
	}


	public function validateSubmission($value, $params) {
        $validator = $this->app->validator->create('', array('required' => $params->get('required')), array('required' => 'Please enter a location'));
        $clean = $validator->clean($value->get('location'));
		return array('location' => $clean);
	}
	
	public function _getLoc(){
	 	return $this->get('location');
	}
}

?>