<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<html>
<head>

										<!-- Bootstrap Command -->
										
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		    <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />
		 
</head>
<body>

								
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
  
   <a class="navbar-brand" href="index"> GanaKart</a>
   
       <div class="navbar-collapse collapse">
           <ul class="nav navbar-nav navbar-left">
		     <li class=""><a href="Carousel">Home</a> </li>
			 <li> <a href="About">About</a> </li>
			 
			 <li class="dropdown">
			       <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Categories <span class="caret"> </span> </a>
					 <ul class="dropdown-menu">
					 
					   <!-- <li class="dropdown-header"> Brass </li>
					   <li><a href="#"> Trumpet </a> </li>
					   <li><a href="#"> Tuba </a> </li>
					   <li class="dropdown-header"> Woodwinds </li>
					   <li><a href="#"> Flute </a> </li>
					   <li><a href="#"> Oboe </a> </li>
					   <li class="dropdown-header"> Electronic </li>
					   <li><a href="#"> Keyboard </a> </li>
					   <li><a href="#"> Drum </a> </li> -->
					   
					 <c:url var="cat1" value="/all/product/productsByCategory?searchCondition=Brass"></c:url>
					 <li> <a href="${cat1}">Brass</a></li>  
					 
					 <c:url var="cat2" value="/all/product/productsByCategory?searchCondition=Woodwinds"></c:url>
					 <li> <a href="${cat2}">Woodwinds</a></li>
					 
					 <c:url var="cat3" value="/all/product/productsByCategory?searchCondition=Electronics"></c:url>
					 <li> <a href="${cat3}">Electronics</a></li>
					   
					 </ul>
					 </li>
					</ul> 
			 
			 <div class="navbar-collapse collapse">
			 <ul class="nav navbar-nav navbar-right">
		     <!-- <li class=""><a href="Login">Login</a> </li>
			 <li> <a href="Signup">Signup</a> </li> -->
			 
			 <li> <a href="Login"><span class="glyphicon glyphicon-Log-in"></span> Login</a> </li>
		     <li> <a href="Signup"><span class="glyphicon glyphicon-user"></span> Signup</a> </li>
		     
			   </ul>
			   </div>
  </div>
  </div>
</nav>	      
	 								
								<script src="<c:url value='/resource/js/bootstrap.min.js'/>" /></script>			
</body>
</html>
