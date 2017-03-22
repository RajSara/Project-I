
<%@ include file="Head.jsp" %>

<html>
<head>

<title>View Product</title>
</head>
<body style="margin-top:90px;" ng-app="app" ng-controller="ProductController">

<div class="page-header">
<center>
<b>PRODUCT DETAILS:</b>
${product.name}<br><br>

<c:url var="src" value="/resource/images/${product.id }.jpg" ></c:url>
<img src="${src }" alt="sara" style="width:250px;height:200px"/>
<br><br>

<b>DESCRIPTION:</b>
${product.description }<br><br>

<b>CATEGORY:</b>
${product.category.categoryDetails}
</center>
</div>

<%-- <c:url value="/addCartItem/${product.id }" var="url"></c:url> --%>
<a href=""  ng-click="addToCart(${product.id })"> <center><span class="glyphicon glyphicon-shopping-cart"></center></span></a>

							<!--Script tag for JS  -->
	 <script src="<c:url value="/resource/js/controller.js"></c:url>"></script>
</body>

</html>