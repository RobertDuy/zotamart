<?php
class ControllerCommonSeoUrl extends Controller {
	public function index() {
		if ($this->config->get('config_seo_url')) {
			$this->url->addRewrite($this);
		}

		// Decode URL
		if (isset($this->request->get['_route_'])) {
			$parts = explode('/', $this->request->get['_route_']);

			// remove any empty arrays from trailing
			if (utf8_strlen(end($parts)) == 0) {
				array_pop($parts);
			}

			foreach ($parts as $part) {
				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE keyword = '" . $this->db->escape($part) . "'");
				if ($query->num_rows) {
					$url = explode('=', $query->row['query']);
                    $this->request->get['route'] = 'product/product';

                    if(!isset($this->request->get['categories_path'])){
                        $this->request->get['categories_path'] = $url[1];
                    }else{
                        $this->request->get['categories_path'] .= $url[1];
                    }
				}else{
                    // product path
                    $this->request->get['route'] = 'product/product';
                    $productIDPaths = explode('-', $part);
                    $this->request->get['product_id'] = $productIDPaths[1];
                }
			}
			if (isset($this->request->get['route'])) {
				return new Action($this->request->get['route']);
			}
		}
	}

	public function rewrite($link) {
		$url_info = parse_url(str_replace('&amp;', '&', $link));

		$url = '';

		$data = array();

		parse_str($url_info['query'], $data);

		foreach ($data as $key => $value) {
            if(isset($data['route']) && $data['route'] == 'product/product'){
                if(isset($data['categories_path'])){
                    $catalogIds = explode('_', $data['categories_path']);
                    foreach($catalogIds as $catalogID){
                        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . $catalogID . "'");
                        $aliasObject  = $query->row;
                        if(isset($aliasObject['url_alias_id'])){
                            $url .= '/' . $aliasObject['keyword'];
                        }
                    }
                }elseif(isset($data['product_id'])){
                    $this->load->model('catalog/product');
                    $productObject = $this->model_catalog_product->getProduct((int)$data['product_id']);
                    $url .= '/'. $this->encodeProductURL($productObject);
                }
                unset($data[$key]);
            }
		}

        if ($url) {
            return $url_info['scheme'] . '://' . $url_info['host'] . (isset($url_info['port']) ? ':' . $url_info['port'] : '') . str_replace('/index.php', '', $url_info['path']) . $url;
        } else {
            return $link;
        }
	}

    function encodeProductURL($productObject){
        return $this->remove_vietnamese_accents($productObject['name']) .'-'. $productObject['product_id'];
    }

    function decodeProductURL($lastPathRoute){
        $param = '&product_id=';
        $dataIds = explode('-', $lastPathRoute);
        $param .= end($dataIds);
        return $param;
    }

    function remove_vietnamese_accents($string) {
        $trans = array(
            'à'=>'a','á'=>'a','ả'=>'a','ã'=>'a','ạ'=>'a',
            '?'=>'a','?'=>'a','?'=>'a','?'=>'a','?'=>'a','?'=>'a',
            'â'=>'a','?'=>'a','?'=>'a','?'=>'a','?'=>'a','?'=>'a',
            'À'=>'a','Á'=>'a','?'=>'a','Ã'=>'a','?'=>'a',
            '?'=>'a','?'=>'a','?'=>'a','?'=>'a','?'=>'a','?'=>'a',
            'Â'=>'a','?'=>'a','?'=>'a','?'=>'a','?'=>'a','?'=>'a',
            '?'=>'d','?'=>'d',
            'è'=>'e','é'=>'e','?'=>'e','?'=>'e','?'=>'e',
            'ê'=>'e','?'=>'e','?'=>'e','?'=>'e','?'=>'e','?'=>'e',
            'È'=>'e','É'=>'e','?'=>'e','?'=>'e','?'=>'e',
            'Ê'=>'e','?'=>'e','?'=>'e','?'=>'e','?'=>'e','?'=>'e',
            'ì'=>'i','í'=>'i','?'=>'i','?'=>'i','?'=>'i',
            'Ì'=>'i','Í'=>'i','?'=>'i','?'=>'i','?'=>'i',
            'ò'=>'o','ó'=>'o','?'=>'o','õ'=>'o','?'=>'o',
            'ô'=>'o','?'=>'o','?'=>'o','?'=>'o','?'=>'o','?'=>'o',
            '?'=>'o','?'=>'o','?'=>'o','?'=>'o','?'=>'o','?'=>'o',
            'Ò'=>'o','Ó'=>'o','?'=>'o','Õ'=>'o','?'=>'o',
            'Ô'=>'o','?'=>'o','?'=>'o','?'=>'o','?'=>'o','?'=>'o',
            '?'=>'o','?'=>'o','?'=>'o','?'=>'o','?'=>'o','?'=>'o',
            'ù'=>'u','ú'=>'u','?'=>'u','?'=>'u','?'=>'u',
            '?'=>'u','?'=>'u','?'=>'u','?'=>'u','?'=>'u','?'=>'u',
            'Ù'=>'u','Ú'=>'u','?'=>'u','?'=>'u','?'=>'u',
            '?'=>'u','?'=>'u','?'=>'u','?'=>'u','?'=>'u','?'=>'u',
            '?'=>'y','ý'=>'y','?'=>'y','?'=>'y','?'=>'y',
            'Y'=>'y','?'=>'y','Ý'=>'y','?'=>'y','?'=>'y','?'=>'y'
        );
        return strtr($string, $trans);
    }
}
