<?php
class ControllerCheckoutCheckout extends Controller {
	public function index() {
		

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_cart'),
			'href' => $this->url->link('checkout/cart')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('checkout/checkout', '', 'SSL')
		);

		$data['heading_title'] = $this->language->get('heading_title');
        
        $data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
	
	   $this->response->setOutput($this->load->view('default/template/checkout/checkout.tpl', $data));
		
	}

}