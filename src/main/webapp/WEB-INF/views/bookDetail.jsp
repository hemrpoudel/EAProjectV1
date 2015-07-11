<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add a book</title>
</head>
<body>
	<form action="../books/${book.id}" method="post">
	<table>
		<tr>
			<td>ISBN:</td>
			<td><form:input path="ISBN" value="${book.ISBN}" /> </td>
			<form:errors path="ISBN" > </form:errors>
		</tr>
		<tr>
			<td>Title:</td>
			<td><input type="text" name="model" value="${book.title}" /> </td>
		</tr>
		<tr>
			<td>Year:</td>
			<td><input type="text" name="year" value="${book.author}" /> </td>
		</tr>
		<tr>
			<td>Color:</td>
			<td><input type="text" name="color" value="${book.price}" /> </td>
		</tr>
	</table>
	<input type="submit" value="update"/>
	</form>
	<form action="delete?bookId=${book.id}" method="post">
		<button type="submit">Delete</button>
	</form>
</body>
</html>