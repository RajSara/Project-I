<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>About Us</title>
									<!-- Bootstrap Command -->										
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />
  									
  									<!-- Carousel css -->
  									
  <link rel="stylesheet" href="<c:url value='/resource/saracss/Carsoal.css/' /> "/>
  
</head>
<body>
								   	<!-- Header Command -->
										
							<%@ include file="Header.jsp" %>
						
<div class="container-fluid-full">
<br>
<div id="carousel" class="carousel slide carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
        <li data-target="#carousel" data-slide-to="3"></li>
        <li data-target="#carousel" data-slide-to="4"></li>
    </ol>
    
   									 <!-- Carousel items -->
   								 
    <div class="carousel-inner carousel-zoom">
        <div class="active item"><img class="img-responsive" src="<c:url value='/resource/images/3.jpg'/>" alt="first" style="width:1280px;height:460px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/images/4.jpg'/>" alt="second" style="width:1280px;height:460px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/images/5.jpg'/>" alt="third" style="width:1280px;height:460px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/images/bg3.jpg'/>" alt="fourth" style="width:1280px;height:460px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/images/2.jpg'/>" alt="fourth" style="width:1280px;height:460px"/>
        </div>
       </div>
    							 	<!-- Carousel nav -->
    							 
    <a class="carousel-control left"  href="#carousel" data-slide="prev"></a>
    <a class="carousel-control right"  href="#carousel" data-slide="next"></a>
</div>
</div>
									<!-- Footer command -->
						
						<%@ include file="Footer.jsp" %>

						<!-- Placed at the end of the document so the pages load faster -->
  
  		<script src="<c:url value='/resource/js/bootstrap.min.js' />" /></script>
  		
</body>
</html>