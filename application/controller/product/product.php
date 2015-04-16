<?php
class ControllerProductProduct extends Controller {
	private $error = array();

	public function index() {
    
    		$data['breadcrumbs'] = array();
    
    		$data['breadcrumbs'][] = array(
    			'text' => $this->language->get('text_home'),
    			'href' => $this->url->link('common/home')
    		);

		
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

		
            $this->response->setOutput($this->load->view('default/template/product/product.tpl', $data));
		
		
		}
}

