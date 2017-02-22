
<%@ include file="Head.jsp"%>
<html>
<head>
<title>Product List</title>
</head>

<body style="margin-top:90px;">

	<div class="container">

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Image</th>
					<th>Product Name</th>
					<th>Description</th>
					<th>Category</th>
                     <th>View/Edit/Delete</th>
				</tr>
			</thead>
			<c:forEach var="p" items="${productList}">
				<tr>
				
				<td>
				<c:url var="src" value="/resource/images/${p.id }.jpg" ></c:url>
				<img src="${src }" alt="sara" style="width:400px;height:250px"/>
				</td>
				
					<td>${p.name }</td>
					<td>${p.description }</td>
					<td>${p.category.categoryDetails}</td>
				    
				    <td>
					<c:url var="url" value="/all/product/viewproduct/${p.id }"></c:url>
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a> 
					
					<c:url var="delete" value="/admin/product/deleteproduct/${p.id }"></c:url>
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					
					<c:url var="edit" value="/admin/product/editform/${p.id }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
				    </td>
				</tr>
			</c:forEach>
		</table>

	</div>
</body>
</html>