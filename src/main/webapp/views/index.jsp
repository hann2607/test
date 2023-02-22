<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
			<!doctype html>
			<html class="no-js" lang="zxx">

			<!-- index-431:41-->

			<head>
				<meta charset="utf-8">
				<meta http-equiv="x-ua-compatible" content="ie=edge">
				<title>${page.title}</title>
				<meta name="description" content="">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<!-- Favicon -->
				<link rel="shortcut icon" type="image/x-icon" href="/views/images/favicon.png">
				<!-- Material Design Iconic Font-V2.2.0 -->
				<link rel="stylesheet" href="/views/css/material-design-iconic-font.min.css">
				<!-- Font Awesome -->
				<link rel="stylesheet" href="/views/css/font-awesome.min.css">
				<!-- Font Awesome Stars-->
				<link rel="stylesheet" href="/views/css/fontawesome-stars.css">
				<!-- Meanmenu CSS -->
				<link rel="stylesheet" href="/views/css/meanmenu.css">
				<!-- owl carousel CSS -->
				<link rel="stylesheet" href="/views/css/owl.carousel.min.css">
				<!-- Slick Carousel CSS -->
				<link rel="stylesheet" href="/views/css/slick.css">
				<!-- Animate CSS -->
				<link rel="stylesheet" href="/views/css/animate.css">
				<!-- Jquery-ui CSS -->
				<link rel="stylesheet" href="/views/css/jquery-ui.min.css">
				<!-- Venobox CSS -->
				<link rel="stylesheet" href="/views/css/venobox.css">
				<!-- Nice Select CSS -->
				<link rel="stylesheet" href="/views/css/nice-select.css">
				<!-- Magnific Popup CSS -->
				<link rel="stylesheet" href="/views/css/magnific-popup.css">
				<!-- Bootstrap V4.1.3 Fremwork CSS -->
				<link rel="stylesheet" href="/views/css/bootstrap.min.css">
				<!-- Helper CSS -->
				<link rel="stylesheet" href="/views/css/helper.css">
				<!-- Main Style CSS -->
				<link rel="stylesheet" href="/views/style.css">
				<!-- Responsive CSS -->
				<link rel="stylesheet" href="/views/css/responsive.css">
				<!-- User-Profile SCSS -->
				<link rel="stylesheet" href="/views/css/user-profile.css">

				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

				<!-- Modernizr js -->
				<script src="/views/js/vendor/modernizr-2.8.3.min.js"></script>

			</head>

			<body>
				<div>
					<!-- Header -->
					<jsp:include page="/views/header.jsp"></jsp:include>
					<!-- End Header -->

					<!-- Main -->
					<!-- SECTION -->
					<jsp:include page="/views/jsp/${page.linkFile}"></jsp:include>
					<!-- /SECTION -->
					<!-- End Main -->

					<!-- Header -->
					<jsp:include page="/views/footer.jsp"></jsp:include>
					<!-- End Header -->
				</div>
				<!-- Body Wrapper End Here -->
				<!-- jQuery-V1.12.4 -->
				<script src="/views/js/vendor/jquery-1.12.4.min.js"></script>
				<!-- Popper js -->
				<script src="/views/js/vendor/popper.min.js"></script>
				<!-- Bootstrap V4.1.3 Fremwork js -->
				<script src="/views/js/bootstrap.min.js"></script>
				<!-- Ajax Mail js -->
				<script src="/views/js/ajax-mail.js"></script>
				<!-- Meanmenu js -->
				<script src="/views/js/jquery.meanmenu.min.js"></script>
				<!-- Wow.min js -->
				<script src="/views/js/wow.min.js"></script>
				<!-- Slick Carousel js -->
				<script src="/views/js/slick.min.js"></script>
				<!-- Owl Carousel-2 js -->
				<script src="/views/js/owl.carousel.min.js"></script>
				<!-- Magnific popup js -->
				<script src="/views/js/jquery.magnific-popup.min.js"></script>
				<!-- Isotope js -->
				<script src="/views/js/isotope.pkgd.min.js"></script>
				<!-- Imagesloaded js -->
				<script src="/views/js/imagesloaded.pkgd.min.js"></script>
				<!-- Mixitup js -->
				<script src="/views/js/jquery.mixitup.min.js"></script>
				<!-- Countdown -->
				<script src="/views/js/jquery.countdown.min.js"></script>
				<!-- Counterup -->
				<script src="/views/js/jquery.counterup.min.js"></script>
				<!-- Waypoints -->
				<script src="/views/js/waypoints.min.js"></script>
				<!-- Barrating -->
				<script src="/views/js/jquery.barrating.min.js"></script>
				<!-- Jquery-ui -->
				<script src="/views/js/jquery-ui.min.js"></script>
				<!-- Venobox -->
				<script src="/views/js/venobox.min.js"></script>
				<!-- Nice Select js -->
				<script src="/views/js/jquery.nice-select.min.js"></script>
				<!-- ScrollUp js -->
				<script src="/views/js/scrollUp.min.js"></script>
				<!-- Main/Activator js -->
				<script src="/views/js/main.js"></script>
				<script src="/views/js/user-profile.js"></script>
				<script src="/views/js/partner.js"></script>
			</body>

			<!-- index-431:47-->

			</html>




			<script type="text/javascript">
				$(document)
					.ready(
						function () {
							$('#myButtonSP006')
								.click(
									function () {
										$
											.ajax({
												url: '/api/Quick-view/SP006',
												type: 'GET',
												success: function (data) {
													// Handle successful response
													var arrSP = data
														.split("-*-");
													var sanpham = JSON
														.parse(arrSP[0]);
													$(
														'#exampleModalCenter #QVNameProduct')
														.text(
															sanpham.SP_TenSP
																.toUpperCase());
													$(
														'#exampleModalCenter #QuickViewPrice')
														.text(
															commify(sanpham.SP_Gia));
													$(
														'#exampleModalCenter #image1')
														.prop(
															'src',
															'/views/images/product/large-size/'
															+ sanpham.SP_HinhAnh);
													$(
														'#exampleModalCenter #QuickViewModalLoaiSP')
														.text(
															arrSP[1]);
													$(
														'#exampleModalCenter #QuickViewmodalmotaSP')
														.text(
															arrSP[2]);
												},
												error: function (jqXHR,
													textStatus,
													errorThrown) {
													// Handle error response
													console
														.log(errorThrown);
												}
											});
									});
						});

				function commify(n) {
					var parts = n.toString().split(".");
					const numberPart = parts[0];
					const decimalPart = parts[1];
					const thousands = /\B(?=(\d{3})+(?!\d))/g;
					return numberPart.replace(thousands, ".")
						+ (decimalPart ? "," + decimalPart : "");
				}
			</script>