<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="commonPage.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/CommonValidations.js"></script>
<meta charset="utf-8" />
<title>College Admin - Dashboard</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta content="Premium Multipurpose Admin & Dashboard Template"
	name="description" />
<meta content="" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<!-- App favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/static/images/favicon.ico">

<!-- App css -->
<link
	href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/static/css/icons.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/static/css/metisMenu.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/static/plugins/daterangepicker/daterangepicker.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/static/css/app.min.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/static/css/style.css"
	rel="stylesheet" type="text/css" />

</head>

<body>
	<!-- Left Sidenav -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- end left-sidenav-->


	<div class="page-wrapper">
		<!-- Top Bar Start -->
		<jsp:include page="navbar.jsp"></jsp:include>
		<!-- Top Bar End -->

		<!-- Page Content-->
		<div class="page-content">
			<div class="container-fluid">
				<!-- Page-Title -->
				<div class="row">
					<div class="col-sm-12">
						<div class="page-title-box">
							<div class="row">
								<div class="col">
									<h4 class="page-title">Dashboard</h4>
								</div>
								<!--end col-->
							</div>
							<!--end row-->
						</div>
						<!--end page-title-box-->
					</div>
					<!--end col-->
				</div>
				<!--end row-->
				<!-- end page title end breadcrumb -->
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-12">
								<div class="row">
									<div class="col-md-6 col-lg-3">
										<div class="card report-card">
											<div class="card-body">
												<div class="row d-flex justify-content-center">
													<div class="col">
														<p class="text-dark mb-0 font-weight-semibold">Districts</p>
														<h3 class="m-0">16</h3>
													</div>
													<div class="col-auto align-self-center">
														<div class="report-main-icon bg-light-alt">
															<i data-feather="users"
																class="align-self-center text-muted icon-sm"></i>
														</div>
													</div>
												</div>
												<hr class="hr-dashed">
												<div class="text-center">
													<h6 class="text-primary bg-soft-primary p-2 m-0 rounded">
														<p class="mb-0 text-truncate text-muted font-12">
															<span class="text-success"><i
																class="mdi mdi-trending-up"></i>10.5%</span> Last Month
														</p>
													</h6>
												</div>
											</div>
											<!--end card-body-->
										</div>
										<!--end card-->
									</div>
									<!--end col-->
									<div class="col-md-6 col-lg-3">
										<div class="card report-card">
											<div class="card-body">
												<div class="row d-flex justify-content-center">
													<div class="col">
														<p class="text-dark mb-0 font-weight-semibold">Colleges</p>
														<h3 class="m-0">101</h3>
													</div>
													<div class="col-auto align-self-center">
														<div class="report-main-icon bg-light-alt">
															<i data-feather="package"
																class="align-self-center text-muted icon-sm"></i>
														</div>
													</div>
												</div>
												<hr class="hr-dashed">
												<div class="text-center">
													<h6 class="text-primary bg-soft-primary p-2 m-0 rounded">
														<p class="mb-0 text-truncate text-muted font-12">
															<span class="text-success"><i
																class="mdi mdi-trending-up"></i>6.5%</span> Last Month
														</p>
													</h6>
												</div>
											</div>
											<!--end card-body-->
										</div>
										<!--end card-->
									</div>
									<!--end col-->
									<div class="col-md-6 col-lg-3">
										<div class="card report-card">
											<div class="card-body">
												<div class="row d-flex justify-content-center">
													<div class="col">
														<p class="text-dark mb-0 font-weight-semibold">Engineering Colleges</p>
														<h3 class="m-0">15</h3>
													</div>
													<div class="col-auto align-self-center">
														<div class="report-main-icon bg-light-alt">
															<i data-feather="briefcase"
																class="align-self-center text-muted icon-sm"></i>
														</div>
													</div>
												</div>
												<hr class="hr-dashed">
												<div class="text-center">
													<h6 class="text-primary bg-soft-primary p-2 m-0 rounded">
														<p class="mb-0 text-truncate text-muted font-12">
															<span class="text-success"><i
																class="mdi mdi-trending-up"></i>15.5%</span> Last Month
														</p>
													</h6>
												</div>
											</div>
											<!--end card-body-->
										</div>
										<!--end card-->
									</div>
									<!--end col-->
									<div class="col-md-6 col-lg-3">
										<div class="card report-card">
											<div class="card-body">
												<div class="row d-flex justify-content-center">
													<div class="col">
														<p class="text-dark mb-0 font-weight-semibold">Medical Colleges</p>
														<h3 class="m-0">88</h3>
													</div>
													<div class="col-auto align-self-center">
														<div class="report-main-icon bg-light-alt">
															<i data-feather="lock"
																class="align-self-center text-muted icon-sm"></i>
														</div>
													</div>
												</div>
												<hr class="hr-dashed">
												<div class="text-center">
													<h6 class="text-primary bg-soft-primary p-2 m-0 rounded">
														<p class="mb-0 text-truncate text-muted font-12">
															<span class="text-success"><i
																class="mdi mdi-trending-up"></i>2.5%</span> Last Month
														</p>
													</h6>
												</div>
											</div>
											<!--end card-body-->
										</div>
										<!--end card-->
									</div>
									<!--end col-->
								</div>
								<!--end row-->
							</div>
							<!-- end col-->
						</div>
						<!--end row-->

					</div>
					<!--end col-->

				</div>
				<!--end row-->
			</div>
			<!-- container -->
			<jsp:include page="footer.jsp"></jsp:include><!--end footer-->
		</div>
		<!-- end page content -->
	</div>
	<!-- end page-wrapper -->

	<!-- jQuery  -->
	<script
		src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/metismenu.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/waves.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/feather.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/js/simplebar.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/moment.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/plugins/daterangepicker/daterangepicker.js"></script>

	<script
		src="${pageContext.request.contextPath}/static/plugins/apex-charts/apexcharts.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/pages/jquery.analytics_dashboard.init.js"></script>

	<!-- App js -->
	<script src="${pageContext.request.contextPath}/static/js/app.js"></script>

</body>
</html>