<?php echo $header; ?>

<section class="product_details_section">
	<div class="container">
		<div class="photos">
			<div class="photo_wrap">
				<div class="main">
				    <img src="<?php echo STATIC_FILE_PATH; ?>/images/_0013_chocolate4_large.png" >
				</div>
				<div class="thumbs">
					<ul>
						<li>
							<a href="images/_0013_chocolate4_large.png" class="thumb_btn">
								<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0013_chocolate4_small.png" >
							</a>
						</li>
						<li>
							<a href="images/chocolate4_1_large.JPG" class="thumb_btn">
								<img src="<?php echo STATIC_FILE_PATH; ?>/images/chocolate4_1_small.JPG" >
							</a>
						</li>
						<li>
							<a href="images/chocolate4_2_large.jpg" class="thumb_btn">
								<img src="<?php echo STATIC_FILE_PATH; ?>/images/chocolate4_2_small.jpg" >
							</a>
						</li>
						<li>
							<a href="images/chocolate4_3_large.jpg" class="thumb_btn">
								<img src="<?php echo STATIC_FILE_PATH; ?>/images/chocolate4_3_small.jpg" >
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="details">
			<div class="price">
				$3.00			
			</div>
			<h1>Chocolate<sup>4</sup></h1>
			<div class="type_item">
				<span class="icon_type">Type</span> Specialty									
			</div>
			<div class="type_item">
				<span class="icon_type">Type</span> Cake									
			</div>
			<div class="type_item">
				<span class="icon_mini">Mini</span> Available in Mini (by the dozen only)
			</div>
			<div class="description">
				Chocolate cake with chocolate ganache glaze and topped with dark and white chocolate curls			
			</div>
           <div class="description"> <strong>Order must be placed by 2:00pm </strong><br></div>  
            
			<form method="GET" action="#" name="myform">
				<input type="hidden" name="action" value="add_to_cart">
				<input type="hidden" name="item_id" value="4">

			  <div class="form-group">
              
              <!--Warning javascript-->
				  <script>
				 
				  
				  function Minimum()
				  {
				  var myqty = document.myform.qty;
				  if (myqty.value < 12 ){
				  document.getElementById('mywarnings').style.display = 'block';  	
				  document.getElementById('mywarnings').innerHTML = 'Sorry, Minimum order is 12 doughnuts per order.';
				  document.myform.qty.value = 12;
				  return false;
				  }
				  if (myqty.value >= 12 ){	
				  document.getElementById('mywarnings').innerHTML = '';
				  document.getElementById('mywarnings').style.display = 'none'; 
				 
				  return false;
				  }
				  }
				  </script>
				  <!--//Warning javascript-->
               
				   <label for="input_qty">QTY</label>
					<input type="tel" class="form-control" name="qty" id="input_qty" value="1">				
				</div>

                <div id='mywarnings' class="mywarnings"></div>
                           
				<div class="controls">
					<button class="add_to_cart" >Add To Cart</button>
					<a href="#" class="continue_shopping">Continue Shopping</a>
				</div>
			</form>
		</div>
		<div class="product_promo">
			<div class="header">
				Any one dozen doughnut assortment for $30 or less!
			</div>
			<div class="body">
				<p>Mix and match your Glazed &amp; Infused dozen doughnuts order any way you please! The cost will never exceed $30, regardless of which doughnuts you choose!</p>
			</div>
		</div>
	</div>
</section>

<section class="product_upsell">

	<div class="container">
		<h1>More Doughnuts</h1>
		<div class="product_list_wrap">
			<div class="product_list_carousel_container">
				<div class="product_list_carousel">
					<div>
						<a href="#">
							<div class="thumb_wrap">
								<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0013_chocolate4_small.png">
							</div>
							<div class="menu_item_controls">
								<div class="meta">
									<h4>Chocolate<sup>4</sup></h4>
									<div class="price">$3</div>
								</div>
							</div>
						</a>
					</div>
											<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0003_redvelvet_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Red Velvet</h4>
										<div class="price">$3</div>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0001_vanillaglazed_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Vanilla Bean Glazed</h4>
										<div class="price">$2</div>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0006_maplebacon_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Maple Bacon Long John</h4>
										<div class="price">$3</div>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0017_applefritter_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Fruit Fritter of the day</h4>
										<div class="price">$3</div>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0004_oldfashioned_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Old Fashioned</h4>
										<div class="price">$2.5</div>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/Sprinkle_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Sprinkles</h4>
										<div class="price">$2.5</div>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0015_birthday_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Happy Birthday</h4>
										<div class="price">$3</div>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/Peanut_Butter_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Chocolate-Peanut Butter Bismarck</h4>
										<div class="price">$3</div>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/Stawberry_cheesecake_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Blackberry Cheesecake</h4>
										<div class="price">$3</div>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/Raspberry_oreo_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Raspberry Oreo</h4>
										<div class="price">$3</div>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/Key_Lime_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Key Lime Pie</h4>
										<div class="price">$3</div>
									</div>
								</div>
							</a>
						</div>
						<div>
							<a href="#">
								<div class="thumb_wrap">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/TerrysToffee_small.png">
								</div>
								<div class="menu_item_controls">
									<div class="meta">
										<h4>Terrys Toffee</h4>
										<div class="price">$3</div>
									</div>
								</div>
							</a>
						</div>
					</div>
			</div>
		</div>
	</div>
</section>

<?php echo $footer; ?>
