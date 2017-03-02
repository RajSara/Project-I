
<%@ include file="Head.jsp"%>
<html>
<head>
<title>Product List</title>
</head>

<body style="margin-top:90px;">

<div style="font-family:lucida calligraphy;color:#6600c;font-size:32px; text-align:center;">PRODUCT LIST</div>

	<div class="container">

		<table class="table table-striped">
			<thead>
				<tr bgcolor="#ffff00">
					<th style="color:#3366ff">Image</th>
					<th style="color:#ff3333">Product Name</th>
					<th style="color:#cc00ff">Description</th>
					<th style="color:#993399">Category</th>
                     <th style="color:#ff9900">View/Edit/Delete</th>
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