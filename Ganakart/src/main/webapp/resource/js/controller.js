var app=angular.module("app",[])
app.controller("ProductController",function($scope,$http){
	$scope.addToCart=function(productId){
		$http.put('http://localhost:8080/Ganakart/cart/addCartItem/'+productId).success(function(){
			alert("Product Successfully added to the Cart")
		})
	}
	
})


//($http)
//get-to retrieve date
//put-send some data to the server
//post- send some data to the server
//delete-delete some data