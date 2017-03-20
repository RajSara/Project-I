<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/view/Head.jsp" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<title>CheckOutCancelled</title>
</head>
<body>

<div class="container-wrapper">
<div class="container">
<section>
<div class="jumbotron">

<h1 class="alert alert-danger"> CheckOut Cancelled</h1>

<p>Your CheckOut Process is Cancelled!!!!! You may Continue Shopping.....</p>

</div></section>
</div>
</div>

<section class="container">
<p><a href="<spring:url value="/all/product/getAllProducts"/>" class="btn btn-default"> Products </a></p></section>

<script src="<c:url value="/resource/js/controller.js"></c:url>"></script>

<%@ include file="/WEB-INF/view/Footer.jsp" %>
</body>
</html>