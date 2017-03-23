<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>商品详情</title>
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
<script type="application/x-javascript">
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 





</script>
<!---->
</head>
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
						<c:set var="buyerName" scope="session" value="${buyerName}" />
						<c:if test="${not empty buyerName}">
							<span>欢迎您！${buyerName}</span>
							<a href="<c:url value="/user/loginout"/>"
								class="simpleCart_empty">退出</a>
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
		<div class="modal fade bs-example-modal-lg" tabindex="-1"
			role="dialog" aria-labelledby="myLargeModalLabel">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="simpleCart_items">
						<!--数据加载前显示的内容 开始-->
						<div style="text-align: center;">购物车数据加载中...请稍待.</div>
						<!--数据加载前显示的内容 结束-->
					</div>
					<div class="col-md1">
					合计:
					<div class="simpleCart_total"></div>
					<a class="btn btn-success" href="<c:url value="/cart/gotobuy"/>">去
						结 算</a>
				</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="col-md-2 number">
				</div>
				<div class="col-sm-8 h_menu4">
					<ul class="memenu skyblue">
						<li class=" grid"><a href="<c:url value="/goods/index"/>">首页</a></li>
						<li><a href="<c:url value="/goods/index"/>">Men</a></li>
						<li class="grid"><a href="<c:url value="/goods/index"/>">
								Women</a></li>
						<li><a href="<c:url value="/goods/index"/>">Blog</a></li>
						<li><a class="color6" href="<c:url value="/goods/index"/>">Conact</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---->
	<div class="single">

		<div class="container">
			<div class="col-md-9 simpleCart_shelfItem">
				<div class="col-md-5 grid">
					<div class="flexslider">
						<img src="<c:url value="/images/${entity.picture }"/>"
							data-imagezoom="true" class="img-responsive item_picture">
					</div>
				</div>
				<div class="col-md-7 single-top-in">
				<input type="hidden" value="${entity.id}" name="id" class="id">
					<input type="hidden" value="${entity.picture}" name="picture"
						class="picture"> <input type="hidden"
						value="${entity.name}" name="name" class="name"> <input
						type="hidden" value="${entity.price}" name="price" class="price">
					<div class="single-para">
						<h1 class="item_name">${entity.name }</h1>
						<h3 style="display: none;">
							<a class="item_id" style="">${entity.id}</a>
						</h3>
						<p>${entity.info }.</p>
						<div class="star-on">
							<ul>
								<li><a href="#"><i class="glyphicon glyphicon-star">
									</i></a></li>
								<li><a href="#"><i class="glyphicon glyphicon-star">
									</i></a></li>
								<li><a href="#"><i class="glyphicon glyphicon-star">
									</i></a></li>
								<li><a href="#"><i class="glyphicon glyphicon-star">
									</i></a></li>
								<li><a href="#"><i class="glyphicon glyphicon-star">
									</i></a></li>
							</ul>
							<div class="review">
								<a href="#"> 3 reviews </a>/ <a href="#"> Write a review</a>
							</div>
							<div class="clearfix"></div>
						</div>

						<label class="add-to item_price">￥ ${entity.price }</label>
						<c:if test="${empty buyerName}">
							<a href="<c:url value="/user/login"/>" class="cart">加入购物车</a>
						</c:if>
						<c:if test="${not empty buyerName}">
							<a href="javascript:;" class="cart item_add">加入购物车</a>
						</c:if>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--footer-->
	<div class="footer">
		<div class="container"></div>
		<div class="footer-bottom">
			<div class="container">
				<div class="clearfix"></div>
				<p class="footer-class">Copyright &copy; 2017.mrpod2g All
					rights reserved.</p>
			</div>
		</div>
	</div>
	<script src="<c:url value="/scripts/jquery.min.js"/>"></script>
	<script src="<c:url value="/scripts/jquery.magnific-popup.js"/>"></script>
	<script src="<c:url value="/scripts/simpleCart.min.js"/>"></script>
	<script src="<c:url value="/scripts/responsiveslides.min.js"/>"></script>
	<script src="<c:url value="/scripts/memenu.js"/>"></script>
	<script src="<c:url value="/scripts/bootstrap.min.js"/>"></script>
	<script type="text/javascript">
		$("a.item_add").click(function() {
			var index = $(this).parent();
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
					"id" : id
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
</body>
</html>