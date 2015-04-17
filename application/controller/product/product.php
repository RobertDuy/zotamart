<?php
class ControllerProductProduct extends Controller {

	public function index() {
        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        $this->load->model('catalog/product');
        if(isset($this->request->get['categories_path'])){
            // TODO: tam thoi categories_path = category_id vi` chua co submenus
            $category_id = $this->request->get['categories_path'];
            $data['promotion_products'] = $this->getShowAbleData($this->model_catalog_product->getProductsPromotions($category_id), $category_id);
            $data['products'] = $this->getShowAbleData($this->model_catalog_product->getProductsInCategory($category_id), $category_id);
        }
        $this->response->setOutput($this->load->view('default/template/product/product.tpl', $data));
    }

    private function getShowAbleData($products, $category_id){
        $this->load->model('tool/image');
        $result = array();
        foreach($products as $product){
           $result[] = array(
               'product_name' => $product['name'],
               'image' => $this->model_tool_image->resize($product['image'], 250, 350),
               'price' => $product['price'],
               'link' => $this->url->link('product/detail', 'categories_path='. $category_id. '&product_id='. $product['product_id'])
           );
        }
        return $result;
    }
}

