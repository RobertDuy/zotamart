function smoothScroll(el, to, duration) {
    if (duration < 0) {
        return;
    }
    var difference = to - $(window).scrollTop();
    var perTick = difference / duration * 10;
    this.scrollToTimerCache = setTimeout(function() {
        if (!isNaN(parseInt(perTick, 10))) {
            window.scrollTo(0, $(window).scrollTop() + perTick);
            smoothScroll(el, to, duration - 10);
        }
    }.bind(this), 10);
}

var payment = {
	client: null,
	geocoder: null,
	wedeliver_api_key: null,
	wedeliver_url: null,
	copy_shipping_to_billing:false,
	init: function(){
		var that = payment;

		geocoder = new google.maps.Geocoder();
		wedeliver_api_key = $('#payment_section').data('wedeliverapikey');
		wedeliver_url = $('#payment_section').data('wedeliverurl');

		var shipping_select = document.getElementById("payment_shipping_option");
		var shipping_date_select = document.getElementById("payment_shipping_date");
		$(document).on('change','#payment_shipping_option, #payment_shipping_date', function()
        {
            that.set_shipping(shipping_select.value);
            that.set_shipping_date(shipping_date_select.value);
            that.show_shipping_option(shipping_select.value);
		});

		$('#payment_paymentMethod_number').payment('formatCardNumber');
		$('#payment_paymentMethod_cvv').payment('formatCardCVC');
		$('#payment_paymentMethod_expirationDate').payment('formatCardExpiry');

		var payment_form = $('#payment_details_form');
		var clientToken = payment_form.data('clienttoken');
		that.client = new braintree.api.Client({clientToken: clientToken});

		$(document).on('change','.shipping_input', function(){
			that.do_shipping_billing_sync();
			that.set_shipping_address();
		});

		$(document).on('change','.billing_input', function(){
			that.set_billing_address();
		});

		$(document).on('change','#billing_same_as_shipping', function(){
			if($(this).is(':checked')){
				that.enable_shipping_billing_sync();
			}else{
				that.disable_shipping_billing_sync();
			}
		});

		$(document).on('submit','#payment_details_form', function(){
			console.log('submit');
			that.submit_payment();
			return false;
		});
		//payment_form.submit(that.submit_payment());
	},
	updateCart: function() {
		var that=this;
		$.ajax({
			url: "cart.php?action=get_cart",
			success: function(response)
            {
				$('#cart_summary_subtotal').text("$"+response.subtotal);
				$('#cart_summary_tax').text("$"+response.tax);
				$('#cart_summary_delivery').text("$"+response.shipping);
				$('#cart_summary_total').text("$"+response.total);
			}
		});
	},
	set_billing_address: function(callback) {
		var that=this;
		postData = {
			firstName : $('#payment_customer_firstName').val(),
			lastName : $('#payment_customer_lastName').val(),
			company : $('#payment_billing_company').val(),
			email : $('#payment_customer_email').val(),
			phone : $('#payment_customer_phone').val(),
			streetAddress : $('#payment_billing_streetAddress').val(),
			extendedAddress : $('#payment_billing_extendedAddress').val(),
			locality : $('#payment_billing_locality').val(),
			region : $('#payment_billing_region').val(),
			postalCode : $('#payment_billing_postalCode').val()
		}
		//console.log(postData);
		$.ajax({
			url: "cart.php?action=set_billing_address",
			type: "POST",
			data: postData,
			success: function(response){
				if(response.status == 1){
					that.updateCart();
					if(typeof(callback) == "function"){
						callback();
					}
				}
			}
		});
	},
	set_shipping_address: function(callback) {
		var that=this;

		if($('#payment_shipping_option').val() == 1) {
			postData = {
				pickup_location : $('.payment_shipping_pickup_location:checked').val(),
				date : $('#payment_shipping_date').val()
			}
		} else {
			postData = {
				firstName : $('#payment_shipping_firstName').val(),
				lastName : $('#payment_shipping_lastName').val(),
				company : $('#payment_shipping_company').val(),
				streetAddress : $('#payment_shipping_streetAddress').val(),
				extendedAddress : $('#payment_shipping_extendedAddress').val(),
				locality : $('#payment_shipping_locality').val(),
				region : $('#payment_shipping_region').val(),
				postalCode : $('#payment_shipping_postalCode').val(),
				date : $('#payment_shipping_date').val(),
				time : $('#payment_shipping_time').val()
				// lat : $('#payment_shipping_lat').val(),
				// lng : $('#payment_shipping_lng').val(),
			}
		}
		$.ajax({
			url: "cart.php?action=set_shipping_address",
			type: "POST",
			data: postData,
			success: function(response){
				if(response.status == 1){
					that.updateCart();
					if(typeof(callback) == "function"){
						callback();
					}
				}
			}
		});
	},
	set_shipping: function(value) {
		var that=this;
		$.ajax({
			url: "cart.php?action=set_shipping&value=" + value,
			success: function(response){
				if(response.status == 1){
					that.updateCart();
				}
			}
		});
	},
	set_shipping_date: function(value) {
		var that=this;
		$.ajax({
			url: "cart.php?action=set_shipping_date&value=" + value,
			success: function(response){
				if(response.status == 1){
					that.updateCart();
				}
			}
		});
	},
	do_shipping_billing_sync: function() {
		if(this.copy_shipping_to_billing){
			var inputs = $('.shipping_input'),
				id,val, i, len;
			for(i = 0, len=inputs.length; i<len;i++){
				id = $(inputs[i]).attr('id');
				val = $(inputs[i]).val();

				name_regx = /(first|last)Name/;
				if(name_regx.exec(id) != null) {
					id=id.replace("shipping","customer");
				} else {
					id=id.replace("shipping","billing");
				}
				console.log(id);
				$("#"+id).val(val);
			}
			this.set_billing_address();
		}
	},
	enable_shipping_billing_sync: function(){
		this.copy_shipping_to_billing = true;
		this.do_shipping_billing_sync();
	},
	disable_shipping_billing_sync: function(){
		this.copy_shipping_to_billing = false;
		$('.billing_input').val("");
		this.set_billing_address();
	},
	show_shipping_option: function(shipping_method_id){

		$('.payment_shipping_opt').hide();
		var postdata = {
			'method': $('#payment_shipping_option').val(),
			'date': $('#payment_shipping_date').val()
		};
		if(postdata.method !== ""){
		$.ajax({
			url: 'shipping_available.php',
			type: 'POST',
			data: postdata,
			success: function(response){
				console.log(response);
				if(response.status === 1){
					if(response.available === 1){
						$('#online_not_available').hide();
						$('#payment_billing, #payment_cardinfo, .payment_submit_controls, #promo_codes').show();
						if(shipping_method_id != ""){
							var method = $('#payment_shipping_opts_'+shipping_method_id);
							if (method.length > 0) {
								method.show();
								if(method.hasClass('show_sync_checkbox')){
									$('#billing_same_as_shipping_wrap').show();
								}
								else
								{
									$('#billing_same_as_shipping_wrap').hide();
								}
							}
						} else {
							$('#online_not_available').show();
							$('#payment_billing, #payment_cardinfo, .payment_submit_controls, #promo_codes').hide();
						}
					} else {
						$('#online_not_available').show();
						$('#payment_billing, #payment_cardinfo, .payment_submit_controls, #promo_codes').hide();
					}
				} else {
					$('#online_not_available').show();
					$('#payment_billing, #payment_cardinfo, .payment_submit_controls, #promo_codes').hide();
				}
			}
		});
		}else{
			$('#online_not_available, #payment_billing, #payment_cardinfo, .payment_submit_controls, #promo_codes').hide();
		}
	},
	add_error: function(selector, message){
		var group = $(selector).closest('.form-group');
		group.addClass('has-error');
		group.append('<p class="error-block">'+message+'</p>');
	},
	submit_payment: function(){
		var that = this;

		$('.alert').hide();
		$('.payment_submit_btn').attr('disabled','disabled');
		var shipping_section = $('#payment_shipping');
		var shipping_option = $('.payment_shipping_opt:visible');

		$('.has-error').removeClass('has-error');
		$('.error-block').remove();

		if(shipping_section.length == 0 || shipping_option.length > 0) {
			var errors = 0;

			var cc_name = $('#payment_paymentMethod_cardholderName').val();
			if(cc_name == "" ){
				that.add_error('#payment_paymentMethod_cardholderName','The Cardholder Name is required');
				errors++;
			}

			var cc_num = $('#payment_paymentMethod_number').val();
			if(cc_num == "" || $.payment.validateCardNumber(cc_num)  == false){
				that.add_error('#payment_paymentMethod_number','The Credit Card Number you provided is invalid.');
				errors++;
			}
			var card_type = $.payment.cardType(cc_num);
			var cc_cvc = $('#payment_paymentMethod_cvv').val();
			if(cc_cvc == "" || $.payment.validateCardCVC(cc_cvc, card_type) == false){
				that.add_error('#payment_paymentMethod_cvv','The Credit Card Security Code you provided is invalid.');
				errors++;
			}

			var cc_exp = $('#payment_paymentMethod_expirationDate').val();
			cc_exp = cc_exp.split(" / ");
			var cc_month = cc_exp[0];
			var cc_year = cc_exp[1];

			if(cc_exp == "" || $.payment.validateCardExpiry(cc_month, cc_year) == false){
				that.add_error('#payment_paymentMethod_expirationDate','The Credit Card Expiration you provided is invalid.');
				errors++;
			}
			//console.log(errors);
			if(errors == 0 ) {
				var paymentData = {
					customer: {
						firstName : $('#payment_customer_firstName').val(),
						lastName : $('#payment_customer_lastName').val(),
						company : $('#payment_customer_company').val(),
						email : $('#payment_customer_email').val(),
						phone : $('#payment_customer_phone').val()
					},
					billing : {
						firstName : $('#payment_customer_firstName').val(),
						lastName : $('#payment_customer_lastName').val(),
						streetAddress : $('#payment_billing_streetAddress').val(),
						extendedAddress : $('#payment_billing_extendedAddress').val(),
						locality : $('#payment_billing_locality').val(),
						region : $('#payment_billing_region').val(),
						postalCode : $('#payment_billing_postalCode').val()
					},
					options : {
						submitForSettlement : true
					},
				}
				if(shipping_section.length > 0) {
					if(shipping_option.hasClass("payment_pickup_location")) {
						pickup_loc = $('.payment_shipping_pickup_location:checked');
						//console.log($('.payment_shipping_pickup_location:checked'));
						paymentData.shipping = {
							method_id: $('#payment_shipping_option').val(),
							company : pickup_loc.data('company'),
							streetAddress : pickup_loc.data('streetaddress'),
							extendedAddress : pickup_loc.data('extendedaddress'),
							locality : pickup_loc.data('locality'),
							region : pickup_loc.data('region'),
							postalCode : pickup_loc.data('postalcode'),
							date : $('#payment_shipping_date').val(),
						}
					} else if(shipping_option.hasClass("payment_delivery_location")) {
						paymentData.shipping = {
							method_id: $('#payment_shipping_option').val(),
							firstName : $('#payment_shipping_firstName').val(),
							lastName : $('#payment_shipping_lastName').val(),
							company : $('#payment_shipping_company').val(),
							streetAddress : $('#payment_shipping_streetAddress').val(),
							extendedAddress : $('#payment_shipping_extendedAddress').val(),
							locality : $('#payment_shipping_locality').val(),
							region : $('#payment_shipping_region').val(),
							postalCode : $('#payment_shipping_postalCode').val(),
							date : $('#payment_shipping_date').val(),
							time : $('#payment_shipping_time').val()
						}
					}
				}
				//console.log(paymentData);
				var payment_paymentMethod_cardholderName = $('#payment_paymentMethod_cardholderName').val();
				var payment_paymentMethod_number = $('#payment_paymentMethod_number').val();
				payment_paymentMethod_number = payment_paymentMethod_number.replace(/\s/g,"");
				var payment_paymentMethod_cvv = $('#payment_paymentMethod_cvv').val();
				var payment_paymentMethod_expirationDate = $('#payment_paymentMethod_expirationDate').val();
				payment_paymentMethod_expirationDate = payment_paymentMethod_expirationDate.replace(/\s/g,"");

				var cardData = {
					number: payment_paymentMethod_number,
					cardholderName: payment_paymentMethod_cardholderName,
					expirationDate: payment_paymentMethod_expirationDate,
					cvv: payment_paymentMethod_cvv
				};

				this.client.tokenizeCard(cardData, function (err, nonce) {
					if(err){
						console.log(err);
					}else{
						paymentData.paymentMethodNonce = nonce;
						$.ajax({
							url: 'cart.php?action=charge',
							type: 'POST',
							data: paymentData,
							success: function(response){
								if(response.status == 1) {
									console.log(response);
									window.location.href = 'receipt.php';
								} else {
									$('.payment_submit_btn').removeAttr('disabled');

									if(response.msg && typeof(response.msg)!="undefined" && response.msg!=""){
										$('.payment_details_section').prepend(
										"<div class='alert alert-danger'>" +
											response.msg +
										"</div>"
										);
									}

									if(typeof(response.errors)!="undefined" && response.errors!=""){
										$('.payment_details_section').prepend(
										"<div class='alert alert-danger'>" +
											response.errors.join("<br>") +
										"</div>"
										);
									}

									if(typeof(response.validation_errors)!="undefined" && response.validation_errors!=""){
										for(var i in response.validation_errors) {
											var item_id = "#payment_" + i.replace("[","_").replace("]","");
											var group = $(item_id).closest('.form-group');
											group.addClass('has-error');
											group.append('<p class="error-block">' + response.validation_errors[i] + '</p>');
										}
									}

								    smoothScroll($(window), $('.payment_details_section').offset().top, 200);

								}
							}
						});
					}
				});
			}else{
				smoothScroll($(window), $('#payment_cardinfo').offset().top, 200);
				$('.payment_submit_btn').removeAttr('disabled');
			}
		} else {
			var ship_opt_group = $('#payment_shipping_option').closest('.form-group');
			ship_opt_group.addClass('has-error');
			ship_opt_group.append('<p class="error-block">Please shoose how you would like to recieve your order.</p>');
			$('.payment_submit_btn').removeAttr('disabled');
		}
	},
};

Zepto(function($){
	payment.init();
});
