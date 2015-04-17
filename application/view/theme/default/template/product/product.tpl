<?php echo $header; ?>

<div class="products_header">
	<img src="<?php echo STATIC_FILE_PATH; ?>/images/product_header_text.png">
</div>

<div class="products_section">

	<div class="container">

		<div class="categories">

			<div class="category_toc">
				<ul>
					<li><a href="#category_0">Doughnuts</a></li>
					<li><a href="#category_1">Fun-Sized</a></li>
					<li><a href="#category_2">Specialty</a></li>
					<li><a href="#category_3">Beverages</a></li>
					<li><a href="#category_4">Coffee</a></li>
					<li><a href="#category_10">Merchandise</a></li>
				</ul>
			</div>

				<section class="category" id="category_1">
					<h1>Sản phẩm nổi bật</h1>
					<ul class="product_wrap">
                        <?php foreach($promotion_products as $promotion_product) { ?>
                            <li>
                                <a href="<?php echo $promotion_product['link'] ?>">
                                    <div class="thumb_wrap">
                                        <img src="<?php echo $promotion_product['image'];?>"/>
                                    </div>
                                    <div class="menu_item_controls">
                                        <div class="meta">
                                            <h4><?php echo $promotion_product['product_name'];?></h4>
                                            <div class="price"><?php echo $promotion_product['price']?></div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        <?php } ?>
					</ul>
				</section>

				<section class="category" id="category_2">
					<h1>Sản phẩm được ưa chuộng</h1>
					<ul class="product_wrap">
                        <?php foreach($products as $product) { ?>
                        <li>
                            <a href="<?php echo $product['link'];?>" >
                                <div class="thumb_wrap">
                                    <img src="<?php echo $product['image']?>">
                                </div>
                                <div class="menu_item_controls">
                                    <div class="meta">
                                        <h4><?php echo $product['product_name']?></h4>
                                        <div class="price"><?php echo $product['price']?></div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <?php } ?>
					</ul>
				</section>
		</div>

		<aside class="specials">
			<div class="special">
				<h2><i class="fa fa-star-o"></i> Glazed Gear <i class="fa fa-star-o"></i></h2>
				<ul>
					<li>
						<a href="product/23">
							<div class="thumb_wrap">
								<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0002_glazedtee_small.png"/>
							</div>
							<div class="menu_item_controls">
								<div class="meta">
									<h4>Red Velvet Chicago Flag T-Shirt</h4>
									<div class="price">$18</div>
								</div>
							</div>
						</a>
						</li>
						<li>
							<a href="product/francescas-restaurants-gift-card">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0003_giftcard_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Francescas Restaurants Gift Card</h4>
										<div class="price">$20</div>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="product/francescas-restaurants-50-gift-card">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0003_giftcard_small.png"/>
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Francescas Restaurants $50 Gift Card</h4>
										<div class="price">$50</div>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="product/65">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/Hoodie_2_small.png"/>
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Red Velvet Chicago Flag Hoodie</h4>
										<div class="price">$35</div>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="product/67">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/UglyHolidaySweater2014_small.png">
								</div>

								<div class="menu_item_controls">
									<div class="meta">
										<h4>2014 Ugly Holiday Sweater</h4>
										<div class="price">$20</div>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="product/rosie-the-riveter-travel-mug">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/RosieTervis_small.png"/>
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Rosie the Riveter Travel Mug</h4>
										<div class="price">$20</div>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="product/orange-logo-travel-mug">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/OrangeLogoTervis_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Orange Logo Travel Mug</h4>
										<div class="price">$20</div>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="product/chicago-flag-doughnut-travel-mug">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/ChicagoFlagTervis_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Chicago Flag Doughnut Travel Mug</h4>
										<div class="price">$20</div>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="product/83">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/BlueSkyline_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Navy Chicago Skyline T-Shirt</h4>
										<div class="price">$15</div>
									</div>
								</div>
							</a>
						</li>
						<li>
							<a href="product/85">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/RedSkylineTee_small.png"/>
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Red Chicago Skyline T-Shirt</h4>
										<div class="price">$15</div>
									</div>
								</div>
							</a>
						</li>
				</ul>
			</div>
		</aside>
	</div>
</div>

<?php echo $footer; ?>