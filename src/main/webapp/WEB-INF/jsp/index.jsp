
<!doctype html>
<html lang="en" class="semi-dark">


<!-- Mirrored from codervent.com/rocker/demo/vertical/index3.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 May 2025 07:26:26 GMT -->
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--favicon-->
<link rel="icon" href="assets/images/favicon-32x32.png" type="image/png" />
<!--plugins-->
<link href="resources/assets/plugins/notifications/css/lobibox.min.css"
	rel="stylesheet" />
<link
	href="resources/assets/plugins/vectormap/jquery-jvectormap-2.0.2.css"
	rel="stylesheet" />
<link href="resources/assets/plugins/simplebar/css/simplebar.css"
	rel="stylesheet" />
<link
	href="resources/assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css"
	rel="stylesheet" />
<link href="resources/assets/plugins/metismenu/css/metisMenu.min.css"
	rel="stylesheet" />
<!-- loader-->
<link href="resources/assets/css/pace.min.css" rel="stylesheet" />
<script src="resources/assets/js/pace.min.js"></script>
<!-- Bootstrap CSS -->
<link href="resources/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/assets/css/bootstrap-extended.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;display=swap"
	rel="stylesheet">
<link href="resources/assets/css/app.css" rel="stylesheet">
<link href="resources/assets/css/icons.css" rel="stylesheet">
<!-- Theme Style CSS -->
<link rel="stylesheet" href="resources/assets/css/dark-theme.css" />
<link rel="stylesheet" href="resources/assets/css/semi-dark.css" />
<link rel="stylesheet" href="resources/assets/css/header-colors.css" />
<title>Rocker - Bootstrap 5 Admin Dashboard Template</title>
</head>

