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
					<ul>
						<li><select class="in-drop">
								<option>English</option>
								<option>Japanese</option>
								<option>French</option>
						</select></li>
						<li><select class="in-drop1">
								<option>Dollar</option>
								<option>Euro</option>
								<option>Yen</option>
						</select></li>
					</ul>
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
						<a href="checkout.html">
							<h3>
								<div class="total">
									<span class="simpleCart_total"></span>
								</div>
								<img src="<c:url value="/images/cart.png"/>" alt="" />
							</h3>
						</a>
						<p>
							<a href="javascript:;" class="simpleCart_empty">Empty Cart</a>
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
					<span><i class="glyphicon glyphicon-phone"></i>123 456 789</span>
				</div>
				<div class="col-md-8 h_menu4">
					<ul class="memenu skyblue">
						<li class=" grid"><a href="<c:url value="/goods/index"/>">首页</a></li>
						<li><a href="#">Men</a>
							<div class="mepanel">
								<div class="row">
									<div class="col1">
										<div class="h_nav">
											<h4>All Clothing</h4>
											<ul>
												<li><a href="products.html">Shirts</a></li>
												<li><a href="products.html">Sports Wear</a></li>
												<li><a href="products.html">Shorts</a></li>
												<li><a href="products.html">Suits & Blazers</a></li>
												<li><a href="products.html">Formal Shirts</a></li>
												<li><a href="products.html">Sweatpants</a></li>
												<li><a href="products.html">Swimwear</a></li>
												<li><a href="products.html">Trousers & Chinos</a></li>
												<li><a href="products.html">T-Shirts</a></li>
												<li><a href="products.html">Underwear & Socks</a></li>

											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="h_nav">
											<h4>Footwear</h4>
											<ul>
												<li><a href="products.html">Formal Shoes</a></li>
												<li><a href="products.html">Boots</a></li>
												<li><a href="products.html">Sports Shoes</a></li>
												<li><a href="products.html">Casual Shoes</a></li>
												<li><a href="products.html">Running Shoes</a></li>
												<li><a href="products.html">Sneakers</a></li>
												<li><a href="products.html">Loafers</a></li>
												<li><a href="products.html">Slippers</a></li>
												<li><a href="products.html">Sandals</a></li>
												<li><a href="products.html">Flip-flops</a></li>

											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="h_nav">
											<h4>Popular Brands</h4>
											<ul>
												<li><a href="products.html">Levis</a></li>
												<li><a href="products.html">Persol</a></li>
												<li><a href="products.html">Nike</a></li>
												<li><a href="products.html">Edwin</a></li>
												<li><a href="products.html">New Balance</a></li>
												<li><a href="products.html">Jack & Jones</a></li>
												<li><a href="products.html">Paul Smith</a></li>
												<li><a href="products.html">Ray-Ban</a></li>
												<li><a href="products.html">Wood Wood</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div></li>
						<li class="grid"><a href="#"> Women</a>
							<div class="mepanel">
								<div class="row">
									<div class="col1">
										<div class="h_nav">
											<h4>All Clothing</h4>
											<ul>
												<li><a href="products.html">Shirts & Tops</a></li>
												<li><a href="products.html">Sports Wear</a></li>
												<li><a href="products.html">Kurtas & Kurties</a></li>
												<li><a href="products.html">Suits & Blazers</a></li>
												<li><a href="products.html">Sarees</a></li>
												<li><a href="products.html">Sweatpants</a></li>
												<li><a href="products.html">Swimwear</a></li>
												<li><a href="products.html">Night-Suits</a></li>
												<li><a href="products.html">T-Shirts</a></li>
												<li><a href="products.html">Jeans</a></li>

											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="h_nav">
											<h4>Footwear</h4>
											<ul>
												<li><a href="products.html">Heels</a></li>
												<li><a href="products.html">Flats</a></li>
												<li><a href="products.html">Sports Shoes</a></li>
												<li><a href="products.html">Casual Shoes</a></li>
												<li><a href="products.html">Running Shoes</a></li>
												<li><a href="products.html">Wedges</a></li>
												<li><a href="products.html">Boots</a></li>
												<li><a href="products.html">Pumps</a></li>
												<li><a href="products.html">Slippers</a></li>
												<li><a href="products.html">Flip-flops</a></li>

											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="h_nav">
											<h4>Popular Brands</h4>
											<ul>
												<li><a href="products.html">Levis</a></li>
												<li><a href="products.html">Persol</a></li>
												<li><a href="products.html">Nike</a></li>
												<li><a href="products.html">Edwin</a></li>
												<li><a href="products.html">New Balance</a></li>
												<li><a href="products.html">Jack & Jones</a></li>
												<li><a href="products.html">Paul Smith</a></li>
												<li><a href="products.html">Ray-Ban</a></li>
												<li><a href="products.html">Wood Wood</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div></li>
						<li><a href="typo.html">Blog</a></li>
						<li><a class="color6" href="contact.html">Conact</a></li>
					</ul>
				</div>
				<div class="col-md-2 search">
					<a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i
						class="glyphicon glyphicon-search"> </i> </a>
				</div>
				<div class="clearfix"></div>
				<div id="small-dialog" class="mfp-hide">
					<div class="search-top">
						<div class="login">
							<input type="submit" value=""> <input type="text"
								value="Type something..." onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = '';}">
						</div>
						<p>Shopping</p>
					</div>
				</div>
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
						<span>密码</span> <input type="text" name="pass">

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
				<div class="col-md-6 login-left">
					<h4>NEW CUSTOMERS</h4>
					<p>By creating an account with our store, you will be able to
						move through the checkout process faster, store multiple shipping
						addresses, view and track your orders in your account and more.</p>
					<a class="acount-btn" href="register.html">Create an Account</a>
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
					Copyright &copy; 2015.Company name All rights reserved.<a
						target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
				</p>
			</div>
		</div>
	</div>

	<!--//footer-->
</body>
<script src="<c:url value="/scripts/jquery.min.js"/>"></script>
<script src="<c:url value="/scripts/jquery.magnific-popup.js"/>"
	type="text/javascript"></script>
<script type="application/x-javascript">
	
	
	
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