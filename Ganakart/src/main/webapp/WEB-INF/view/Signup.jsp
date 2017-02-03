<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>										
										<!-- Bootstrap Command -->
										
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		    <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />
		    
		    <link rel="stylesheet" href="<c:url value='/resource/saracss/Login.css'/>" />
		    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

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
  
   <a class="navbar-brand" href="index"> GanaKart</a>
   
       <div class="navbar-collapse collapse">
           <ul class="nav navbar-nav navbar-left">
		     <li class=""><a href="Home">Home</a> </li>
			 <li> <a href="About">About</a> </li>
			 <li> <a href="ProductForm">Product</a> </li>
			    <li class="dropdown">
			       <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Categories <span class="caret"> </span> </a>
					 <ul class="dropdown-menu">
					   <li class="dropdown-header">Electrical</li>
					   <li><a href="#"> Guitar</a> </li>
					   <li><a href="#"> Keyboad</a> </li>
					   <li class="dropdown-header">Hardware</li>
					   <li><a href="#"> Voilin</a> </li>
					   <li><a href="#"> ksjdcg</a> </li>
					 </ul>
					 </li>
					 </ul>
			 <div class="navbar-collapse collapse">
			 <ul class="nav navbar-nav navbar-right">
			 <li> <a href="Login">Login</a> </li>
			   </ul>
			   </div>
  </div>
  </div>
</nav>
												
												<div class="vid-container">
  <video class="bgvid" autoplay="autoplay" muted="muted" preload="auto" loop>
     <source src="http://mazwai.com/system/posts/videos/000/000/109/webm/leif_eliasson--glaciartopp.webm?1410742112" type="video/webm">
  </video>
  <div class="inner-container">
    <video class="bgvid inner" autoplay="autoplay" muted="muted" preload="auto" loop>
      <source src="http://mazwai.com/system/posts/videos/000/000/109/webm/leif_eliasson--glaciartopp.webm?random=1" type="video/webm">
    </video>
    <div class="box">
      <h1>Signup</h1>
      <input type="text" placeholder="Username"/>
      <input type="number" placeholder="Mobileno"/>
      <input type="text" placeholder="Retype Password"/>
      <button>Signup</button>
    </div>
  </div>
</div>



												<%@include file="Footer.jsp"%>
									
									<script src="<c:url value='/resource/js/bootstrap.min.js'/>" /></script>
</body>
</html>