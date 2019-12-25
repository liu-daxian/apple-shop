<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="zh">
<head>
<title>aStar</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="aStar Fashion Template Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap-4.1.3/bootstrap.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<script src="js/jquery-3.2.1.min.js"></script>

<style type="text/css">

	.shopcar_div{
		background-color: red;
		width: 50px;
		height: 50px;
		position: absolute;
		z-index: 20;
	}


</style>
</head>
<body>

	<div class="super_container">

		<div id="dd_div">
			<!--异步加载其他文件-->
			<script>
				$("#dd_div").load("sidebar.jsp");
			</script>

		</div>

		<div class="home">
			<!-- 图片轮播 -->
			<div class="home_slider_container">
				<div class="owl-carousel owl-theme home_slider">

					<!-- Slide -->
					<div class="owl-item">
						<div class="background_image"
							style="background-image: url(images/home_slider_1.jpg)"></div>
						<div class="home_content_container">
							<div class="home_content">
								<div
									class="home_discount d-flex flex-row align-items-end justify-content-start">
									<div class="home_discount_num">20</div>
									<div class="home_discount_text">最高折扣</div>
								</div>
								<!--<div class="home_title">秋季新品</div>-->
							</div>
						</div>
					</div>

					<!-- Slide -->
					<div class="owl-item">
						<div class="background_image"
							style="background-image: url(images/home_slider_1.jpg)"></div>
						<div class="home_content_container">
							<div class="home_content">
								<div
									class="home_discount d-flex flex-row align-items-end justify-content-start">
									<div class="home_discount_num">20</div>
									<div class="home_discount_text">最高折扣</div>
								</div>
								<!--<div class="home_title">秋季新品</div>-->
							</div>
						</div>
					</div>

					<!-- Slide -->
					<div class="owl-item">
						<div class="background_image"
							style="background-image: url(images/home_slider_1.jpg)"></div>
						<div class="home_content_container">
							<div class="home_content">
								<div
									class="home_discount d-flex flex-row align-items-end justify-content-start">
									<div class="home_discount_num">20</div>
									<div class="home_discount_text">最高折扣</div>
								</div>
								<!--<div class="home_title">秋季新品</div>-->
							</div>
						</div>
					</div>

				</div>

				<!-- Home Slider Navigation -->
				<div class="home_slider_nav home_slider_prev trans_200">
					<div
						class=" d-flex flex-column align-items-center justify-content-center">
						<img src="images/prev.png" alt="">
					</div>
				</div>
				<div class="home_slider_nav home_slider_next trans_200">
					<div
						class=" d-flex flex-column align-items-center justify-content-center">
						<img src="images/next.png" alt="">
					</div>
				</div>

			</div>
		</div>

		<!-- Boxes -->
		<div class="boxes">
			<div class="section_container">
				<div class="container">
					<div class="row">

						<!--就是展示商品类别列表-->
						<c:forEach items="${goodsTypeList}" var="type">
							<div class="col-lg-4 box_col">
								<div class="box">
									<div class="box_image">
										<img src="${type.timage}" alt="">
									</div>
									<div class="box_title trans_200">
										<a href="queryGoods?goodsTid=${type.tid}">${type.tname}</a>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>
				</div>
			</div>
		</div>

		<!-- Categories -->

		<div class="categories">
			<div class="section_container">
				<div class="container">
					<div class="row">
						<div class="col text-center">
							<div class="categories_list_container">
								<ul
									class="categories_list d-flex flex-row align-items-center justify-content-start">
									<li><a href="queryGoods?glabel=1">新款上市</a></li>
									<li><a href="queryGoods?glabel=3">劲爆折扣</a></li>
									<li><a href="queryGoods?glabel=2">爆款为你</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Products -->

		<div class="products">
			<div class="section_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="products_container grid">

								<!--循环展示首页商品信息-->
								<c:forEach items="${goodsList}" var="goods">

									<!-- Product -->
									<div
										class="product grid-item
										<c:if test="${goods.glabel eq 1}">new</c:if>
										<c:if test="${goods.glabel eq 2}">hot</c:if>
										<c:if test="${goods.glabel eq 3}">sale</c:if>
									">
										<div class="product_inner">
											<div class="product_image">
												<img src="${goods.gimage}" alt="">

												<c:if test="${goods.glabel eq 1}">
													<div class="product_tag">new</div>
												</c:if>
												<c:if test="${goods.glabel eq 2}">
													<div class="product_tag">hot</div>
												</c:if>
												<c:if test="${goods.glabel eq 3}">
													<div class="product_tag">sale</div>
												</c:if>

											</div>
											<div class="product_content text-center">
												<div class="product_title">
													<a href="queryGoodsDetail?goodsId=${goods.gid}">${goods.gname}</a>
												</div>
												<div class="product_price">
												￥<fmt:formatNumber value="${goods.gprice * goods.gdiscount}" minFractionDigits="1" maxFractionDigits="2"></fmt:formatNumber>

												
												<c:if test="${goods.glabel eq 3}">
													<label style="color:black;"><s>${goods.gprice}</s></label>
												</c:if>
												
												</div>
												<div class="product_button ml-auto mr-auto trans_200">
													<a href="javascript:void(0);" class="addshopcar" gid="${goods.gid}">加入购物车</a>
												</div>
											</div>
										</div>
									</div>

								</c:forEach>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



	</div>

	
	<script src="js/shopcar.js"></script>
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
	<script src="js/custom.js"></script>
</body>
</html>