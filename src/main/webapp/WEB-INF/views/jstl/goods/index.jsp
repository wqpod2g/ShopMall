﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
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
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="col-sm-4 world">
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
				<div class="col-sm-4 logo">
					<a href="index.html"><img
						src="<c:url value="/images/logo.png"/>" alt=""></a>
				</div>

				<div class="col-sm-4 header-left">
					<p class="log">
						<c:set var="buyerName" scope="session" value="${buyerName}" />
						<c:if test="${not empty buyerName}">
							<span>欢迎您！${buyerName}</span><br>
							<a href="<c:url value="/user/loginout"/>" class="loginout">退出</a>
							<a href="<c:url value="/user/checkbill"/>">财务</a>
						</c:if>
						<c:if test="${empty buyerName}">
							<a href="<c:url value="/user/login"/>"> <span
								class="glyphicon glyphicon-user" aria-hidden="true"></span> 用户登录
							</a>
						</c:if>
					</p>
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
					<span><i class="glyphicon glyphicon-phone"></i>123 456 789</span>
				</div>
				<div class="col-sm-8 h_menu4">
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
				<div class="clearfix"></div>
			</div>
		</div>
	</div>


	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="simpleCart_items">
					<!--数据加载前显示的内容 开始-->
					<div style="text-align: center;">购物车数据加载中...请稍待.</div>
					<!--数据加载前显示的内容 结束-->
				</div>
				<div class="col-md1">合计:<div class="simpleCart_total"></div>
				<a class="btn btn-success" href="<c:url value="/cart/gotobuy"/>">去 结 算</a></div>
			</div>
		</div>
	</div>

	<!--content-->
	<div class="content">
		<div class="container">
			<div class="content-top">
				<h1>Recent Products</h1>
				<div class="content-top1">

					<c:forEach var="entity" items="${goods}">
						<div class="col-md-3 col-md2">
							<input type="hidden" value="${entity.id}" name="id" class="id">
							<input type="hidden" value="${entity.picture}" name="picture"
								class="picture"> <input type="hidden"
								value="${entity.name}" name="name" class="name"> <input
								type="hidden" value="${entity.price}" name="price" class="price">
							<div class="col-md1 simpleCart_shelfItem">
								<a href="<c:url value="/goods/single/${entity.id}"/>"> <img
									class="img-responsive item_picture"
									src="<c:url value="/images/${entity.picture}"/>" alt=""
									width="200" height="200" />
								</a>
								<h3>
									<a href="single.html" class="item_name">${entity.name}</a>
								</h3>
								<h3 style="display: none;">
									<a class="item_id" style="">${entity.id}</a>
								</h3>
								<div class="price">
									<h5 class="item_price">${entity.price}</h5>
									<c:if test="${empty buyerName}">
										<a href="<c:url value="/user/login"/>">加入购物车</a>
									</c:if>
									<c:if test="${not empty buyerName}">
										<a href="javascript:;" class="item_add">加入购物车</a>
									</c:if>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</c:forEach>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--//content-->
	<!--footer-->
	<div class="footer">
		<div class="footer-bottom">
			<div class="container">
				<div class="clearfix"></div>
				<p class="footer-class">
					Copyright &copy; 2015.Company name All rights reserved.</a>
				</p>
			</div>
		</div>
	</div>

	<!--//footer-->
</body>
<script src="<c:url value="/scripts/jquery.min.js"/>"></script>
<script src="<c:url value="/scripts/jquery.magnific-popup.js"/>"></script>
<script src="<c:url value="/scripts/simpleCart.min.js"/>"></script>
<script src="<c:url value="/scripts/responsiveslides.min.js"/>"></script>
<script src="<c:url value="/scripts/memenu.js"/>"></script>
<script src="<c:url value="/scripts/bootstrap.min.js"/>"></script>
<script type="text/javascript">
	var name = "${buyerName}";
	if (name != "") {
		var str = '${simpleCart_items}';
		localStorage.simpleCart_items = str;
	}
	$("a.item_add").click(function() {
		var index = $(this).parent().parent();
		var price = index.siblings(".price").attr("value");
		var name = index.siblings(".name").attr("value");
		var id = index.siblings(".id").attr("value");
		var picture = index.siblings(".picture").attr("value");
		$.ajax({
			type : 'POST',
			url : "<c:url value="/cart/addItem"/>",
			data : {
				"id" : id,
				"name" : name,
				"picture" : picture,
				"price" : price
			},
			success : function(msg) {
				alert(msg);
			}
		});
	});

	simpleCart.bind('beforeRemove', function(item) {
		var id = item.get('id');
		$.ajax({
			type : 'POST',
			url : "<c:url value="/cart/deleteItem"/>",
			data : {
				"id" :id
			},
			success : function(msg) {
			}
		});
	});
	
</script>
<script type="text/javascript">

	simpleCart.currency({
		code : "RMB",
		name : "RMB",
		symbol : "￥"
	});

	simpleCart({
		cartColumns : [ {
			attr : "id",
			label : "商品编号"
		}, {
			attr : "name",
			label : "商品名称"
		}, {
			attr : "picture",
			label : "图片",
			view : "image"
		}, {
			attr : "price",
			label : "￥价格"
		}, {
			attr : "quantity",
			label : "数量",
			view : "input"
		}, {
			attr : "total",
			label : "￥总价"
		}, {
			view : "remove",
			text : "删除",
			label : false
		} ],
		cartStyle : "table"
	});
</script>


<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
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