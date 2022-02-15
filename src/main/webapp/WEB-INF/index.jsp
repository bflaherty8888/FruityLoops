<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fruity Loops</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="container pt-4">
		<h1>Fruit Store</h1>
		<table class="table table-dark table-striped m-4">
		<tr>
			<th>Name</th>
			<th class="text-end">Price</th>
		</tr>
			<c:forEach var="fruit" items="${fruits}">
				<tr>
					<td><c:out value="${fruit.name}"></c:out></td>
					<td class="text-end">$ <c:out value="${ String.format('%.2f', fruit.price) }"></c:out></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>