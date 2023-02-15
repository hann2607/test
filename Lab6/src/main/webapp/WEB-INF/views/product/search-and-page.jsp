<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<title>Lab6 Search & Page</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS v5.0.2 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script src="https://code.angularjs.org/1.8.0/angular-route.min.js"></script>
</head>

<body ng-app="myApp">
	<div class="p-5 bg-primary text-white text-center">
		<h1>7BEE TEAM</h1>
		<p>One person typed, many people were happy!</p>
	</div>
	<header>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark mb-4">
			<div class="container-fluid">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="navbar-brand" href="/">SEVENBEE</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Lab 5 </a>
						<ul class="dropdown-menu bg-secondary"
							aria-labelledby="navbarDropdown">
							<li class="nav-item"><a class="nav-link"
								href="/category/index">Category Managenment</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/product/sort">Sort Product</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/product/page">Pagination</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link"
						href="/product/search">Search Price</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/product/search-and-page">Search & Page</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/report/inventory-by-category">Inventory by Category</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/product/search1">Search Price (DSL)</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/product/search-and-page1">Search & Page (DSL)</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<main>
		<div class="container bg-white text-center">
			<h3>SEARCH & PAGE</h3>
			<form class="row mb-2" action="/product/search-and-page"
				method="post">
				<div class="col-auto ms-auto">
					<input class="form-control" name="keywords" value="${keywords}"
						placeholder="Keywords?">
				</div>
				<div class="col-auto me-auto">
					<button class="btn btn-outline-primary">Search</button>
				</div>
			</form>
			<table border="1" style="width: 100%"
				class="table table-striped table-hover table-bordered m-0">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Price</th>
					<th>Date</th>
				</tr>
				<c:forEach var="item" items="${page.content}">
					<tr>
						<td>${item.id}</td>
						<td>${item.name}</td>
						<td>${item.price}</td>
						<td>${item.createDate}</td>
					</tr>
				</c:forEach>
			</table>
			<div class="m-2">
				<a class="btn btn-primary" href="/product/search-and-page?p=0">First</a>
				<a class="btn btn-primary"
					href="/product/search-and-page?p=${page.number-1}">Previous</a> <a
					class="btn btn-primary"
					href="/product/search-and-page?p=${page.number+1}">Next</a> <a
					class="btn btn-primary"
					href="/product/search-and-page?p=${page.totalPages-1}">Last</a>
			</div>
			<ul class="list-group fw-bold w-50 m-auto">
				<li class="list-group-item list-group-item-success">Số thực thể
					hiện tại: ${page.numberOfElements}</li>
				<li class="list-group-item list-group-item-success">Trang số:
					${page.number}</li>
				<li class="list-group-item list-group-item-success">Kích thước
					trang: ${page.size}</li>
				<li class="list-group-item list-group-item-success">Tổng số
					thực thể: ${page.totalElements}</li>
				<li class="list-group-item list-group-item-success">Tổng số
					trang: ${page.totalPages}</li>
			</ul>
		</div>
	</main>
	<footer class="mt-5">
		<!-- Remove the container if you want to extend the Footer to full width. -->
		<div>

			<footer class="text-white text-center text-lg-start"
				style="background-color: #23242a;">
				<!-- Grid container -->
				<div class="container p-4">
					<!--Grid row-->
					<div class="row mt-4">
						<!--Grid column-->
						<div class="col-lg-4 col-md-12 mb-4 mb-md-0">
							<h5 class="text-uppercase mb-4">VỀ CHÚNG TÔI</h5>

							<p>7BEE là một tổ chức gồm bảy thành viên nòng cốt. Luôn làm
								việc với châm ngôn "một người làm nhiều người vui."</p>

							<div class="mt-4">
								<!-- Facebook -->
								<a type="button" class="btn btn-floating btn-warning btn-lg"><i
									class="fab fa-facebook-f"></i></a>
								<!-- Dribbble -->
								<a type="button" class="btn btn-floating btn-warning btn-lg"><i
									class="fab fa-dribbble"></i></a>
								<!-- Twitter -->
								<a type="button" class="btn btn-floating btn-warning btn-lg"><i
									class="fab fa-twitter"></i></a>
								<!-- Google + -->
								<a type="button" class="btn btn-floating btn-warning btn-lg"><i
									class="fab fa-google-plus-g"></i></a>
								<!-- Linkedin -->
							</div>
						</div>
						<!--Grid column-->

						<!--Grid column-->
						<div class="col-lg-4 col-md-6 mb-4 mb-md-0">
							<h5 class="text-uppercase mb-4 pb-1">ĐỊA CHỈ</h5>

							<ul class="fa-ul" style="margin-left: 1.65em;">
								<li class="mb-3"><span class="fa-li"><i
										class="fas fa-home"></i></span><span class="ms-2">TP.Hồ Chí
										Minh</span></li>
								<li class="mb-3"><span class="fa-li"><i
										class="fas fa-envelope"></i></span><span class="ms-2">info@example.com</span>
								</li>
								<li class="mb-3"><span class="fa-li"><i
										class="fas fa-phone"></i></span><span class="ms-2">+ 01 234
										567 88</span></li>
								<li class="mb-3"><span class="fa-li"><i
										class="fas fa-print"></i></span><span class="ms-2">+ 01 234
										567 89</span></li>
							</ul>
						</div>
						<!--Grid column-->

						<!--Grid column-->
						<div class="col-lg-4 col-md-6 mb-4 mb-md-0">
							<h5 class="text-uppercase mb-4">VỊ TRÍ</h5>

							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4552263292267!2d106.62735611519116!3d10.852939092269612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529b6a2b351a5%3A0x11690ada8c36f9bc!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIFRo4buxYyBow6BuaCBGUFQgUG9seXRlY2huaWMgVFAuSENNIChDUzMp!5e0!3m2!1svi!2s!4v1674840797847!5m2!1svi!2s"
								width="600" height="250" style="border: 0;" allowfullscreen=""
								loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
						</div>
						<!--Grid column-->
					</div>
					<!--Grid row-->
				</div>
				<!-- Grid container -->

				<!-- Copyright -->
				<div class="text-center p-3"
					style="background-color: rgba(0, 0, 0, 0.2);">
					© 2023 Copyright: <a class="text-white text-uppercase fw-bold"
						href="#">7BEE</a>
				</div>
				<!-- Copyright -->
			</footer>

			<!-- Bootstrap JavaScript Libraries -->
			<script
				src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
				integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
				crossorigin="anonymous"></script>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
				integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
				crossorigin="anonymous"></script>
</body>

</html>