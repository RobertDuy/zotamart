<?php echo $header; ?>


<section id="services-hero">
			<h1>
				<div class="title"><i class="fa fa-star"></i> Catering <i class="fa fa-star"></i></div>
				<div class="subtitle">& On-Site Sales</div>
				</h1>
		</section>
		
		<div id="services-catering" class="container">
			<h1>Catering</h1>
			<div id="services-contact">
				<div id="services-phone">
					<label>Call</label> (312) 226-5556
				</div>
				<div id="services-email">
					<label>Email</label> <a href="mailto:sales@goglazed.com">sales@goglazed.com</a>
				</div>
			</div>
			<br class="clear" />
			
			<ul>
				<li>
					<h1>Weddings &amp; Special Events</h1>
					<h2>Creative concepts, décor and more</h2>
					<p>Forget the cupcakes and macaroons. The best trend in unique desserts is - you guessed it - fresh...gourmet...doughnuts! Whether you’re hosting a wedding, birthday party, baby shower, graduation, holiday celebration, or corporate event, the team at Glazed &amp; Infused is ready to hear your ideas and create the perfect treat for your guests.</p>
					<p>&nbsp;</p>
					<p>Custom decorations can include various colors of sprinkles and icing, toppings, messages, and more. We’ve done doughnut bars, branded doughnuts and even doughnut ice cream sandwiches! Doughnut holes and minis make excellent party favors, and we will package them in individual favor bags or boxes for a nominal charge.</p>
					<p>&nbsp;</p>
					<p>Looking for inspiration? Visit our <a target="_blank" title="" href="https://www.facebook.com/goglazed">Facebook</a> or <a target="_blank" title="" href="http://instagram.com/goglazed">Instagram</a> page and see how fellow doughnut-lovers have used our crafty confection!</p>				<p><a href="weddings__special_events" class="learn_more_btn">Learn More</a></p>
				</li>
				<li>
					<h1>Workplace Infusion</h1>
					<h2>We can donut</h2>
					<p>Delight those hungry employees with a Glazed &amp; Infused Pop-Up Shop in your building’s lobby or at your next large-scale specialty event. Just tell us where to be and our friendly Riveters will arrive to sell an assortment of fresh, handmade doughnuts and coffee. All Pop-Up Shop sales are cash only.</p>
					<p>&nbsp;</p>
					<p>To schedule a Pop-Up in Chicago, IL, contact our Sales &amp; Catering Manager by email at <a href="mailto:sales@goglazed.com">sales@goglazed.com</a> or by calling (312) 226-5556.</p>				<p><a href="workplace_infusion" class="learn_more_btn">Learn More</a></p>
				</li>
				<li>
					<h1>Wholesale Opportunities!</h1>
					<h2>Infuse your menu with Glazed</h2>
					<p>Glazed &amp; Infused allows for quality, fresh handmade artisan doughnuts to be ordered by restaurants, hotels, catering companies, institutions and other resale partners.</p>
					<p>&nbsp;</p>
					<p>Voted “Best Doughnuts in Chicago” by Chicago Reader two years in a row and “Best Doughnut - Reader’s Choice” by Chicago Magazine, our doughnuts consistently appear in television and print media. Glazed &amp; Infused doughnuts have been televised nationally on The Food Network and have appeared in national publications such as Food &amp; Wine Magazine.</p>
					<p>&nbsp;</p>
					<p>Our doughnuts are best enjoyed in the morning at the peak of freshness and will maintain their freshness throughout the day if stored and displayed properly. Because we use no artificial preservatives in our product, we require that our doughnuts are not sold after the day of delivery. To assist your sales of Glazed &amp; Infused doughnuts, we offer a selection of marketing materials at no additional cost. Minimum order for wholesale purchases is two-dozen doughnuts, but we maintain the right to increase the minimum order based on distance. </p>
					<p>&nbsp;</p>
					<p>To inquire about our wholesale opportunities and pricing, please contact <a href="mailto:sales@goglazed.com">sales@goglazed.com</a>.</p>
					<p>&nbsp;</p>				
					<p><a href="wholesale_opportunities" class="learn_more_btn">Learn More</a></p>
				</li>
				<li>
				<h1>Decorating Events</h1>
			<h2>Fun for All Ages</h2>
			<p>It’s no secret that kids love Glazed &amp; Infused. Host a doughnut decorating party at our Lincoln Park location and let their imaginations run wild! Perfect for birthdays, your party package will include doughnuts, glazes, icings and toppings that kids can use to create the doughnut of their dreams.</p>
			<p>&nbsp;</p>
			<p>Toppings include sprinkles, chocolate curls, peanut butter cups, M&amp;Ms, Oreo crumbs, cereals and chocolate chips.&nbsp;<span style="font-size: 10pt; line-height: 1.8em">Decorating events can also be catered to your business or residence. Ask about our Doughnut Fondue Platter or Doughnut Bar options.</span></p>
			<p>&nbsp;</p>
			<p>For more information or to book a party in Chicago, IL, contact our Sales &amp; Catering Manager by email at <a href="mailto:sales@goglazed.com">sales@goglazed.com</a> or by calling (312) 226-5556.</p>				<p><a href="decorating_events" class="learn_more_btn">Learn More</a></p>
				</li>
			</ul>
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