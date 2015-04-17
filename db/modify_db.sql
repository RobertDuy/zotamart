ALTER TABLE `product` ADD (
   `catalog_id_path` varchar(100),
   `catalog_name_path` varchar(100),
   `isPromotionProduct` int(1),
   `category_id` int(100)
);