<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

        // load main categories & product_promotions
        $this->load->model('catalog/product');
        $this->load->model('catalog/category');
        $this->load->model('tool/image');
        $raw_categories = $this->model_catalog_category->getCategories(0);
        foreach($raw_categories as $raw_category){
            // load product_promotions cua moi categories
            $rawLstProductPromotions = $this->model_catalog_product->getProductsPromotions($raw_category['category_id']);

            $lstProductPromotions = array();

            foreach($rawLstProductPromotions as $rawProductPromotion){
                $lstProductPromotions[] = array(
                    'price' => $rawProductPromotion['price'],
                    'product_name' => $rawProductPromotion['name'],
                    'image' => $this->model_tool_image->resize($rawProductPromotion['image'], 250, 350),
                    'link' => $this->url->link('product/product', 'categories_path='. $raw_category['category_id']. '&product_id='. $rawProductPromotion['product_id'])
                );
            }

            $data['categories'][] = array(
                'name' => $raw_category['name'],
                'link' => $this->url->link('product/product', 'categories_path='. $raw_category['category_id']),
                'product_promotions' => $lstProductPromotions
            );
        }
		$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		
	}
}