<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="zh">

<head>
<title>展示订单详情</title>
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
<link rel="stylesheet" type="text/css" href="styles/blog.css">
<link rel="stylesheet" type="text/css" href="styles/blog_responsive.css">
<script src="js/jquery-3.2.1.min.js"></script>
	<style>

		li{
			font-size: 30px;
		}

	</style>
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
			<div class="parallax_background parallax-window"
				data-parallax="scroll" data-image-src="images/blog.jpg"
				data-speed="0.8"></div>
			<div class="home_container">
				<div class="home_content">
					<div class="home_title">订单详情:未支付</div>
				</div>
			</div>
		</div>

		<!-- Blog -->



		<div class="blog">
			<div class="section_container">
				<div class="container">
					<div class="row">
						<div class="col">

							<h1>倒计时:距离支付还剩 <label id="showtime"></label></h1>
							
						</div>
					</div>
					<div class="row load_more_row">
						<div class="col">
							<h2>${orderPojo.oid} - ${orderPojo.ototal}</h2>
							<hr>
							<div class="">

								<ul>
									<li>数量  -  商品名称  - 商品单价</li>
									<c:forEach items="${orderPojo.details}" var="detail">

										<li>${detail.odnumber} - ${detail.goodsPojo.gname} - ${detail.odprice }</li>

									</c:forEach>
								</ul>
							</div>
							
							<a href="apay?oid=${orderPojo.oid}">支付</a>
							
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
	<script src="js/blog.js"></script>
</body>

<script type="text/javascript">

$(document).ready(function(){
	
	var date = new Date();
	date.setTime(1000*60*30);//应该是一个动态的,以后台的计数为标准
	$("#showtime").text("30:00");
	setInterval(function(){
		var str;
		
		date.setTime(date.getTime()-1000);
		
		str = date.getMinutes() + ":" + (date.getSeconds()<10 ? '0'+date.getSeconds() : date.getSeconds());
		
		$("#showtime").text(str);
		
	}, 1000);
	
	
});


</script>

</html>