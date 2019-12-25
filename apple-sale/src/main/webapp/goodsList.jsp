<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh">
<head>
<title>商品列表</title>
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
<link rel="stylesheet" type="text/css" href="styles/categories.css">
<link rel="stylesheet" type="text/css"
	href="styles/categories_responsive.css">

<script src="js/jquery-3.2.1.min.js"></script>

</head>
<body>

	<div class="super_container">

		<div id="dd_div">
			<script>
			<!--会重新向服务器请求一下 sidebar.jsp页面-->
				$("#dd_div").load("sidebar.jsp");
			</script>

		</div>

		<!-- Home -->

		<div class="home">
			<div class="parallax_background parallax-window"
				data-parallax="scroll" data-image-src="images/categories.jpg"
				data-speed="0.8"></div>
			<div class="home_container">
				<div class="home_content">
					<div class="home_title">商品列表</div>
					<div class="breadcrumbs">
						<ul
							class="d-flex flex-row align-items-center justify-content-start">
							<li><a href="index">主页</a></li>
							<li><a href="queryGoods?goodsSex=0">女装</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- Products -->

		<div class="products">

			<!-- Sorting & Filtering -->
			<div class="products_bar">
				<div class="section_container">
					<div class="container">
						<div class="row">
							<div class="col">
								<div
									class="products_bar_content d-flex flex-column flex-xxl-row align-items-start align-items-xxl-center justify-content-start">
									<div class="product_categories">
										<ul
											class="d-flex flex-row align-items-start justify-content-start flex-wrap">
											<li class="active"><a href="goods.do?type=list">所有</a></li>
											<li><a href="goods.do?type=list&glabel=2">热门</a></li>
											<li><a href="goods.do?type=list&glabel=1">新款</a></li>
											<li><a href="goods.do?type=list&glabel=3">折扣</a></li>
										</ul>
									</div>
									<div
										class="products_bar_side ml-xxl-auto d-flex flex-row align-items-center justify-content-start">
										<div class="products_dropdown product_dropdown_sorting">
											<div class="isotope_sorting_text">
												<span>默认排序</span><i class="fa fa-caret-down"
													aria-hidden="true"></i>
											</div>
											<ul>
												<li class="item_sorting_btn"
													data-isotope-option='{ "sortBy": "original-order" }'>默认</li>
												<li class="item_sorting_btn"
													data-isotope-option='{ "sortBy": "price" }'>价格</li>
												<li class="item_sorting_btn"
													data-isotope-option='{ "sortBy": "name" }'>名称</li>
											</ul>
										</div>
										<div
											class="product_view d-flex flex-row align-items-center justify-content-start">
											<!--<div class="view_item active"><img src="images/view_1.png" alt=""></div>
										<div class="view_item"><img src="images/view_2.png" alt=""></div>
										<div class="view_item"><img src="images/view_3.png" alt=""></div>-->
											<div class="isotope_filter_text">
											<form action="goods.do?type=list" method="post">
												<span>价格</span><input type="number" name="gpriceMin"
													style="text-align: center;" />-<input type="number"  name="gpriceMax"
													style="text-align: center;" />
													<button type="submit">搜索</button>
											</form>
											</div>
										</div>
										<div
											class="products_dropdown text-right product_dropdown_filter">
											<div class="isotope_filter_text">
												<span>过滤</span><i class="fa fa-caret-down"
													aria-hidden="true"></i>
											</div>
											<ul>
												<li class="item_filter_btn" data-filter="*">所有</li>
												<li class="item_filter_btn" data-filter=".hot">热销</li>
												<li class="item_filter_btn" data-filter=".new">新品</li>
												<li class="item_filter_btn" data-filter=".sale">折扣</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="section_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="products_container grid">

								<!--展示商品的列表-->
								<c:forEach items="${pageInfo.list}" var="goods">
									<!-- Product -->
									<div
										class="product grid-item 
									
										<c:if test="${goods.glabel eq 1 }">new</c:if>
										<c:if test="${goods.glabel eq 2 }">hot</c:if>
										<c:if test="${goods.glabel eq 3 }">sale</c:if>
										
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
													<a href="queryGoodsDetail?goodsId=${goods.gid}">${goods.gname }</a>
												</div>
												<div class="product_price">¥${goods.gprice }</div>
												<div class="product_button ml-auto mr-auto trans_200">
													<a href="javascript:void(0);" class="addshopcar" gid="${goods.gid}">添加到购物车</a>
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
			
			<div class="section_container">

				共 ${pageInfo.total} 条纪录 &nbsp;--

				<a href="queryGoods?pageNum=1&glabel=${goodsPojo.glabel}"> 首页 </a>
				&nbsp;&nbsp;

				<c:forEach items="${pageInfo.navigatepageNums}" var="pg">
					<a href="queryGoods?pageNum=${pg}&glabel=${goodsPojo.glabel}">${pg}&nbsp;&nbsp;</a>
				</c:forEach>

				&nbsp;&nbsp;
				<a href="queryGoods?pageNum=${pageInfo.pages}&glabel=${goodsPojo.glabel}"> 尾页 </a>
			</div>
			
		</div>

	</div>
	<script type="text/javascript" src="js/shopcar.js"></script>
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
	<script src="js/categories.js"></script>
	
	<script type="text/javascript">
	

	</script>
</body>
</html>