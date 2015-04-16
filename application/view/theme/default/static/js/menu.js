Handlebars.registerHelper('setIndex', function(value){
    this.index = value;
});

Handlebars.registerHelper('first', function (context, options) {
	return options.fn(context[0]);
});

Handlebars.registerHelper('each_json', function (context, options) {
	var context = $.parseJSON(context);
	var return_val = "";
	for(var i=0, len=context.length;i<len;i++){
		return_val = return_val + options.fn(context[i]);
	}
	return return_val;
});

Handlebars.registerHelper('radio_repeat', function (context, val_id, index, options) {

	var limit = $.parseJSON(context.options);
	limit = limit.selected_limit;
	var return_val = "";

	for(var i=0;i<limit;i++){
		context.values[val_id].product_index = index;
		context.values[val_id].index = i;
		context.values[val_id].selected = context.user_value[i] == context.values[val_id].cart_pro_option_value_id;

		return_val = return_val + options.fn(context.values[val_id]);
	}

	return return_val;
});

Handlebars.registerHelper('if_eq', function(a, b, opts) {
    if(a == b)
    {
        return opts.fn(this);
    }
    else
    {
        return opts.inverse(this);
    }
});

Handlebars.registerHelper('if_not_eq', function(a, b, opts) {
    if(a != b)
    {
        return opts.fn(this);
    }
    else
    {
        return opts.inverse(this);
    }
});

Handlebars.registerHelper('gt', function(a, b, opts) {
    if(a > b)
    {
        return opts.fn(this);
    }
    else
    {
        return opts.inverse(this);
    }
});

var menu = {
	cart_summary_row_template: null,
	cart_tile_item_template: null,

	init: function(){
		var that = this;
		if($('#cart_summary_row').length>0) {
			this.cart_summary_row_template = Handlebars.compile($('#cart_summary_row').html());
		}
		if($('#cart_tile_item').length>0) {
			this.cart_tile_item_template = Handlebars.compile($('#cart_tile_item').html());
		}
		//this.updateCart();

		$(document).on('click','#empty_cart_btn',function(e){
			e.preventDefault();
			that.emptyCart();
		});

		$(document).on('click','.add_qty',function(){
			var index = $(this).data('index');
			that.addItem(index);
		});

		$(document).on('click','.sub_qty', function(){
			var index = $(this).data('index');
			that.remItem(index);
		});

		$(document).on('keyup','.set_qty',function(){
			var value = $(this).val();
			var index = $(this).data("index");
			var qty = parseInt(value);
			if(isNaN(qty))
			{
				qty = 0;
			}
			$(this).val(qty);
			if(qty > 0){
				that.setQty(index, qty);
			}
		});

		$(document).on('change','#cart_form input, #cart_form select', function(){
			that.pushUpdate();
		});
	},
	updateCart: function() {
		var that=this;
		$.ajax({
			url: "cart.php?action=get_cart",
			success: function(response){
				/*$('.set_qty').val("0");
				for(var i in response.products){
					$('#item_' + response.products[i].cart_pro_product_id).val(response.products[i].qty);
				}*/
				if(response.products.length <= 0){
					$('#empty_cart').show();
				} else {
					$('#empty_cart').hide();
				}

				if($('#cart_summary_tbody').length > 0){
					$('#cart_summary_tbody').html(that.cart_summary_row_template(response));
				}
				$('#item_tiles').html(that.cart_tile_item_template(response));
				$('#header-shopping-cart-count span').text(response.qty);
				$('#cart_summary_subtotal').text("$"+response.undiscounted_subtotal.toFixed(2));
				$('#cart_summary_tax').text("$"+response.tax.toFixed(2));
				$('#cart_summary_total').text("$"+parseFloat(response.total).toFixed(2));

				if(response.undiscounted_subtotal > response.subtotal){
					$('#cart_summary_discount_wrap').show();
					$('#cart_summary_discount').text("($"+(response.undiscounted_subtotal - response.subtotal).toFixed(2) + ")");
				} else {
					$('#cart_summary_discount_wrap').hide();
				}
			}
		});
	},
	addItem: function(index) {
		var that=this;
		var qty_input = $("#item_"+index+"_qty");
		var qty = parseInt(qty_input.val());
		$.ajax({
			url: "cart.php?action=set_qty&index=" + index + "&qty=" + (qty+1),
			success: function(response){
				if(response.status == 1){
					that.updateCart();
				}
			}
		});
	},
	remItem: function(index) {
		var that=this;
		var qty_input = $("#item_"+index+"_qty");
		var qty = parseInt(qty_input.val());
		$.ajax({
			url: "cart.php?action=set_qty&index=" + index + "&qty=" + (qty-1),
			success: function(response){
				if(response.status == 1){
					that.updateCart();
				}
			}
		});
	},
	pushUpdate: function()
	{
		var that = this;
		var post_data = $('#cart_form').serializeArray();

		$.ajax({
			url: "cart.php",
			type: "GET",
			data: post_data,
			success: function(response){
				that.updateCart();
			}
		});
	},
	setQty: function(index, qty) {
		var that=this;
		$.ajax({
			url: "cart.php?action=set_qty&index=" + index + "&qty=" + qty,
			success: function(response){
				if(response.status == 1){
					that.updateCart();
				}
			}
		});
	},
	emptyCart: function()
	{
		var that=this;
		$.ajax({
			url: "cart.php?action=empty_cart",
			success: function(response){
				if(response.status == 1){
					that.updateCart();
				}
			}
		});
	}
}

Zepto(function($){
	menu.init();
});