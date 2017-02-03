<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
									<!-- Bootstrap Command -->
										
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		    <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />
		    
		    <style>
body{
background-image: url("<c:url value='/resource/images/2.jpg'/>");
background-size: cover;
height: auto;
width: 100%;
}
</style>
<title>Ganakart</title>
</head>

<body>
									<%@include file="Header.jsp" %>
									
									
                                  <h2 style="margin-top:50px; text-align:center; color:white">Hello World!</h2>

									<%@include file="Footer.jsp" %>
									
					<script src="<c:url value='/resource/js/bootstrap.min.js'/>" /></script>
</body>
</html>
