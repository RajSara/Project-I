<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="Head.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Product</title>
</head>
<body style="margin-top:90px;" ng-app="app" ng-controller="ProductController">

<div class="page-header">
<b>Product Details</b>
${product.name}<br><br>
${product.image}
${product.description }<br><br>
${product.category.categoryDetails}
</div>

<%-- <c:url value="/addCartItem/${product.id }" var="url"></c:url> --%>
<a href=""  ng-click="addToCart(${product.id })"><span class="glyphicon glyphicon-shopping-cart"></span></a>

							<!--Script tag for JS  -->
	 <script src="<c:url value="/resource/js/controller.js"></c:url>"></script>
</body>

</html>