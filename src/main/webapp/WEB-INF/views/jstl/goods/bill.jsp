<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>历史订单</title>
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
</head>
<body>
	<div class="container">
		<div class="check-out">
			<h1>历史订单</h1>
			<table id="container">
				<tr>
					<th>商品</th>
					<th>数量</th>
					<th>购买价格</th>
					<th>购买时间</th>
				</tr>
				<c:forEach var="order" items="${orders}">
					<tr>
						<td class="ring-in"><a href="single.html" class="at-in"><img
								src="${order.picture}" class="img-responsive" alt=""></a>
							<div class="sed">
								<h5>${order.pname}</h5>
							</div>
							<div class="clearfix"></div></td>
						<td>${order.quantity}</td>
						<td>${order.price}</td>
						<td>${order.buydate}</td>
					</tr>
				</c:forEach>
			</table>
			<div class="clearfix"></div>
			<h1><a class="btn btn-danger" href="<c:url value="/goods/index"/>">返回首页</a></h1>
		</div>
	</div>
	<!--footer-->
	<div class="footer">
		<div class="footer-bottom">
			<div class="container">
				<div class="clearfix"></div>
				<p class="footer-class">Copyright &copy; 2015.Company name All
					rights reserved.</p>
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
</html>