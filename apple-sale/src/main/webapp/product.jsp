<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="zh">
<head>
<title>商品详情</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="aStar Fashion Template Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.3/bootstrap.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/product.css">
<link rel="stylesheet" type="text/css" href="styles/product_responsive.css">
<script src="js/jquery-3.2.1.min.js"></script>
</head>
<body>

<div class="super_container">

	<div id="dd_div">
		<script>
			$("#dd_div").load("sidebar.jsp");
			
		</script>
		
	</div>

	<!-- Home -->

	<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/product_background.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="home_content">
				<div class="home_title">商品详情</div>
				<div class="breadcrumbs">
					<ul class="d-flex flex-row align-items-center justify-content-start">
						
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- Products -->

	<div class="product">

		<!-- Sorting & Filtering -->
		<div class="products_bar">
			<div class="section_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="products_bar_content d-flex flex-row align-items-center justify-content-start">
								<div class="product_categories">
									<ul class="d-flex flex-row align-items-start justify-content-start flex-wrap">
										<li class="active"><a href="goods.do?type=list">列表</a></li>
										<li><a href="goods.do?type=list&glabel=2">热门</a></li>
										<li><a href="goods.do?type=list&glabel=1">新品</a></li>
										<li><a href="goods.do?type=list&glabel=3">折扣</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Product Content -->
		<div class="section_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="product_content_container d-flex flex-lg-row flex-column align-items-start justify-content-start">
							<div class="product_content order-lg-1 order-2">
								<div class="product_content_inner">
									<div class="product_image_row d-flex flex-md-row flex-column align-items-md-end align-items-start justify-content-start">
										<div class="product_image_1 product_image">
											<img src="${goodsEntity.goodsImage}" alt="">
										</div>
										<div class="product_image_2 product_image"><img src="${goodsEntity.goodsImage}" alt=""></div>
									</div>
									<div class="product_image_row">
										<div class="product_image_3 product_image"><img src="${goodsEntity.goodsImage}" alt=""></div>
									</div>
									<div class="product_image_row d-flex flex-md-row flex-column align-items-start justify-content-start">
										<div class="product_image_4 product_image"><img src="${goodsEntity.goodsImage}" alt=""></div>
										<div class="product_image_5 product_image"><img src="${goodsEntity.goodsImage}" alt=""></div>
									</div>
								</div>
							</div>
							<div class="product_sidebar order-lg-2 order-1">
								<form action="#" id="product_form" class="product_form">
									<div class="product_name">${goodsEntity.goodsName}</div>
									<div class="product_price">¥${goodsEntity.goodsPrice}</div>
									<div class="product_color">类别: <span>${goodsEntity.goodsType.typeName}</span></div>
									<div class="product_size">
										<div class="product_size_title">选择尺寸</div>
										<div class="product_size_list">
											<ul>
												<li class="size_available">
													<input type="radio" id="radio_1" name="product_radio" class="regular_radio radio_1">
													<label for="radio_1">35</label>
												</li>
												<li class="size_available">
													<input type="radio" id="radio_2" name="product_radio" class="regular_radio radio_2">
													<label for="radio_2">36</label>
												</li>
												<li class="size_available">
													<input type="radio" id="radio_3" name="product_radio" class="regular_radio radio_3">
													<label for="radio_3">37</label>
												</li>
												<li class="size_available">
													<input type="radio" id="radio_4" name="product_radio" class="regular_radio radio_4">
													<label for="radio_4">38</label>
												</li>
												<li>
													<input type="radio" id="radio_5" name="product_radio" class="regular_radio radio_5" disabled>
													<label for="radio_5">39</label>
												</li>
												<li>
													<input type="radio" id="radio_6" name="product_radio" class="regular_radio radio_6" disabled>
													<label for="radio_6">40</label>
												</li>
											</ul>
										</div>
									</div>
									<button class="cart_button trans_200">添加到购物车</button>
									<div class="similar_products_button trans_200"><a href="categories.html">快速购买</a></div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>


<script src="styles/bootstrap-4.1.3/popper.js"></script>
<script src="styles/bootstrap-4.1.3/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/Isotope/fitcolumns.js"></script>
<script src="js/product.js"></script>
</body>
</html>