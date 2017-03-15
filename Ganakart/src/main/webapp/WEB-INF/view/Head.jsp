<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page isELIgnored="false" %>
<html>
<head>
										<!-- Bootstrap Command -->
										
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		    <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />
		 
		 
		                                     <!-- Angular Js -->
		                                     
		      <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>                               
		 
	</head>
<body>

										<!-- Header navbar -->
							
<nav class="navbar  navbar-inverse  navbar-fixed-top">
  <div class="container">
  <button type="button" class="navbar-toggle"
  data-toggle="collapse"
  data-target=".navbar-collapse"
  >
  <span class="sr-only"> Toggle navigation</span>
  <span class="icon-bar"> </span>
  <span class="icon-bar"> </span>
  <span class="icon-bar"> </span>
  </button>
  
   <a class="navbar-brand" href="index"><img class="img-responsive logo" src="<c:url value='/resource/images/logo.png' />" style="width:80px;height:90px" /></a>
   
       <div class="navbar-collapse collapse">
           <ul class="nav navbar-nav navbar-left">
           
           <c:url var="H" value="/Carousel"></c:url>
           <li><a href="${H }">Home</a></li>
           
           <c:url var="A" value="/About"></c:url>
           <li><a href="${A }">About</a></li>
           
		     <!-- <li class=""><a href="Carousel">Home</a> </li>
			 <li> <a href="About">About</a> </li> -->
			 			 
			  <c:url var="productform" value="/admin/product/productform"></c:url>
			
			<c:if test="${pageContext.request.userPrincipal.name !=null}">
			<security:authorize access="hasRole('ROLE_ADMIN')">
			 <li><a href="${productform }">Products</a></li>
			 </security:authorize>
			 
			<!--  <li> <a href="admin/product/productform">Product</a> </li> -->
			 
			 <c:url var="allProducts" value="/all/product/getAllProducts"></c:url>
			 <li><a href="${allProducts }"> Browse All Products </a></li>
			 
			 <!-- <li><a href="all/product/getAllProducts">Browse all products</a></li> -->
			 
			    <li class="dropdown">
			       <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Categories <span class="caret"> </span> </a>
					 <ul class="dropdown-menu">
					   
					 <c:url var="cat1" value="/all/product/productsByCategory?searchCondition=Brass"></c:url>
					 <li> <a href="${cat1}">Brass</a></li>  
					 
					 <c:url var="cat2" value="/all/product/productsByCategory?searchCondition=Woodwinds"></c:url>
					 <li> <a href="${cat2}">Woodwinds</a></li>
					 
					 <c:url var="cat3" value="/all/product/productsByCategory?searchCondition=Electronics"></c:url>
					 <li> <a href="${cat3}">Electronics</a></li>
					   
					 </ul>
					 </li>
					 
					 <li><a href="">Hi ${pageContext.request.userPrincipal.name}!!!</a></li>
					 
					 </c:if>
					 
					 </ul>
			 <div class="navbar-collapse collapse">
			 <ul class="nav navbar-nav navbar-right">
		     <li> <a href="Login"><span class="glyphicon glyphicon-Log-in"></span> Login</a> </li>
		     <li> <a href="Signup"><span class="glyphicon glyphicon-user"></span> Signup</a> </li>
		     <li> <a href="Regown"><span class="glyphicon glyphicon-user"></span> Registerrr</a> </li>
		     
		     <security:authorize access="hasRole('ROLE_USER')">
		     
		     <li> <a href="<c:url value="/cart/getCartId"></c:url>"><span class="glyphicons glyphicons-shopping-cart"></span>Cart</a></li>
		     
		     </security:authorize>
		     <c:if test="${pageContext.request.userPrincipal.name==null}">
		   
			 <li> <a href="<c:url value="/eo/customerForm"></c:url>"> <span class="glyphicon glyphicon-user"></span> Register </a></li>
			 
			 
			 </c:if>
			 
			 <c:if test="${pageContext.request.userPrincipal.name !=null}">
			 
			 <li><a href="<c:url value="/j_spring_security_logout"></c:url>"><span class="glyphicon glyphicon-off"></span>Logout</a></li>
			 </c:if>
			 
			   </ul>
			   </div>
  </div>
  </div>
</nav>	      
	 								
								<script src="<c:url value='/resource/js/bootstrap.min.js'/>" /></script>			
</body>
</html>
