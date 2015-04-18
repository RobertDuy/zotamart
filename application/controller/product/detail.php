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

        $requestPath = explode('=', $this->request->get['product_id']);
        $product_id = (int)end($requestPath);

        $this->load->model('catalog/product');
        $this->load->model('tool/image');

        $product_info = $this->model_catalog_product->getProductByProductId($product_id);
        $product_images = $this->model_catalog_product->getProductImages($product_id);

        $thumbs = array();
        foreach($product_images as $image){
            $thumbs[] = array(
              'link' => $this->model_tool_image->resize($image['image'], 400, 500),
              'smallImage' => $this->model_tool_image->resize($image['image'], 200, 200)
            );
        }
        $data['product'] = array(
           'name' => $product_info['name'],
           'description' => html_entity_decode($product_info['description'] ,ENT_QUOTES, 'UTF-8'),
           'price' => $product_info['price'],
           'image' => $this->model_tool_image->resize($product_info['image'], 400, 500),
           'thumbs' => $thumbs
        );

        $category_id = $this->request->get['categories_path']; // TODO: cause not implement submenu yet!
        $data['moreProducts'] = $this->getShowAbleData($this->model_catalog_product->getRelatedProduct($category_id, $product_id), $category_id);

        $this->response->setOutput($this->load->view('default/template/product/detail.tpl', $data));
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

