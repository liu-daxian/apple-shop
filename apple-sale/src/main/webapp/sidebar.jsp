<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="sidebar">

	<!-- Info -->
	<div class="info">
		<div
			class="info_content d-flex flex-row align-items-center justify-content-start">

			<!-- Language -->
			<div class="info_languages has_children">
				<div class="language_flag">
					<c:if test="${not empty user}">
						<img src="${user.uimage}">
					</c:if>
				</div>

				<div class="dropdown_text">
				<c:if test="${not empty customer}">
					欢迎你 ${customer.aname}
				</c:if>
				<c:if test="${empty customer}">
					<a href="login.jsp">请登录</a>
				</c:if>
				
				</div>

			</div>

			<!-- Currency -->
			<div class="info_currencies has_children">
				<div class="dropdown_text">我的</div>
				<div class="dropdown_arrow">
					<i class="fa fa-angle-down" aria-hidden="true"></i>
				</div>

				<!-- Currencies Dropdown Menu -->
				<ul>
					<li style="width: 45px;"><a href="goods.do?type=showShopCar"><div
								class="dropdown_text">购物车</div></a></li>
					<li><a href="order.do?type=query"><div class="dropdown_text">订单</div></a></li>
					<li><a href="#"><div class="dropdown_text">个人</div></a></li>
					<li><a href="user.do?type=loginout"><div class="dropdown_text">注销</div></a></li>
				</ul>

			</div>

		</div>
	</div>

	<!-- Logo -->
	<div class="sidebar_logo">
		<a href="index"><div>
				土<span> &nbsp; 商城</span>
			</div></a>
	</div>

	<!-- Sidebar Navigation -->
	<nav class="sidebar_nav">
		<ul>
			<li><a href="index">主页<i class="fa fa-angle-right"
					aria-hidden="true"></i></a></li>
			<li><a href="queryGoods?gsex=0">女装<i class="fa fa-angle-right"
					aria-hidden="true"></i></a></li>
			<li><a href="queryGoods?gsex=1">男装<i class="fa fa-angle-right"
					aria-hidden="true"></i></a></li>
			<li><a href="queryGoods?gsex=2">童装<i class="fa fa-angle-right"
					aria-hidden="true"></i></a></li>
			<li><a href="queryGoods?gsex=3">Lolita<i class="fa fa-angle-right"
					aria-hidden="true"></i></a></li>
			<li><a href="queryGoods">列表<i class="fa fa-angle-right"
					aria-hidden="true"></i></a></li>
		</ul>
	</nav>

	<!-- Search -->
	<div class="search">
		<form action="queryGoods" method="post" class="search_form" id="sidebar_search_form">
			<input type="text" class="search_input" placeholder="搜索商品"
				required="required" name="goodsName">
			<button class="search_button" type="submit">
				<i class="fa fa-search" aria-hidden="true"></i>
			</button>
		</form> 
	</div>

	<!-- Cart -->
	<div
		class="cart d-flex flex-row align-items-center justify-content-start">
		<div class="cart_icon">
			<a href="shopcart.jsp"> <img src="images/bag.png" alt="">
				<div id="cart_num" class="cart_num">0</div>
			</a>
		</div>
		<div class="cart_text">购物车</div>
		<div id="cart_price" class="cart_price">¥ 0.00(0)</div>
	</div>
</div>