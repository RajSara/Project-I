<%@ include file="Head.jsp" %>
<html>
<head>
<title>Edit Product Form</title>

                                    <!--Date Picker using JQuery -->
                  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
                   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
                     <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script>
$(function(){
$("#datepicker").datepicker();
	format:'YYYY-mm-dd'		
});	
</script>  

</head>
<body style="margin-top:80px;">

<div class="container-wrapper">
<div class="container">

<c:url value="/admin/product/editProduct" var="url"></c:url>
<form:form action="${url }"  commandName="product" enctype="multipart/form-data">

<div class="form-group">
<label for="id"></label>
<form:hidden  path="id"/>
</div>

<div class="form-group">
<label for="name">Product Name</label>
<form:input path="name" class="form-control"/>
<form:errors path="name" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="description">Description</label>
<form:input path="description" class="form-control"/>
<form:errors path="description" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="price">Price</label>
<form:input path="price" class="form-control" />
<form:errors path="price" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="quantity">Quantity</label>
<form:input path="quantity" class="form-control"/>
<form:errors path="quantity" cssStyle="color:#ff0000"></form:errors>
</div>

<%-- <div class="form-group">
<label for="mfg">Mfg Date</label>
<form:input path="mfg" class="form-control"/>
<form:errors path="mfg" cssStyle="color:#ff0000"></form:errors>
</div> --%>

<div class="form-group">
<label for="mfg">Manufacturing Date</label>
<form:input path="mfg" class="form-control" type="text" id="datepicker"/>
<form:errors path="mfg" cssStyle="color:#ff0000"></form:errors>
</div> 


<div class="form-group">
<label for="category">Category</label>
<!-- List<Category> c =model.getAttribute("categories");
out.println(c.id)
out.println(c.categoryDetails); -->
 
<c:forEach var="c" items="${categories}">
<form:radiobutton path="category.id" value="${c.id}"/>
${c.categoryDetails }
</c:forEach>
<form:errors path="category" cssStyle="color:#ff0000"></form:errors>
</div>

<input type="submit" value="Edit Product" class="btn btn-default">
</form:form>

</div>

</div>
</body>
</html>
