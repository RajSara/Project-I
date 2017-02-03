<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Form</title>
</head>

 <body>
 
 <%@ include file="Header.jsp" %>
<div class="container-wrapper">
    <div class="container">
    <c:url value="/admin/product/addProduct" var="url"></c:url>
      <form:form action="${url}" commandName="product">

<div class="form-group">
<label for="id" >  </label>
<form:hidden path=""/>
</div>


<div class="form-group">
<label for="name"> Product Name </label>
<form:input path="name" class="form-control"/>
</div>


<div class="form-group">     
<label for="description"> Description </label>
<form:input path="description" class="form-control" />
</div>


<div class="form-group">
<label for="price"> Price </label>
<form:input path="price" class="form-control"/>
</div>


<div class="form-group">
<label for="quantity"> Quantity</label>
<form:input path="quantity" class="form-control"/>
</div>


<div class="form-group">
<label for="manufacturing date">Manufacturing Date </label>
<form:input path="mfg" class="form-control"/>
</div>


<input type="submit" value="add product" class="btn btn-default">
</form:form>
</div>
</div>
            
</body>
</html>