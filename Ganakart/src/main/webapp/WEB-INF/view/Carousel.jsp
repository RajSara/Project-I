									<!-- Header Command -->
										
							<%@ include file="Head.jsp" %>
<html>
<head>
<title>Home</title>									
  									<!-- Carousel css -->
  									
  <link rel="stylesheet" href="<c:url value='/resource/saracss/Carsoal.css/' /> "/>
  
</head>
<body>
						
<div class="container-fluid-full">
<br>
<div id="carousel" class="carousel slide carousel-fade" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
        <li data-target="#carousel" data-slide-to="3"></li>
  
    </ol>
    
   									 <!-- Carousel items -->
   								 
    <div class="carousel-inner carousel-zoom">
        <div class="active item"><img class="img-responsive" src="<c:url value='/resource/images/s.jpg'/>" alt="first" style="width:1380px;height:580px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/images/a.jpg'/>" alt="second" style="width:1380px;height:580px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/images/n.jpg'/>" alt="third" style="width:1380px;height:580px"/>
        </div>
        <div class="item"><img class="img-responsive" src="<c:url value='/resource/images/r.jpg'/>" alt="fourth" style="width:1380px;height:580px"/>
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