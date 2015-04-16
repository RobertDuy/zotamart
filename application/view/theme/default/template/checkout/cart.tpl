<?php echo $header; ?>

<script src="<?php echo STATIC_FILE_PATH; ?>/js/handlebars-v1.3.0.js"></script>
	<script src="<?php echo STATIC_FILE_PATH; ?>/js/menu.js"></script>		
	<section class="menu_section">
			<div class="container">
				<div class="menu_items">
					<h1>Your Order</h1>
					<ul id="item_tiles">
						<li>
							<div class="thumb_wrap">
								<a href="product.php?id=5">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0003_redvelvet_small.png">
								</a>
							</div>
							<div class="menu_item_controls">
								<div class="meta">
									<h4>Red Velvet</h4>
									<div class="price">$3</div>
								</div>
								<div class="qty">
									<form  name="myform">
										<button type="button" data-index="0" class="add_qty"><i class="fa fa-plus-circle"></i></button>
										<button type="button" data-index="0" class="sub_qty"><i class="fa fa-minus-circle"></i></button>
										<input data-index="0" id="item_0_qty" class="set_qty" type="text" value="1">
									</form>
								</div>
                                 
							</div>
						</li>
						<li>
							<div class="thumb_wrap">
                            
								<a href="product.php?id=14">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/RedVelvetHoles_small.png">
								</a>
							</div>
							<div class="menu_item_controls">
								<div class="meta">
									<h4>Dozen Doughnut Holes - Red Velvet</h4>
									<div class="price">$5</div>
								</div>
								<div class="qty">
									<form  name="myform">
										<button type="button" data-index="1" class="add_qty"><i class="fa fa-plus-circle"></i></button>
										<button type="button" data-index="1" class="sub_qty"><i class="fa fa-minus-circle"></i></button>
										<input data-index="1" id="item_1_qty" class="set_qty" type="text" value="1">
									</form>
								</div>
                                 
							</div>
						</li>
						<li>
							<div class="thumb_wrap">
                            
								<a href="product.php?id=16">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0018_mini_small.png">
								</a>
							</div>
							<div class="menu_item_controls">
								<div class="meta">
									<h4>Dozen Minis</h4>
									<div class="price">$12</div>
								</div>
								<div class="qty">
									<form  name="myform">
										<button type="button" data-index="2" class="add_qty"><i class="fa fa-plus-circle"></i></button>
										<button type="button" data-index="2" class="sub_qty"><i class="fa fa-minus-circle"></i></button>
										<input data-index="2" id="item_2_qty" class="set_qty" type="text" value="1">
									</form>
								</div>
                                 
							</div>
						</li>
						<li>
							<div class="thumb_wrap">
                            
								<a href="product.php?id=18">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0010_fondue_small.png">
								</a>
							</div>
							<div class="menu_item_controls">
								<div class="meta">
									<h4>Doughnut Fondue Platter</h4>
									<div class="price">$38</div>
								</div>
								<div class="qty">
									<form  name="myform">
										<button type="button" data-index="3" class="add_qty"><i class="fa fa-plus-circle"></i></button>
										<button type="button" data-index="3" class="sub_qty"><i class="fa fa-minus-circle"></i></button>
										<input data-index="3" id="item_3_qty" class="set_qty" type="text" value="1">
									</form>
								</div>
                                 
							</div>
						</li>
						<li>
							<div class="thumb_wrap">
                            
								<a href="product.php?id=27">
									<img src="<?php echo STATIC_FILE_PATH; ?>/images/_0003_milkskim_small.png">
								</a>
							</div>
							<div class="menu_item_controls">
								<div class="meta">
									<h4>Skim Milk</h4>
									<div class="price">$1.1</div>
								</div>
								<div class="qty">
									<form  name="myform">
										<button type="button" data-index="4" class="add_qty"><i class="fa fa-plus-circle"></i></button>
										<button type="button" data-index="4" class="sub_qty"><i class="fa fa-minus-circle"></i></button>
										<input data-index="4" id="item_4_qty" class="set_qty" type="text" value="2">
									</form>
								</div>
                                 
							</div>
						</li>
					</ul>
					<div id='empty_cart' class="empty_cart" style="display:none">
						<h3>You doughnut have any items!</h3>
						<img src="images/cart-empty-woman.png">
						<p>It appears that your cart is empty</p>
						<a href="#" class="btn">Pick Your Doughnuts</a>
					</div>
				</div>
				
				<aside class="menu_cart">
					<div class="cart_summary">
						<h2>Summary</h2>
						<table class="cart_table">
							<tbody id="cart_summary_tbody">
								<tr>
									<td class="name">Red Velvet</td>
									<td class="qty">1</td>
									<td class="price">$3</td>
								</tr>
								<tr>
									<td class="name">Dozen Doughnut Holes - Red Velvet</td>
									<td class="qty">1</td>
									<td class="price">$5</td>
								</tr>
								<tr>
									<td class="name">Dozen Minis</td>
									<td class="qty">1</td>
									<td class="price">$12</td>
								</tr>
								<tr>
									<td class="name">Doughnut Fondue Platter</td>
									<td class="qty">1</td>
									<td class="price">$38</td>
								</tr>
								<tr>
									<td class="name">Skim Milk</td>
									<td class="qty">2</td>
									<td class="price">$1.1</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<th colspan="2">Subtotal</th>
									<td id="cart_summary_subtotal" class="price">$60.20</td>
								</tr>
								<tr id='cart_summary_discount_wrap' style="display:none">
									<th colspan="2">Discounts</th>
									<td id="cart_summary_discount" class="price">($0.00)</td>
								</tr>
								<tr>
									<th colspan="2">Tax</th>
									<td id="cart_summary_tax" class="price">$6.32</td>
								</tr>
								<tr>
									<th colspan="2">Total</th>
									<td id="cart_summary_total" class="price">$66.52</td>
								</tr>
							</tfoot>
						</table>
						
					</div>
					<a class="checkout_btn" href="confirm.php">Checkout!</a>
                 
                    
					<p class="checkout_disclaimer">$10 order minumum</p>
					<p class="empty_cart"><a href="#" id="empty_cart_btn">Empty Cart</a></p>
					<div class="help_info">
						<h3>Delivery</h3>
						<p>We deliver to any location in Chicago and the neighboring suburbs. Delivery fees vary based on distance from our flagship store in Chicago’s West Loop.</p>
						<p><strong>Hours:</strong> 7am - 10am</p>
						<h3>Pickup</h3>
						<p>Pick up is available at one of the following, permanent <a href="locations.php">locations</a>.</p>					
					</div>
				</aside>
			</div>
		</section>
		<section id="menu_faq" class="menu_faq_section container">
			<h1>Frequently Asked Questions</h1>
			<div class="faq_ordering faq_section">
	            <h2>Ordering</h2>
				<ul>
					<li>
						<h3>How far in advance do I need to order my doughnuts?</h3>
						<p>We offer same-day pick-up and same-day delivery for our regular selection of doughnuts (subject to availability).</p>
						<p>Orders for specialty doughnuts such as Minis, Mini Platters, Jumbo Doughnuts, Doughnut Holes, and Fondue Platters must be placed at least one day in advance. Orders must be placed by 2:00pm CST.</p>
						<p>Catering orders and custom doughnut orders must be placed at least 48-hours in advance by emailing our Sales &amp; Catering Manager at sales@goglazed.com or by calling (312) 226-5556. Some catering and custom orders may be subject to production restrictions. </p>
					</li>
					<li>
						<h3>Is there an order minimum?</h3>
						<p>Yes. All online orders require a minimum purchase of $10.</p>
					</li>
					<li>
						<h3>How is sales tax calculated?</h3>
						<p>Your order will be taxed on the amount of your Glazed &amp; Infused purchase at the current Cook County Sales Tax rate for our West Loop location. Delivery fees will not incur sales tax.</p>
					</li>
					<li>
						<h3>Which payment methods do you accept?</h3>
						<p>Glazed &amp; Infused accepts most credit and debit cards, including Visa, MasterCard, American Express, and Discover.</p>
					</li>
					<li>
						<h3>How do I cancel my order?</h3>
						<p>Orders may be cancelled by calling (312) 226-5556 at least 24-hours in advance of your scheduled pick-up or delivery time. All same-day pick-up and delivery sales are final. </p>
					</li>
				</ul>			
			</div>
			<div class="faq_delivery faq_section">
				<h2>Delivery</h2>
				<ul>
					<li>
						<h3>Where do you deliver?</h3>
						<p>We can deliver Glazed &amp; Infused doughnuts to any location in Chicago and the neighboring suburbs. We do not deliver out-of-state. Delivery fees vary based on distance from our flagship store in Chicago’s West Loop. </p>
					</li>
					<li>
						<h3>Does Glazed &amp; Infused deliver coffee?</h3>
						<p>At this time, we only deliver our Joe-To-Go coffee boxes (serves ten and includes cups, lids, sleeves, sweeteners and cream). Stop by any of our Glazed &amp; Infused locations to enjoy a locally sourced selection of café beverages and specialty-roasted coffee. </p>
					</li>
					<li>
						<h3>Where can I find Glazed &amp; Infused doughnuts outside of Chicago?</h3>
						<p>Currently, Glazed &amp; Infused doughnuts are sold on Saturdays &amp; Sundays at select suburban Francesca’s Restaurant Group locations. For more information, please visit our Locations Page. Orders may be placed in advance for pick-up at these locations by calling (312) 226-5556.</p>
					</li>
				</ul>			
			</div>
	</section>


<?php echo $footer; ?>