<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MUM Shopper</title>
<jsp:include page="common.jsp" />
<body>
	<header id="header"><!--header-->
	<div class="header_top">
		<!--header_top-->
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li><a href=""><i class="fa fa-phone"></i> +1 795 01 88
									821</a></li>
							<li><a href=""><i class="fa fa-envelope"></i>
									info@mumsuppprt.com</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<li><a href=""><i class="fa fa-facebook"></i></a></li>
							<li><a href=""><i class="fa fa-twitter"></i></a></li>
							<li><a href=""><i class="fa fa-linkedin"></i></a></li>
							<li><a href=""><i class="fa fa-dribbble"></i></a></li>
							<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							<c:if test="${pageContext.request.userPrincipal.name != null}">
								<b>Welcome ${pageContext.request.userPrincipal.name}</b>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header_top-->

	<div class="header-middle">
		<!--header-middle-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="logo pull-left">
						<a href="/OnlineStore/"><img
							src='<c:url value="/resources/images/home/logo.png" />'></a>
					</div>
					<div class="btn-group pull-right">
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa"
								data-toggle="dropdown">
								USA <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="">Canada</a></li>
								<li><a href="">UK</a></li>
							</ul>
						</div>

						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa"
								data-toggle="dropdown">
								DOLLAR <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="">Canadian Dollar</a></li>
								<li><a href="">Pound</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="shop-menu pull-right">
						<ul class="nav navbar-nav">
							<li><a href=""><i class="fa fa-user"></i> Account</a></li>
							<li><a href=""><i class="fa fa-star"></i> Wishlist</a></li>
							<li><a href="checkout.html"><i class="fa fa-crosshairs"></i>
									Checkout</a></li>
						<!--  <li><a href="cart.html"><i class="fa fa-shopping-cart"></i>
									Cart</a></li>  -->
								<li><a href="cart/view/<%= session.getId() %>"><i class="fa fa-shopping-cart"></i> 
															Cart</a></li> 
								
							<c:choose>
								<c:when test="${pageContext.request.userPrincipal.name != null}">
								
                                 <li><a href="javascript:formSubmit()" class="active"><i
											class="fa fa-unlock"></i> Logout</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="/OnlineStore/login" class="active"><i
											class="fa fa-lock"></i> Login</a></li>
								</c:otherwise>
							</c:choose>

						</ul>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-middle-->

	<div class="header-bottom">
		<!--header-bottom-->
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li><a href="/OnlineStore/">Home</a></li>
							<li class="dropdown"><a href="#">Shop<i
									class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<!-- <li><a href="shop.html">Products</a></li>
									<li><a href="product-details.html">Product Details</a></li> -->
									<li><a href="checkout.html">Checkout</a></li>
									<li><a href="cart.html">Cart</a></li>
									<c:choose>
										<c:when
											test="${pageContext.request.userPrincipal.name != null}">
											<li><a href="/OnlineStore/logout" class="inactive">Logout</a></li>


										</c:when>
										<c:otherwise>
											<li><a href="/OnlineStore/login" class="active">Login</a></li>
										</c:otherwise>
									</c:choose>

								</ul></li>

<!-- 							<li><a href="/OnlineStore/404">404</a></li> -->
							<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="/OnlineStore/category/">Manage Categories</a></li>
							<li><a href="/OnlineStore/product/add/">Manage Product</a></li>
							<li><a href="/OnlineStore/userlist">Manage User </a></li>
							</sec:authorize>
							<li><a href="/OnlineStore/contact">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="search_box pull-right">
						<input type="text" placeholder="Search" />
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>



<c:url var="logoutUrl" value="/logout" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
	

</body>
</html>