<?php echo $header; ?>

<div class="services_detail" id="page-container">
		<div class="container">
			<div class="services_main_col">
				<section class="services_articles">
					<article>
	                    <div class="featured_image">
	                       	<p><img src="<?php echo STATIC_FILE_PATH; ?>/images/services_feature_image.jpg" title="" alt="" height="414" width="621" /></p>	
				        </div>

						<div class="content">
	                       	<h1>Weddings &amp; Special Events</h1>
							<h2>Creative concepts, décor and more</h2>
							<p>Forget
							 the cupcakes and macaroons. The best trend in unique desserts is - you
							guessed it - fresh...gourmet...doughnuts! Whether you’re hosting a wedding, birthday
							party, baby shower, graduation, holiday celebration, or corporate event,
							 the team at Glazed &amp; Infused Doughnut and Coffee Shop is ready to hear your ideas and create the perfect treat for your guests.</p>
							<p>Custom
							 decorations can include various colors of sprinkles and icing,
							toppings, messages, and more. We’ve done doughnut towers, doughnut bars,
							 branded doughnuts and even doughnut ice cream sandwiches! Doughnut
							holes and minis make excellent party favors, and we will package them in
							 individual favor bags or boxes for a nominal charge.</p>
							<p>Looking
							 for inspiration? Visit our Facebook or Instagram page and see how
							fellow doughnut-lovers around Chicago, IL have used our crafty confection!</p>		
						</div>
					</article>

				</section>
				<section class="services_contact_form">
					<form method="post" action="#">
						<h1>Contact Us</h1>
						<div class="form-group">
							<label for="contact_name_field">Name</label>
							<input type="text" name="contact[name]" id="contact_name_field" value="" />
						</div>

						<div class="form-group">
							<label for="contact_email_field">Email</label>
							<input type="email" name="contact[email]" id="contact_email_field" value="" />
						</div>

						<div class="form-group">
							<label for="contact_phone_field">Phone</label>
							<input type="tel" name="contact[phone]" id="contact_phone_field" value="" />
						</div>

						<div class="form-group">
							<label for="contact_address_field">Address</label>
							<input type="text" name="contact[address]" id="contact_address_field" value="" />
						</div>

						<div class="form-group">
							<label for="contact_comments_field">Comments</label>
							<textarea name="contact[comments]" id="contact_comments_field"></textarea>
						</div>

						<button type="submit">Send!</button>
					</form>
				</section>
			</div>
			<aside class="services_aside">
				<section id="blog-articles-sidebar">
					<h1>More Services</h1>
					<ul class="more_services">
                    	<li>
							<a href="weddings__special_events">Weddings & Special Events</a>
						</li>
                    	<li>
							<a href="workplace_infusion">Workplace Infusion</a>
						</li>
                    	<li>
							<a href="wholesale_opportunities">Wholesale Opportunities!</a>
						</li>
                    	<li>
							<a href="decorating_events">Decorating Events</a>
						</li>
                    </ul>
                    <div class="contact_info">
                    	<ul>
                    		<li><strong>Call</strong>312-226-5556</li>
                    		<li><strong>Email</strong><a href="mailto:catering@goglazed.com">catering@goglazed.com</a></li>
                    	</ul>
                    </div>
				</section>
			</aside>
		</div>

		<br class="clear" />
	</div>

<?php echo $footer; ?>
