<%@ include file="Head.jsp" %>
<html>
<head>
<title>Cart</title>
</head>
<body style="margin-top:100px">
<div ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId})">

<a href="" class="btn btn-danger pull-left" ng-click="clearCart()">
<span class="glyphicon glphyicon-remove-sign"></span>Clear Cart</a>
 
<a href="<c:url value="/order/${cartId}"></c:url>" class="btn btn-success pull-right">
<span class="glyphicon glyphicon-shopping-cart"></span>Checkout</a>

<table class="table table-striped">
<thead>
<tr><th>NAME</th><th>QUANTITY</th><th>TOTAL PRICE</th><th>REMOVE</th>
</tr>
</thead>
<tr ng-repeat="cartItem in cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
<td><a href="" class="btn btn-warning pull-left" ng-click="removeFromCart(cartItem.id)"><span class="glyphicon glyphicon-trash"></span>
</a></td>
</tr>

</table>
Total Price:{{calculateGrandTotal()}}
</div>
</div>
<script src="<c:url value="/resource/js/controller.js"></c:url>"></script>
</body>
</html>
