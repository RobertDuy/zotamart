<?php
class ControllerProductDetail extends Controller {
	public function index() {
        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        $product_id = $this->request->get['product_id'];
        $this->load->model('catalog/product');

        $this->response->setOutput($this->load->view('default/template/product/detail.tpl', $data));
		
	}
}

