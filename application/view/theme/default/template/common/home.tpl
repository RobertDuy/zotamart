<?php echo $header; ?>

<section id="homepage-hero">
	<div class="container">
		<div class="image"></div>
		<div class="copy">Handcrafted &amp; Uniquely Innovative</div>
	</div>
</section>

<div class="container">
	<section id="homepage-order-here">
		<a href="products.php">Order Here</a>
		<span class="delivery">&bull; Delivery &bull;</span>
		<span class="pick-up">&bull; Pick Up &bull;</span>
	</section>	
</div>
<div class="products_section">
	<div class="container">
		<div class="categories">
                <?php $index = 0; ?>
                <?php foreach($categories as $category) { ?>
                    <section class="category" id="category_<?php echo $index; ?>">
                        <h1><a href="<?php echo $category['link']; ?>"><?php echo $category['name'];?></a></h1>
                        <ul class="product_wrap">
                            <?php foreach($category['product_promotions'] as $product_promotion){ ?>
                                <li>
                                    <a href="<?php echo $product_promotion['link']; ?>" >
                                        <div class="thumb_wrap">
                                            <img src="<?php echo $product_promotion['image']; ?>">
                                        </div>
                                        <div class="menu_item_controls">
                                            <div class="meta">
                                                <h4><?php echo $product_promotion['product_name']?></h4>
                                                <div class="price"><?php echo $product_promotion['price'];?></div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            <?php } ?>
                        </ul>
                    </section>
                <?php $index ++; } ?>
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
<div class="container">
	<section id="homepage-big-three">
		<ul>
			<li class="catering-services">
				<img alt="" src="<?php echo STATIC_FILE_PATH; ?>/images/homepage-catering.png" />
				<h1>Adroid</h1>
				<p>Are you in dire need of a doughnut shop that caters? Learn about Glazed &amp; Infused's custom and local catering services by contacting our Sales &amp; Catering Manager who ready to discuss your most creative doughnut desires!</p>					
			</li>
			<li class="locally-sourced">
				<img alt="" src="<?php echo STATIC_FILE_PATH; ?>/images/homepage-coffee-and-cafe.png" />
				<h1>IOS</h1>
				<p>Glazed &amp; Infused proudly sources all freshly roasted, ground coffee from local sources. Enjoy espresso, cappuccino and lattes of the finest quality!</p>					
			</li>
			<li class="gift-cards">
				<img alt="" src="<?php echo STATIC_FILE_PATH; ?>/images/homepage-gift-cards.png" />
				<h1>Window Phone</h1>
				<p>Give the gift of Glazed! As part of the Francesca’s Restaurant Group, Glazed &amp; Infused Gift Cards are good at any of our Glazed &amp; Infused, Francesca’s or Davanti Enoteca locations.</p>					
			</li>
		</ul>
	</section>

			
</div>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key="></script>
		<script type="text/javascript">
			var geocoder,map,loc={},center;
			var address = "813 W Fulton Chicago, IL 60607";
			var radius = 1; //only deliver within 1 mile
			
			var style=[{"featureType":"water","stylers":[{"visibility":"on"},{"color":"#acbcc9"}]},{"featureType":"landscape","stylers":[{"color":"#f2e5d4"}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#c5c6c6"}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#e4d7c6"}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#fbfaf7"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#c5dac6"}]},{"featureType":"administrative","stylers":[{"visibility":"on"},{"lightness":33}]},{"featureType":"road"},{"featureType":"poi.park","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":20}]},{},{"featureType":"road","stylers":[{"lightness":20}]}];

			function initialize() {
				geocoder = new google.maps.Geocoder();
				geocoder.geocode( { 'address': address}, function(results, status){
					loc.lat=results[0].geometry.location.lat();
					loc.lng=results[0].geometry.location.lng();
					
					center = new google.maps.LatLng(loc.lat, loc.lng);
					console.log(loc);
					var mapOptions = {
						center: center,
						zoom: 14,
						styles: style
					};
					map = new google.maps.Map(document.getElementById("delivery_map"), mapOptions);

					var myCity = new google.maps.Circle({
						center:center,
						map: map,
						radius:radius*1609.34,
						strokeWeight:2,
						strokeColor:'#f8962d',
						fillColor:"#f8962d",
						fillOpacity:0.25
					});

					var storeMarker = new google.maps.Marker({
						position: center,
						map: map,
						icon: 'assets/images/map_marker.png'
					});
				});
			}
			google.maps.event.addDomListener(window, 'load', initialize);
		</script>
		<section id="services-delivery">
			<div class="map_wrap">
			<div id="delivery_map" class="map"></div>
			</div>
			<div class="content">
				<div class="content-inner">
					<h1>WE DELIVER!</h1>
					<p>Glazed &amp; Infused offers delivery for our gourmet doughnuts and coffee seven days a week during regular business hours through a third party service (does not include late night service from Wicker Park). Fees vary based on distance. Same-day delivery is subject to availability. <strong>We recommend placing large orders for delivery at least 48 hours in advance.</strong></p>				</div>
			</div>
		</section>


<?php echo $footer; ?>