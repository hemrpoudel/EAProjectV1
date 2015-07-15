<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src='<c:url value="resources/js/cart.js" />'></script>
<meta charset="utf-8">
<jsp:include page="/WEB-INF/layout/header.jsp" />
</head>
<body>


	<section id="slider">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div id="slider-carousel" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#slider-carousel" data-slide-to="0"
							class="active"></li>
						<li data-target="#slider-carousel" data-slide-to="1"></li>
						<li data-target="#slider-carousel" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<div class="col-sm-6">
								<h1>
									<span>MUM</span>-SHOPPER
								</h1>
								<h2>Cheap,Fast and Easy</h2>
								<p>The best online shopping website. Aliens envy it.</p>
								<button type="button" class="btn btn-default get">Get
									it now</button>
							</div>
							<div class="col-sm-6">
								<img src='<c:url value="/resources/images/home/girl1.jpg"  />'>
								<img
									src='<c:url value="/resources/images/home/pricing.png"   />'>
							</div>
						</div>
						<div class="item">
							<div class="col-sm-6">
								<h1>
									<span>MUM</span>-SHOPPER
								</h1>
								<h2> Best Online Shopping Destination </h2>
								<p>Treat yourself with the most affordable offers and best brands.</p>
								<button type="button" class="btn btn-default get">Get
									it now</button>
							</div>
							<div class="col-sm-6">
								<img src='<c:url value="/resources/images/home/girl3.jpg"  />'>
								<img src='<c:url value="/resources/images/home/pricing.png"  />'>
							</div>
						</div>

					</div>

					<a href="#slider-carousel" class="left control-carousel hidden-xs"
						data-slide="prev"> <i class="fa fa-angle-left"></i>
					</a> <a href="#slider-carousel"
						class="right control-carousel hidden-xs" data-slide="next"> <i
						class="fa fa-angle-right"></i>
					</a>
				</div>

			</div>
		</div>
	</div>
	</section>

	<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="left-sidebar">
					<h2>Category</h2>

					<div class="panel-group category-products" id="accordian">
						<!--category-productsr-->
						<div class="panel panel-default">
							<c:forEach items="${categoryList}" var="category">
								<c:if test="${category.leaf ==false}">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordian"
												href="#sportswear"> <span class="badge pull-right"><i
													class="fa fa-plus"></i></span> <c:out value="${category.name}" />
											</a>
										</h4>
									</div>
								</c:if>
<!-- 									<div class="panel-collapse collapse"> -->
<!-- 								<div class="panel-body"> -->
							<ul>
					<c:forEach items="${categoryList}" var="category2">

									<c:if test="${category2.leaf ==true}">
										<c:if test="${category2.parent.id==category.id}">
										<li>
											<div class="category_name">
												<a style="color: #696763" href="/OnlineStore/product/category/${category2.id}">
												<c:out value="${category2.name}" /></a>
											</div>
											</li>
										</c:if>
									</c:if>
								</c:forEach>
						</ul>

