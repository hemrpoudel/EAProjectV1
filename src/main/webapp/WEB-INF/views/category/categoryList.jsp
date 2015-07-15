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
			<p style="font-size: 21px; color: orange;">List of Category</p>
			<button onclick="add()" class="btn btn-success">ADD CATEGORY
			</button>

			<table class="table table-condensed table-striped table-bordered">
				<thead>
					<tr style="background-color: orange;" class="cart_menu">
						<td class="image">Id</td>
						<td class="description">Name</td>
						<td class="price">Description</td>
						<td class="parent">IS Parent</td>
						<td>Action</td>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${CategoryList}" var="Category"
						varStatus="loopCounter">
						<tr class="odd">
							<td class="sorting_1"><c:out value="${loopCounter.count}" /></td>
							<td><c:out value="${Category.name}" /></td>
							<td><c:out value="${Category.description}" /></td>
							<td><c:choose>
									<c:when test="${Category.leaf}">
   										No
       								</c:when>
									<c:otherwise>
	      								Yes 
									</c:otherwise>
									</c:choose>
								</td>
							<td>
								<button class="btn btn-success"
									onclick="editCategory(${Category.id})">
									<!-- 											<i class="fa fa-pencil"></i> Edit -->
									Edit
								</button> <a class="btn btn-danger"
								onclick="return confirm('Are you sure you want to delete this Category?');"
								href="delete/${Category.id}"> <i class="fa fa-times"></i>Delete
							</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<div class="modal fade" id="addCategoryModal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Add Category</h4>
				</div>
				<div class="modal-body">
					<c:url var="actionUrl" value="saveProductBacklog" />
					<br>
					<br>

					<form action="${actionUrl }" commandName="category" role="form"
						id="modalForm" method="post">
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">Name</label>
								<textarea path="name" name="name" class="form-control" id="name"
									placeholder="Enter name of category"> </textarea>
								<label for="exampleInputEmail1">Description</label>
								<textarea path="description" name="description"
									class="form-control" id="description"
									placeholder="Enter Category Description"> </textarea>
							</div>
						</div>
						<!-- /.box-body -->

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" id="saveProductBacklog"
						class="btn btn-primary">Save</button>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!--/#cart_items-->


	<script type="text/javascript">
	
	function add(){
		 window.location.href='add';
	}
	function editCategory(id)
	{
		console.log(id);
		window.location.href = 'get/' +id
// 		$.get("get/" + id, function(result) {
			alert('test');
// 		$("#description").val(result);
// 		$("#modalForm").html(result);
// 		$("#addCategoryModal").modal('show');
		
// 		});
		
	
	}
	</script>


	<jsp:include page="/WEB-INF/layout/footer.jsp" />
</body>



</html>