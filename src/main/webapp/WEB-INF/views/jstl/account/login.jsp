<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<link href="<c:url value="/styles/bootstrap.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<link href="<c:url value="/styles/memenu.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<link href="<c:url value="/styles/style.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<link href="<c:url value="/styles/popuo-box.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Fashion Mania Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<body>
	<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="col-md-4 world">
				</div>
				<div class="col-md-4 logo">
					<a href="index.html"><img
						src="<c:url value="/images/logo.png"/>" alt=""></a>
				</div>

				<div class="col-md-4 header-left">
					<p class="log">
						<a href="<c:url value="/user/login"/>"> <span
							class="glyphicon glyphicon-user" aria-hidden="true"></span> 用户登录
						</a>
					<div class="cart box_1">
						<a href="javascript:;" data-toggle="modal"
							data-target=".bs-example-modal-lg">
							<h3>
								<div class="total">
									<span class="simpleCart_total"></span>
								</div>
								<img src="<c:url value="/images/cart.png"/>" alt="" />
							</h3>
						</a>
						<p>
							<a href="javascript:;" class="simpleCart_empty">清空购物车</a>
						</p>

					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="col-md-2 number">
				</div>
				<div class="col-md-8 h_menu4">
					<ul class="memenu skyblue">
						<li class=" grid"><a href="<c:url value="/goods/index"/>">首页</a></li>
						<li><a href="<c:url value="/goods/index"/>">Men</a>
							</li>
						<li class="grid"><a href="<c:url value="/goods/index"/>"> Women</a>
							</li>
						<li><a href="<c:url value="/goods/index"/>">Blog</a></li>
						<li><a class="color6" href="<c:url value="/goods/index"/>">Conact</a></li>
					</ul>
				</div>
				<div class="col-md-2 search">
					<a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i
						class="glyphicon glyphicon-search"> </i> </a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//header-->
	<div class="account">
		<div class="container">
			<h1>Account</h1>
			<div class="account_grid">
				<div class="col-md-6 login-right">
					<form action="<c:url value="/user/checkLogin"/>">

						<span>用户名</span> <input type="text" name="name">
						<span>密码</span> <input type="text" name="pass1" id="pass1">
						<input type="hidden" type="text" name="pass" id="pass">

						<div class="word-in">
							我是买家&nbsp; <input type="radio" checked="checked" name="flag"
								value="0" /><br>
							<hr>
							我是卖家&nbsp; <input type="radio" name="flag" value="1" /><br>
							<hr>
							<input type="submit" value="  登录  ">
							<p style="color: red">${message}</p>
						</div>
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<!--footer-->
	<div class="footer">
		<div class="footer-bottom">
			<div class="container">
				<div class="clearfix"></div>
				<p class="footer-class">
					Copyright &copy; 2017.mrpod2g All rights reserved.
				</p>
			</div>
		</div>
	</div>

	<!--//footer-->
</body>
<script src="<c:url value="/scripts/jquery.min.js"/>"></script>
<script src="<c:url value="/scripts/md5.js"/>"></script>
<script src="<c:url value="/scripts/jquery.magnific-popup.js"/>"></script>
<script type="application/x-javascript">
$("form").submit(function() {
	var hash = md5($("input#pass1").val());
	$("input#pass").val(hash);
	$("input#pass1").attr("disabled", "true");
});
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<script type="text/javascript" src="<c:url value="/scripts/memenu.js"/>"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script src="<c:url value="/scripts/simpleCart.min.js"/>">
	
</script>
<script src="<c:url value="/scripts/responsiveslides.min.js"/>"></script>
<script>
	$(document).ready(function() {
		$('.popup-with-zoom-anim').magnificPopup({
			type : 'inline',
			fixedContentPos : false,
			fixedBgPos : true,
			overflowY : 'auto',
			closeBtnInside : true,
			preloader : false,
			midClick : true,
			removalDelay : 300,
			mainClass : 'my-mfp-zoom-in'
		});

	});
</script>
<script>
	$(function() {
		$("#slider").responsiveSlides({
			auto : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>
</html>