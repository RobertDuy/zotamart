<?php
class ControllerCommonHeader extends Controller {
	public function index() {
		$data['title'] = $this->document->getTitle();

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$data['icon'] = $server . 'image/' . $this->config->get('config_icon');
		} else {
			$data['icon'] = '';
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

        $this->load->model('catalog/category');
        $raw_categories = $this->model_catalog_category->getCategories(0);
        foreach($raw_categories as $raw_category){
            $data['categories'][] = array(
                'name' => $raw_category['name'],
                'link' => $this->url->link('product/product', 'categories_path='. $raw_category['category_id'])
            );
        }
        // TODO : view recalculate categories_path when has sub_menu

	    return $this->load->view('default/template/common/header.tpl', $data);
		
	}
}