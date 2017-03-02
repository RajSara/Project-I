<%@ include file="Head.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mam Login Page</title>
</head>
<body style="margin-top:100px">
Enter UserName and Password <br>
${error }
${logout }
${registrationSuccess}
<form action="<c:url value="j_spring_security_check"></c:url>" method="post">
Enter Username <input type="text" name="j_username"/>
Enter password <input type="password" name="j_password"/>
<input type="submit" value="sumbit"/>
</form>
</body>
</html>