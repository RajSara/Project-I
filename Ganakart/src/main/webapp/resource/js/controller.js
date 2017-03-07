var app=angular.module("app",[])
app.controller("ProductController",function($scope,$http){
	$scope.addToCart=function(productId){
		$http.put('http://localhost:8080/Ganakart/cart/addCartItem/'+productId).success(function(){
			alert("Product Successfully added to the Cart")
		})
	}
	
	$scope.getCart=function(cartId){
		console.log("cartId is"+cartId)
		$http.get('http://localhost:8080/Ganakart/cart/getCart/'+cartId).success(function(){
			$scope.cart=data //while retriving the data it will be in the JSON form
		})
	}
})


//($http)
//get-to retrieve date
//put-send some data to the server
//post- send some data to the server
//delete-delete some data