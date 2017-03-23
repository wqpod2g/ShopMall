<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link href="<c:url value="/styles/main.css" />" type="text/css"
	rel="stylesheet" />
<title>新增商品</title>
</head>
<body>
	<div class="main">
		<h2 class="title">
			<span>新增商品</span>
		</h2>
		<form:form action="addSave" modelAttribute="entity" method="post"
			enctype="multipart/form-data">
			<fieldset>
				<legend>商品</legend>
				<p>
					<label for="name">商品名称：</label>
					<form:input path="name" size="50" />
					<form:errors path="name" cssClass="error"></form:errors>
				</p>
				<p>
					<label for="info">商品信息：</label>
					<form:input path="info" size="50" />
				</p>
				<p>
					<label for="price">商品价格：</label>
					<form:input path="price" />
					<form:errors path="price" cssClass="error"></form:errors>
				</p>
				<p>
					<label for="title">商品图片：</label> <input type="file" name="picFile" />
				</p>
				<p>
					<input type="submit" value="保存" class="btn out">
				</p>
			</fieldset>
		</form:form>
		<p style="color: red">${message}</p>
		<form:errors path="*"></form:errors>
		<p>
			<a href="<c:url value="/goods/list" />" class="abtn out">返回列表</a>
		</p>
	</div>
</body>
</html>