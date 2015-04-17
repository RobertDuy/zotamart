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
                        $this->request->get['categories_path'] .= '_'. $url[1];
                    }
				}else{
                    // product path
                    $this->request->get['route'] = 'product/detail';
                    $product_id = $this->decodeProductURL($part);
                    $this->request->get['product_id'] = $product_id;
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
            if(isset($data['route'])){
                if(isset($data['categories_path'] )){
                    $catalogIds = explode('_', $data['categories_path']);
                    foreach($catalogIds as $catalogID){
                        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE query = 'category_id=" . $catalogID . "'");
                        $aliasObject  = $query->row;
                        if(isset($aliasObject['url_alias_id'])){
                            $url .= '/' . $aliasObject['keyword'];
                        }
                    }
                }
                if(isset($data['product_id'])){
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
        return $this->remove_vietnamese_accents($productObject['name']) . '_' . $productObject['product_id'];
    }

    function decodeProductURL($lastPathRoute){
        $param = '&product_id=';
        $dataIds = explode('_', $lastPathRoute);
        $param .= end($dataIds);
        return $param;
    }

    function remove_vietnamese_accents($str)
    {
        $accents_arr=array(
            "à","á","ạ","ả","ã","â","ầ","ấ","ậ","ẩ","ẫ","ă",
            "ằ","ắ","ặ","ẳ","ẵ","è","é","ẹ","ẻ","ẽ","ê","ề",
            "ế","ệ","ể","ễ",
            "ì","í","ị","ỉ","ĩ",
            "ò","ó","ọ","ỏ","õ","ô","ồ","ố","ộ","ổ","ỗ","ơ",
            "ờ","ớ","ợ","ở","ỡ",
            "ù","ú","ụ","ủ","ũ","ư","ừ","ứ","ự","ử","ữ",
            "ỳ","ý","ỵ","ỷ","ỹ",
            "đ",
            "À","Á","Ạ","Ả","Ã","Â","Ầ","Ấ","Ậ","Ẩ","Ẫ","Ă",
            "Ằ","Ắ","Ặ","Ẳ","Ẵ",
            "È","É","Ẹ","Ẻ","Ẽ","Ê","Ề","Ế","Ệ","Ể","Ễ",
            "Ì","Í","Ị","Ỉ","Ĩ",
            "Ò","Ó","Ọ","Ỏ","Õ","Ô","Ồ","Ố","Ộ","Ổ","Ỗ","Ơ",
            "Ờ","Ớ","Ợ","Ở","Ỡ",
            "Ù","Ú","Ụ","Ủ","Ũ","Ư","Ừ","Ứ","Ự","Ử","Ữ",
            "Ỳ","Ý","Ỵ","Ỷ","Ỹ",
            "Đ"," "
        );

        $no_accents_arr=array(
            "a","a","a","a","a","a","a","a","a","a","a",
            "a","a","a","a","a","a",
            "e","e","e","e","e","e","e","e","e","e","e",
            "i","i","i","i","i",
            "o","o","o","o","o","o","o","o","o","o","o","o",
            "o","o","o","o","o",
            "u","u","u","u","u","u","u","u","u","u","u",
            "y","y","y","y","y",
            "d",
            "A","A","A","A","A","A","A","A","A","A","A","A",
            "A","A","A","A","A",
            "E","E","E","E","E","E","E","E","E","E","E",
            "I","I","I","I","I",
            "O","O","O","O","O","O","O","O","O","O","O","O",
            "O","O","O","O","O",
            "U","U","U","U","U","U","U","U","U","U","U",
            "Y","Y","Y","Y","Y",
            "D","-"
        );

        return str_replace($accents_arr,$no_accents_arr,$str);
    }
}