<!-- 				</div> -->
<!-- 				</div> -->
							</c:forEach>

							<!-- <div id="sportswear" class="panel-collapse collapse">
								<div class="panel-body">
									<ul>
										<li><a href="#">Nike </a></li>
										<li><a href="#">Under Armour </a></li>
										<li><a href="#">Adidas </a></li>
										<li><a href="#">Puma</a></li>
										<li><a href="#">ASICS </a></li>
									</ul>
								</div>
							</div> -->
						</div>

					</div>
					<!--/category-products-->


					<%-- <c:forEach items="${categoryList}" var="category">

						<tr>
							<c:forEach items="${categoryList}" var="category2">

								<c:if test="${category2.leaf ==true}">
									<c:if test="${category2.parent.id==category.id}">
										<div class="category_name">
											<a style="font-style: italic; text-align: center;"
												href="/store/products/category/${category2.id}"><span
												class="nav"><c:out value="${category2.name}" /></span></a>
										</div>
									</c:if>
								</c:if>
							</c:forEach>
						</tr>
					</c:forEach> --%>


					<!-- <div class="brands_products">
						brands_products
						<h2>Brands</h2>
						<div class="brands-name">
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#"> <span class="pull-right">(50)</span>Acne
								</a></li>
								<li><a href="#"> <span class="pull-right">(56)</span>Grüne
										Erde
								</a></li>
								<li><a href="#"> <span class="pull-right">(27)</span>Albiro
								</a></li>
								<li><a href="#"> <span class="pull-right">(32)</span>Ronhill
								</a></li>
								<li><a href="#"> <span class="pull-right">(5)</span>Oddmolly
								</a></li>
								<li><a href="#"> <span class="pull-right">(9)</span>Boudestijn
								</a></li>
								<li><a href="#"> <span class="pull-right">(4)</span>Rösch
										creative culture
								</a></li>
							</ul>
						</div>
					</div>
					/brands_products -->

					<div class="price-range">
						<!--price-range-->
						<h2>Price Range</h2>
						<div class="well text-center">
							<input type="text" class="span2" value="" data-slider-min="0"
								data-slider-max="600" data-slider-step="5"
								data-slider-value="[250,450]" id="sl2"><br /> <b
								class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
						</div>
					</div>
					<!--/price-range-->

					<div class="shipping text-center">
						<!--shipping-->
						<img src='<c:url value="/resources/images/home/shipping.jpg" />'>
					</div>
					<!--/shipping-->

				</div>
			</div>

			<div class="col-sm-9 padding-right">
				<div class="features_items">
					<!--features_items-->

					<h2 class="title text-center">Featured Items</h2>
					<c:forEach var="product" items="${productList}" varStatus="counter">


						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
<%-- 								<img src="images/product/${product.image}" />		 --%>
									<a 	href="#"><img src="<spring:url value="/resources/images/product/${product.image}" />" /> </a>
										<h2>
											$
											<c:out value="${product.price}"></c:out>
										</h2>
										<p>${product.name}</p>
										<button onclick="addToCart(${product.id},1,'add')"
											class="btn btn-default add-to-cart">
											<i class="fa fa-shopping-cart"></i>Add to cart
										</button>
									</div>
									<div class="product-overlay">
										<div class="overlay-content">
											<h2>
												<c:out value="${product.price}"></c:out>
											</h2>
											<h2>
												<c:out value="${product.name}"></c:out>
											</h2>
											<p>${product.description}</p>
											<button onclick="addToCart(${product.id},1,'add')"
												class="btn btn-default add-to-cart">
												<i class="fa fa-shopping-cart"></i>Add to cart
											</button>

											<%-- 			<button type="button" class="btn-primary-dashboard"
						onclick="addToCart(${item.id},1,'add')">
						<spring:message code="cart.label.addtocart" /> --%>
											</button>

										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<sec:authorize access="!hasRole('ROLE_ADMIN')">
										<li><a href="#"><i class="fa fa-plus-square"></i>Add
												to wishlist</a></li>
										<li><a href="#"><i class="fa fa-plus-square"></i>Add
												to compare</a></li>
										</sec:authorize>
										
											<sec:authorize access="hasRole('ROLE_ADMIN')">
											
											<li> <a 
								
								href="product/update/${product.id}"> <i class="fa fa-plus-square"></i>Update
												</a>
											</li>
											<li> <a 
								onclick="return confirm('Are you sure you want to delete this Product ?');"
								href="product/delete/${product.id}"> <i class="fa fa-plus-square"></i>Delete
												</a>
											</li>
										
											</sec:authorize>
									</ul>
								</div>
							</div>
						</div>

					</c:forEach>

				</div>


			</div>
		</div>
	</div>

	</section>







	<jsp:include page="/WEB-INF/layout/footer.jsp" />

</body>
</html>