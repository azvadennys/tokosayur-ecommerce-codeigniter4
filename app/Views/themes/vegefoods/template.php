<!DOCTYPE html>
<html lang="en">

<head>
	<title><?= $title ?></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

	<link rel="icon" href=<?= get_store_logo();  ?>>

	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/open-iconic-bootstrap.min.css') ?>>
	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/animate.css') ?>>

	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/owl.carousel.min.css') ?>>
	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/owl.theme.default.min.css') ?>>
	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/magnific-popup.css') ?>>

	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/aos.css') ?>>

	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/ionicons.min.css') ?>>
	<link rel="stylesheet" href=<?= base_url('assets/themes/argon/js/plugins/@fortawesome/fontawesome-free/css/all.min.css') ?>>

	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/bootstrap-datepicker.css') ?>>
	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/jquery.timepicker.css') ?>>

	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/flaticon.css') ?>>
	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/icomoon.css') ?>>
	<link rel="stylesheet" href=<?= base_url('assets/themes/vegefoods/css/style.css') ?>>

	<link rel="stylesheet" href=<?= base_url('assets/plugins/toastr/toastr.min.css') ?>>

	<script src=<?= base_url('assets/themes/vegefoods/js/jquery.min.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/jquery-migrate-3.0.1.min.js') ?>></script>
</head>

<body class="goto-here">
	<div class="py-1 bg-primary">

	</div>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="<?php echo base_url(); ?>"><?php echo get_store_name(); ?></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="<?php echo base_url(); ?>" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="<?php echo base_url('product'); ?>" class="nav-link">Product</a></li>
					<li class="nav-item"><a href="<?php echo base_url('about'); ?>" class="nav-link">Tentang Kami</a></li>
					<li class="nav-item"><a href="<?php echo base_url('contact'); ?>" class="nav-link">Kontak</a></li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Akun</a>
						<div class="dropdown-menu" aria-labelledby="dropdown05">
							<?php if (in_groups('customer')) : ?>
								<a class="dropdown-item" href="<?php echo base_url('customer_profile'); ?>">Akun saya</a>
								<a class="dropdown-item" href="<?php echo base_url('customer_orders'); ?>">Pesanan Saya</a>
								<a class="dropdown-item" href="<?php echo base_url('customer_payments/confirm'); ?>">Konfirmasi Pembayaran</a>
								<div class="divider"></div>
								<a class="dropdown-item" href="<?php echo base_url('logout'); ?>">Logout</a>
							<?php elseif (in_groups('admin')) :  ?>
								<a class="dropdown-item" href="<?php echo base_url('admin'); ?>">Dashboard</a>
								<div class="divider"></div>
								<a class="dropdown-item" href="<?php echo base_url('logout'); ?>">Logout</a>
							<?php else : ?>
								<a class="dropdown-item" href="<?php echo base_url('login'); ?>">Login</a>
								<a class="dropdown-item" href="<?php echo base_url('register'); ?>">Registration</a>
							<?php endif; ?>
						</div>
					</li>
					<li class="nav-item cta cta-colored"><a href="<?php echo base_url('shop/cart'); ?>" class="nav-link"><span class="icon-shopping_cart"></span>[<span class="cart-item-total">0</span>]</a></li>

				</ul>
			</div>
		</div>
	</nav>

	<!-- END nav -->
	<?= $this->renderSection('konten') ?>

	<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
		<div class="container py-4">

		</div>
	</section>
	<footer class="ftco-footer ftco-section">
		<div class="container">
			<div class="row">
				<div class="mouse">
					<a href="#" class="mouse-icon">
						<div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
					</a>
				</div>
			</div>
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2"><?php echo get_store_name();
													?></h2>
						<p><?php echo get_settings('store_description');
							?></p>
						<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
							<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-5">
						<h2 class="ftco-heading-2">Menu</h2>
						<ul class="list-unstyled">
							<li><a href="<?= base_url('about')
											?>" class="py-2 d-block">Tentang Kami</a></li>
							<li><a href="<?= base_url('contact') ?>" class="py-2 d-block">Hubungi Kami</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Bantuan</h2>
						<div class="d-flex">
							<ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
								<li><a href="<?= base_url('shop/cart') ?>" class="py-2 d-block">Keranjang Belanja</a></li>
								<li><a href="<?= base_url('customer_payments/confirm') ?>" class="py-2 d-block">Konfirmasi Pembayaran</a></li>
								<li><a href="<?= base_url('shop/testimonial') ?>" class="py-2 d-block">Testimoni Pelanggan</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Punya Pertanyaan?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span class="text"><?= get_settings('store_address'); ?></span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span class="text"><?php echo get_settings('store_phone_number'); ?></span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span class="text"><?php echo get_settings('store_email'); ?></span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>
							document.write(new Date().getFullYear());
						</script> All rights reserved | Made with <i class="icon-heart text-danger" aria-hidden="true"></i> for every people.
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
		</svg></div>

	<script src=<?= base_url('assets/themes/vegefoods/js/popper.min.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/bootstrap.min.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/jquery.easing.1.3.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/jquery.waypoints.min.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/jquery.stellar.min.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/owl.carousel.min.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/jquery.magnific-popup.min.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/aos.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/jquery.animateNumber.min.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/bootstrap-datepicker.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/scrollax.min.js') ?>></script>
	<script src=<?= base_url('assets/themes/vegefoods/js/main.js') ?>></script>
	<script src=<?= base_url('assets/plugins/toastr/toastr.min.js') ?>></script>

	<script>
		toastr.options = {
			"closeButton": false,
			"debug": false,
			"newestOnTop": false,
			"progressBar": false,
			"positionClass": "toast-top-right",
			"preventDuplicates": false,
			"onclick": null,
			"showDuration": "300",
			"hideDuration": "1000",
			"timeOut": "5000",
			"extendedTimeOut": "1000",
			"showEasing": "swing",
			"hideEasing": "linear",
			"showMethod": "fadeIn",
			"hideMethod": "fadeOut"
		}

		$.ajax({
			method: 'GET',
			url: '<?php echo base_url('Shop/cart_api?action=cart_info'); ?>',
			success: function(res) {
				var data = res.data;

				var total_item = data.total_item;
				$('.cart-item-total').text(total_item);
			}
		});

		$('.add-cart').click(function(e) {
			e.preventDefault();

			var id = $(this).data('id');
			var sku = $(this).data('sku');
			var qty = $(this).data('qty');
			qty = (qty > 0) ? qty : 1;
			var price = $(this).data('price');
			var name = $(this).data('name');

			$.ajax({
				method: 'POST',
				url: '<?= base_url('Shop/cart_api?action=add_item'); ?>',
				data: {
					id: id,
					sku: sku,
					qty: qty,
					price: price,
					name: name
				},
				success: function(res) {
					if (res.code == 200) {
						var totalItem = res.total_item;

						$('.cart-item-total').text(totalItem);
						toastr.info('Item ditambahkan dalam keranjang');
					} else {
						console.log('Terjadi kesalahan');
					}
				}
			});
		});
	</script>

</body>

</html>