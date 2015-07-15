<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/layout/header.jsp" />
</head>
<body>
	<section id="cart_items">
	<div class="container">
		<div class="breadcrumbs">
			<ol class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li class="active">Shopping Cart</li>
			</ol>
		</div>
		<div style="margin: 0 auto;">
			<p style="font-size: 21px; color: orange;">List of USER</p>
			<button onclick="add()" class="btn btn-success">ADD USER</button>
			<table class="table table-condensed table-striped table-bordered">
				<thead>
					<tr style="background-color: orange;" class="cart_menu">
						<td class="image">Id</td>
						<td class="description">Name</td>
						<td class="price">Email Address</td>
						<td class="parent">ROLE</td>
						<td>Action</td>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${UserList}" var="User"
						varStatus="loopCounter">
						<tr class="odd">
							<td class="sorting_1"><c:out value="${loopCounter.count}" /></td>
							<td><c:out value="${User.username}" /></td>
							<td><c:out value="${User.emailAddress}" /></td>
							<td><c:out value="${User.role}" /></td>
							<td>
<!-- 								<button class="btn btn-success" -->
<%-- 									onclick="editUser(${User.id})"> --%>
<!-- 																				<i class="fa fa-pencil"></i>  -->
<!-- 									Edit -->
<!-- 								</button>  -->
						<a class="btn btn-danger" 
								onclick="return confirm('Are you sure you want to delete this Category?');"
								href="delete/${User.id}"> <i class="fa fa-times"></i>Delete
							</a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
			</table>
		</div>
	</div>
	
	<script type="text/javascript">
	function add(){
		 window.location.href='register';
	}
	
// 	function editUser(id)
// 	{
// 		console.log(id);
// 		window.location.href = 'get/' +id
// // 		$.get("get/" + id, function(result) {
// 			alert('test');
// // 		$("#description").val(result);
// // 		$("#modalForm").html(result);
// // 		$("#addCategoryModal").modal('show');
		
// // 		});
		
	
// 	}
	</script>




	
<jsp:include page="/WEB-INF/layout/footer.jsp" />	
</body>
</html>