<body onload="info_noti()">
	<!--wrapper-->
	<div class="wrapper">




		<jsp:include page="module/header.jsp"></jsp:include>

		<div class="page-wrapper">
			<div class="page-content">
				<div
					class="row row-cols-1 row-cols-md-2 row-cols-xl-2 row-cols-xxl-4">
					<div class="col">
						<div class="card radius-10 bg-gradient-cosmic">
							<div class="card-body">
								<div class="d-flex align-items-center">
									<div class="me-auto">
										<p class="mb-0 text-white">Total Orders</p>
										<h4 class="my-1 text-white">4805</h4>
										<p class="mb-0 font-13 text-white">+2.5% from last week</p>
									</div>
									<div id="chart1"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card radius-10 bg-gradient-ibiza">
							<div class="card-body">
								<div class="d-flex align-items-center">
									<div class="me-auto">
										<p class="mb-0 text-white">Total Revenue</p>
										<h4 class="my-1 text-white">$84,245</h4>
										<p class="mb-0 font-13 text-white">+5.4% from last week</p>
									</div>
									<div id="chart2"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card radius-10 bg-gradient-ohhappiness">
							<div class="card-body">
								<div class="d-flex align-items-center">
									<div class="me-auto">
										<p class="mb-0 text-white">Bounce Rate</p>
										<h4 class="my-1 text-white">34.6%</h4>
										<p class="mb-0 font-13 text-white">-4.5% from last week</p>
									</div>
									<div id="chart3"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card radius-10 bg-gradient-kyoto">
							<div class="card-body">
								<div class="d-flex align-items-center">
									<div class="me-auto">
										<p class="mb-0 text-dark">Total Customers</p>
										<h4 class="my-1 text-dark">8.4K</h4>
										<p class="mb-0 font-13 text-dark">+8.4% from last week</p>
									</div>
									<div id="chart4"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--end row-->





				<!--end page wrapper -->
				<!--start overlay-->
				<div class="overlay toggle-icon"></div>
				<!--end overlay-->
				<!--Start Back To Top Button-->
				<a href="javaScript:;" class="back-to-top"><i
					class='bx bxs-up-arrow-alt'></i></a>
				<!--End Back To Top Button-->
				<footer class="page-footer">
					<p class="mb-0">Copyright © 2023. All right reserved.</p>
				</footer>
			</div>
			<!--end wrapper-->

			<!-- search modal -->
			<div class="modal" id="SearchModal" tabindex="-1">
				<div
					class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-fullscreen-md-down">
					<div class="modal-content">
						<div class="modal-header gap-2">
							<div class="position-relative popup-search w-100">
								<input
									class="form-control form-control-lg ps-5 border border-3 border-primary"
									type="search" placeholder="Search"> <span
									class="position-absolute top-50 search-show ms-3 translate-middle-y start-0 top-50 fs-4"><i
									class='bx bx-search'></i></span>
							</div>
							<button type="button" class="btn-close d-md-none"
								data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="search-list">
								<p class="mb-1">Html Templates</p>
								<div class="list-group">
									<a href="javascript:;"
										class="list-group-item list-group-item-action active align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-angular fs-4'></i>Best Html Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-vuejs fs-4'></i>Html5 Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-magento fs-4'></i>Responsive Html5 Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-shopify fs-4'></i>eCommerce Html Templates</a>
								</div>
								<p class="mb-1 mt-3">Web Designe Company</p>
								<div class="list-group">
									<a href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-windows fs-4'></i>Best Html Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-dropbox fs-4'></i>Html5 Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-opera fs-4'></i>Responsive Html5 Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-wordpress fs-4'></i>eCommerce Html Templates</a>
								</div>
								<p class="mb-1 mt-3">Software Development</p>
								<div class="list-group">
									<a href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-mailchimp fs-4'></i>Best Html Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-zoom fs-4'></i>Html5 Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-sass fs-4'></i>Responsive Html5 Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-vk fs-4'></i>eCommerce Html Templates</a>
								</div>
								<p class="mb-1 mt-3">Online Shoping Portals</p>
								<div class="list-group">
									<a href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-slack fs-4'></i>Best Html Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-skype fs-4'></i>Html5 Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-twitter fs-4'></i>Responsive Html5 Templates</a> <a
										href="javascript:;"
										class="list-group-item list-group-item-action align-items-center d-flex gap-2 py-1"><i
										class='bx bxl-vimeo fs-4'></i>eCommerce Html Templates</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end search modal -->



			<!--start switcher-->
			<div class="switcher-wrapper">
				<div class="switcher-btn">
					<i class='bx bx-cog bx-spin'></i>
				</div>
				<div class="switcher-body">
					<div class="d-flex align-items-center">
						<h5 class="mb-0 text-uppercase">Theme Customizer</h5>
						<button type="button" class="btn-close ms-auto close-switcher"
							aria-label="Close"></button>
					</div>
					<hr />
					<h6 class="mb-0">Theme Styles</h6>
					<hr />
					<div class="d-flex align-items-center justify-content-between">
						<div class="form-check">
							<input class="form-check-input" type="radio"
								name="flexRadioDefault" id="lightmode" checked> <label
								class="form-check-label" for="lightmode">Light</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio"
								name="flexRadioDefault" id="darkmode"> <label
								class="form-check-label" for="darkmode">Dark</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio"
								name="flexRadioDefault" id="semidark"> <label
								class="form-check-label" for="semidark">Semi Dark</label>
						</div>
					</div>
					<hr />
					<div class="form-check">
						<input class="form-check-input" type="radio" id="minimaltheme"
							name="flexRadioDefault"> <label class="form-check-label"
							for="minimaltheme">Minimal Theme</label>
					</div>
					<hr />
					<h6 class="mb-0">Header Colors</h6>
					<hr />
					<div class="header-colors-indigators">
						<div class="row row-cols-auto g-3">
							<div class="col">
								<div class="indigator headercolor1" id="headercolor1"></div>
							</div>
							<div class="col">
								<div class="indigator headercolor2" id="headercolor2"></div>
							</div>
							<div class="col">
								<div class="indigator headercolor3" id="headercolor3"></div>
							</div>
							<div class="col">
								<div class="indigator headercolor4" id="headercolor4"></div>
							</div>
							<div class="col">
								<div class="indigator headercolor5" id="headercolor5"></div>
							</div>
							<div class="col">
								<div class="indigator headercolor6" id="headercolor6"></div>
							</div>
							<div class="col">
								<div class="indigator headercolor7" id="headercolor7"></div>
							</div>
							<div class="col">
								<div class="indigator headercolor8" id="headercolor8"></div>
							</div>
						</div>
					</div>
					<hr />
					<h6 class="mb-0">Sidebar Colors</h6>
					<hr />
					<div class="header-colors-indigators">
						<div class="row row-cols-auto g-3">
							<div class="col">
								<div class="indigator sidebarcolor1" id="sidebarcolor1"></div>
							</div>
							<div class="col">
								<div class="indigator sidebarcolor2" id="sidebarcolor2"></div>
							</div>
							<div class="col">
								<div class="indigator sidebarcolor3" id="sidebarcolor3"></div>
							</div>
							<div class="col">
								<div class="indigator sidebarcolor4" id="sidebarcolor4"></div>
							</div>
							<div class="col">
								<div class="indigator sidebarcolor5" id="sidebarcolor5"></div>
							</div>
							<div class="col">
								<div class="indigator sidebarcolor6" id="sidebarcolor6"></div>
							</div>
							<div class="col">
								<div class="indigator sidebarcolor7" id="sidebarcolor7"></div>
							</div>
							<div class="col">
								<div class="indigator sidebarcolor8" id="sidebarcolor8"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--end switcher-->
		<!-- Bootstrap JS -->
		<script src="resources/assets/js/bootstrap.bundle.min.js"></script>
		<!--plugins-->
		<script src="resources/assets/js/jquery.min.js"></script>
		<script src="resources/assets/plugins/simplebar/js/simplebar.min.js"></script>
		<script src="resources/assets/plugins/metismenu/js/metisMenu.min.js"></script>
		<script
			src="resources/assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
		<script
			src="resources/assets/plugins/vectormap/jquery-jvectormap-2.0.2.min.js"></script>
		<script
			src="resources/assets/plugins/vectormap/jquery-jvectormap-world-mill-en.js"></script>
		<script src="resources/assets/plugins/chartjs/js/chart.js"></script>
		<script
			src="resources/assets/plugins/sparkline-charts/jquery.sparkline.min.js"></script>
		<!--notification js -->


		<script src="resources/assets/plugins/notifications/js/lobibox.min.js"></script>
		<script
			src="resources/assets/plugins/notifications/js/notifications.min.js"></script>
		<script src="resources/assets/js/index3.js"></script>
		<!--app JS-->
		<script src="resources/assets/js/app.js"></script>
</body>


<!-- Mirrored from codervent.com/rocker/demo/vertical/index3.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 30 May 2025 07:27:26 GMT -->
</html>