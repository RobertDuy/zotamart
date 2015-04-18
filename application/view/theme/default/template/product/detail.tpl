<?php echo $header; ?>

<section class="product_details_section">
	<div class="container">
		<div class="photos">
			<div class="photo_wrap">
				<div class="main">
                    <img src="<?php echo $product['image']?>" >
				</div>
				<div class="thumbs">
					<ul>
                        <?php foreach($product['thumbs'] as $thumb) { ?>
                        <li>
                            <a href="<?php echo $thumb['link']; ?>" class="thumb_btn">
                                <img src="<?php echo $thumb['smallImage']?>" >
                            </a>
                        </li>
                        <?php }?>
					</ul>
				</div>
			</div>
		</div>
		<div class="details">
			<div class="price">
				<?php echo $product['price']?>
			</div>
			<h1><?php echo $product['name'] ?></h1>

            <?php echo $product['description'] ?>

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
                    <?php foreach($moreProducts as $product){ ?>
                    <div>
                        <a href="<?php echo $product['link']?>">
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
                    </div>
                    <?php } ?>
				</div>
			</div>
		</div>
	</div>
</section>

<?php echo $footer; ?>
