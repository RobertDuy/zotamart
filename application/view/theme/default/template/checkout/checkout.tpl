<?php echo $header; ?>


<section id="payment_section" class="payment_section" data-wedeliverApiKey="" data-wedeliverUrl="">
	<div class="container">
		<h1>Payment &amp; Details</h1>
		<aside class="payment_order_summary">
			<div class="summary_inner">
				<h2>Order Summary</h2>
				<table class="cart_table">
					<thead>
						<tr>
							<th class="name">Item</th>
							<th class="qty">Qty.</th>
							<th class="price">Price</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="name">Red Velvet</td>
							<td class="qty">1</td>
							<td class="price">$3</td>
						</tr>
						<tr>
							<td class="name">Sprinkles</td>
							<td class="qty">1</td>
							<td class="price">$2.5</td>
						</tr>
						<tr>
							<td class="name">Gender Reveal Doughnut	
							<ul class="extras_list">
								<li>
									<div class="extra_label">Gender</div>
									<div class="extra_value">It's a Boy!	</div>
								</li>
							</ul>
							</td>
							<td class="qty">35</td>
							<td class="price">$3</td>
						</tr>
						<tr>
							<td class="name">Pure Leaf Sweet Iced Tea</td>
							<td class="qty">1</td>
							<td class="price">$2.5</td>
						</tr>
						<tr>
							<td class="name">Dozen Doughnut Holes - Red Velvet			
							<ul class="extras_list">
								<li>
									<div class="extra_label">Extra Toppings</div>
									<div class="extra_value">Nothing	</div>
								</li>
							</ul>
							</td>
							<td class="qty">1</td>
							<td class="price">$5</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<th colspan="2">Subtotal</th>
							<td id="cart_summary_subtotal" class="price">$118</td>
						</tr>
						<tr id='cart_summary_discount_wrap' style="display:none">
							<th colspan="2">Discounts</th>
							<td id="cart_summary_discount" class="price">($0.00)</td>
						</tr>
						<tr>
							<th colspan="2">Tax</th>
							<td id="cart_summary_tax" class="price">$12.39</td>
						</tr>
						<tr>
							<th colspan="2">Delivery</th>
							<td id="cart_summary_delivery" class="price">$0</td>
						</tr>
						<tr>
							<th colspan="2">Total</th>
							<td id="cart_summary_total" class="price">$130.39</td>
						</tr>
					</tfoot>
				</table>
			</div>
            <script>
            function addToCart() {
				var myqty =  myform.elements["input_qty"].value;	
					document.getElementById('test').innerHTML = "Price: 1 <br> Qty: 2";
			}
			 </script>           
               
		<a href="#" onClick="addToCart();"> -</a>
		<div id="test"></div>
            
            
		</aside>
        
         
        
        
		<section id="payment_details_section" class="payment_details_section">
						<form id="payment_details_form" >
							<fieldset id="payment_shipping">
								<legend>Pick-up or Delivery?</legend>
								<div class="form-group">
									<label class="control-label" for="payment_shipping_option">How would you like to receive your order?</label>
									<select class="form-control" id="payment_shipping_option">
										<option value="">Please select...</option>
										<option value="1" >Pickup</option>
										<option value="3" selected="selected">Delivery</option>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label" for="payment_shipping_pickup_date">Date</label>

									<select class="form-control shipping_input" id="payment_shipping_date">
										<option value="04/15/2015" selected='selected'>04/15/2015</option>
										<option value="04/16/2015" >04/16/2015</option>
										<option value="04/17/2015" >04/17/2015</option>
										<option value="04/18/2015" >04/18/2015</option>
										<option value="04/19/2015" >04/19/2015</option>
										<option value="04/20/2015" >04/20/2015</option>
										<option value="04/21/2015" >04/21/2015</option>
										<option value="04/22/2015" >04/22/2015</option>
										<option value="04/23/2015" >04/23/2015</option>
										<option value="04/24/2015" >04/24/2015</option>
										<option value="04/25/2015" >04/25/2015</option>
										<option value="04/26/2015" >04/26/2015</option>
										<option value="04/27/2015" >04/27/2015</option>
										<option value="04/28/2015" >04/28/2015</option>
										<option value="04/29/2015" >04/29/2015</option>
										<option value="04/30/2015" >04/30/2015</option>
										<option value="05/01/2015" >05/01/2015</option>
										<option value="05/02/2015" >05/02/2015</option>
										<option value="05/03/2015" >05/03/2015</option>
										<option value="05/04/2015" >05/04/2015</option>
										<option value="05/05/2015" >05/05/2015</option>
										<option value="05/06/2015" >05/06/2015</option>
										<option value="05/07/2015" >05/07/2015</option>
										<option value="05/08/2015" >05/08/2015</option>
										<option value="05/09/2015" >05/09/2015</option>
										<option value="05/10/2015" >05/10/2015</option>
										<option value="05/11/2015" >05/11/2015</option>
										<option value="05/12/2015" >05/12/2015</option>
									</select>
								</div>
								<div id="online_not_available" class="online_not_available" >
									<h3><i class="fa fa-star"></i> Please Call <i class="fa fa-star"></i></h3>
									<p>New orders are subject to availability after 2pm. Please call a location below to check on availability or call our main line at (312) 226-5556</p>
									<hr>
									<div class="locations">
										<div class="location">
											<address>
												<strong>West Loop</strong><br />
												813 W Fulton Market<br />
												Chicago IL 60607<br />
												<i class="fa fa-phone"></i> (312) 226-5556									
											</address>
										</div>
										<div class="location">
											<address>
												<strong>River North</strong><br />
												30 E Hubbard Street<br />
												Chicago IL 60611<br />
												<i class="fa fa-phone"></i> (312) 226-5556									
											</address>
										</div>
										<div class="location">
											<address>
												<strong>Wicker Park</strong><br />
												1576 N Milwaukee Ave<br />
												Chicago IL 60622<br />
												<i class="fa fa-phone"></i> (312) 226-5556									
											</address>
										</div>
										<div class="location">
											<address>
												<strong>Streeterville</strong><br />
												201 E. Delaware Place<br />
												Chicago IL 60611<br />
												<i class="fa fa-phone"></i> (312) 226-5556									
											</address>
										</div>
										<div class="location">
										<address>
												<strong>Lincoln Park</strong><br />
												939 W Armitage Ave<br />
												Chicago IL 60614<br />
												<i class="fa fa-phone"></i> (312) 226-5556									
											</address>
										</div>
										<div class="location">
											<address>
												<strong>The Loop</strong><br />
												222 N. LaSalle<br />
												Chicago Il 60181<br />
												<i class="fa fa-phone"></i> (312) 226-5556									
											</address>
										</div>
									</div>
								</div>
								<div id="payment_shipping_opts_1" class="payment_shipping_opt payment_pickup_location" >
								<label class="separate_label">Please select from the available pick-up locations below:</label>
								<div class="payment_pickup_location_list">
									<div class="form-group">
										<div class="radio">
											<label>
												<input type="radio" class="payment_shipping_pickup_location shipping_input" value="0" name = "payment_shipping_pickup_location">
												<address>
													<strong>West Loop</strong><br />
													813 W Fulton Market<br />
													Chicago IL 60607												
												</address>
											</label>
										</div>
									</div>
									<div class="form-group">
										<div class="radio">
											<label>
												<input type="radio" class="payment_shipping_pickup_location shipping_input" value="1" name = "payment_shipping_pickup_location">
												<address>
													<strong>River North</strong><br />
													30 E Hubbard Street<br />
													Chicago IL 60611												
												</address>
											</label>
										</div>
									</div>
									<div class="form-group">
										<div class="radio">
											<label>
												<input type="radio" class="payment_shipping_pickup_location shipping_input" value="2" name = "payment_shipping_pickup_location">
												<address>
													<strong>Wicker Park</strong><br />
													1576 N Milwaukee Ave<br />
													Chicago IL 60622												
												</address>
											</label>
										</div>
									</div>
									<div class="form-group">
										<div class="radio">
											<label>
												<input type="radio" class="payment_shipping_pickup_location shipping_input" value="3" name = "payment_shipping_pickup_location">
												<address>
													<strong>Streeterville</strong><br />
													201 E. Delaware Place<br />
													Chicago IL 60611											
												</address>
											</label>
										</div>
									</div>
									<div class="form-group">
										<div class="radio">
											<label>
												<input type="radio" class="payment_shipping_pickup_location shipping_input" value="4" name = "payment_shipping_pickup_location">
												<address>
													<strong>Lincoln Park</strong><br />
													939 W Armitage Ave<br />
													Chicago IL 60614												
												</address>
											</label>
										</div>
									</div>
									<div class="form-group">
										<div class="radio">
											<label>
												<input type="radio" class="payment_shipping_pickup_location shipping_input" value="5" name = "payment_shipping_pickup_location">
												<address>
													<strong>The Loop</strong><br />
													222 N. LaSalle<br />
													Chicago Il 60181												
												</address>
											</label>
										</div>
									</div>
								</div>
							</div>
							<div id="payment_shipping_opts_3" class="payment_shipping_opt payment_delivery_location show_sync_checkbox" style="display:block">
								<label class="separate_label">Enter your delivery address below:</label>
								<input type="hidden" id="payment_shipping_lat" value="">
								<input type="hidden" id="payment_shipping_lng" value="">
								<div class="form-group">
									<label class="control-label" for="payment_shipping_firstName">First Name</label>
									<input type="text" class="form-control shipping_input" id="payment_shipping_firstName" value="">
								</div>
								<div class="form-group">
									<label class="control-label" for="payment_shipping_lastName">Last Name</label>
									<input type="text" class="form-control shipping_input" id="payment_shipping_lastName" value="">
								</div>
								<div class="form-group">
									<label class="control-label" for="payment_shipping_company">Company</label>
									<input type="text" class="form-control shipping_input" id="payment_shipping_company" value="">
								</div>
								<div class="form-group">
									<label class="control-label" for="payment_shipping_streetAddress">Address 1</label>
									<input type="text" class="form-control shipping_input" id="payment_shipping_streetAddress" value="">
								</div>
								<div class="form-group">
									<label class="control-label" for="payment_shipping_extendedAddress">Address 2</label>
									<input type="text" class="form-control shipping_input" id="payment_shipping_extendedAddress" value="">
								</div>
								<div class="address_block">
									<div class="city">
										<div class="form-group">
											<label class="control-label" for="payment_shipping_locality">City</label>
											<input type="text" class="form-control shipping_input" id="payment_shipping_locality" value="">
										</div>
									</div>
									<div class="state">
										<div class="form-group">
											<label class="control-label" for="payment_shipping_region">State</label>
											<input type="text" class="form-control shipping_input" id="payment_shipping_region" value="">
										</div>
									</div>
									<div class="zip">
										<div class="form-group">
											<label class="control-label" for="payment_shipping_postalCode">Zip Code</label>
											<input type="text" class="form-control shipping_input" id="payment_shipping_postalCode" value="">
										</div>
									</div>
								</div>
								<div class="datetime_block">
									<div class="time_block">
										<div class="form-group">
											<label class="control-label" for="payment_shipping_time">Drop Off Time</label>
											<select class="form-control shipping_input" id="payment_shipping_time">
												<option value="8:00 AM">8:00 AM</option>
												<option value="9:00 AM">9:00 AM	</option>
												<option value="10:00 AM">10:00 AM</option>
												<option value="11:00 AM">11:00 AM</option>
												<option value="12:00 PM">12:00 PM</option>
												<option value="1:00 PM">1:00 PM	</option>
												<option value="2:00 PM">2:00 PM	</option>
												<option value="3:00 PM">3:00 PM	</option>
												<option value="4:00 PM">4:00 PM	</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</fieldset>
						<fieldset id="payment_billing" >
							<legend>Billing Address</legend>
							<div class="form-group" id="billing_same_as_shipping_wrap" style="display:block">
								<label><input type="checkbox" id="billing_same_as_shipping" > Same As Shipping</label>
							</div>
							<div class="form-group">
								<label class="control-label" for="payment_billing_firstName">First Name</label>
								<input type="text" class="form-control billing_input" id="payment_customer_firstName"  value="">
							</div>
							<div class="form-group">
								<label class="control-label" for="payment_billing_lastName">Last Name</label>
								<input type="text" class="form-control billing_input" id="payment_customer_lastName"  value="">
							</div>
							<div class="form-group">
								<label class="control-label" for="payment_billing_email">Email</label>
								<input type="email" class="form-control billing_input" id="payment_customer_email" value="">
							</div>
							<div class="form-group">
								<label class="control-label" for="payment_billing_phone">phone</label>
								<input type="phone" class="form-control billing_input" id="payment_customer_phone" value="">
							</div>
							<div class="form-group">
								<label class="control-label" for="payment_billing_company">Company</label>
								<input type="text" class="form-control billing_input" id="payment_billing_company" value="">
							</div>
							<div class="form-group">
								<label class="control-label" for="payment_billing_streetAddress">Address 1</label>
								<input type="text" class="form-control billing_input" id="payment_billing_streetAddress" value="">
							</div>
							<div class="form-group">
								<label class="control-label" for="payment_billing_extendedAddress">Address 2</label>
								<input type="text" class="form-control billing_input" id="payment_billing_extendedAddress" value="">
							</div>
							<div class="address_block">
								<div class="city">
									<div class="form-group">
										<label class="control-label" for="payment_billing_locality">City</label>
										<input type="text" class="form-control billing_input" id="payment_billing_locality" value="">
									</div>
								</div>
								<div class="state">
									<div class="form-group">
										<label class="control-label" for="payment_billing_region">State</label>
										<input type="text" class="form-control billing_input" id="payment_billing_region" value="">
									</div>
								</div>
								<div class="zip">
									<div class="form-group">
										<label class="control-label" for="payment_billing_postalCode">Zip Code</label>
										<input type="text" class="form-control billing_input" id="payment_billing_postalCode" data-braintree-name="postal_code" value="">
									</div>
								</div>
							</div>
						</fieldset>
						<fieldset id="payment_cardinfo" >
							<legend>Payment</legend>
							<div class="form-group">
								<label class="control-label" for="payment_paymentMethod_cardholderName">Cardholder Name</label>
								<input type="text" class="form-control" id="payment_paymentMethod_cardholderName" data-braintree-name="cardholder_name">
							</div>
							<div class="form-group">
								<label class="control-label" for="payment_paymentMethod_number">Card Number</label>
								<input type="text" class="form-control" id="payment_paymentMethod_number" data-braintree-name="number">
							</div>
							<div class="credit_card_block">
								<div class="cvv">
									<div class="form-group">
										<label class="control-label" for="payment_paymentMethod_cvv">Verification Code</label>
										<input type="text" class="form-control" id="payment_paymentMethod_cvv" data-braintree-name="cvv">
									</div>
								</div>
								<div class="expiration">
									<div class="form-group">
										<label class="control-label" for="payment_paymentMethod_expirationDate">Expiration Date</label>
										<input type="text" class="form-control" id="payment_paymentMethod_expirationDate" data-braintree-name="expiration_date">
									</div>
								</div>
							</div>
						</fieldset>
						<fieldset id="promo_codes" >
							<legend>Promotion / Coupon Code</legend>
							<div class="form-group">
								<label class="control-label" for="payment_shipping_option">Promotion Code</label>
								<input type="text" class="form-control" id="promo_code">
							</div>
						</fieldset>
					<div class="payment_submit_controls" >
						<button class="payment_submit_btn">Place Your Order!</button>
					</div>
				</form>
			</section>
	</div>
</section>

<?php echo $footer; ?>