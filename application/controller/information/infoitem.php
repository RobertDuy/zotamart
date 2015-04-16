<?php
class ControllerInformationInfoitem extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('information/contact');

		$this->document->setTitle($this->language->get('heading_title'));

	

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/contact')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		
		$this->response->setOutput($this->load->view('default/template/information/infoitem.tpl', $data));
		
	}

}