<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="commonPage.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/js/CommonValidations.js"></script>
<meta charset="utf-8" />
<title>College Admin - Add College</title>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/select2/select2.min.css">
<link href="${pageContext.request.contextPath}/static/css/style.css"
	rel="stylesheet" type="text/css" />

</head>

<body>

	<!-- Hidden Elements -->
	<div>
		<input type="hidden" id="addCollegeUrl" name="addCollegeUrl"
			value="${addCollegeUrl}" />
	</div>
	<!-- Hidden Elements -->

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
									<h4 class="page-title">Add College</h4>
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
						<div class="card">
							<div class="card-body">
								<form class="row">
									<div class="form-group col-12 col-sm-4">
										<div class="form_fields">
											<input type="text" class="form-control clear" name="collegeName"
												id="collegeName" onkeyup="isAlphabetWihSpace(this);"
												autocomplete="off"> <label for="collegeName">College
												Name</label>
										</div>
										<span class="error field_err" id="collegeNameErrorMessage"></span>
									</div>
									<!--end form-group-->
									<div class="form-group col-12 col-sm-4">
										<div class="form_fields">
											<input type="text" class="form-control clear"
												name="collegeLocation" id="collegeLocation"
												onkeyup="isAlphabetWihSpace(this);" autocomplete="off">
											<label for="collegeLocation">College Location</label>
										</div>
										<span class="error field_err" id="collegeLocationErrorMessage"></span>
									</div>
									<!--end form-group-->
									<div class="form-group col-12 col-sm-4">
										<div class="form_fields">
											<input type="text" class="form-control clear" name="collegeEmail"
												id="collegeEmail" autocomplete="off"> <label
												for="collegeEmail">College Email</label>
										</div>
										<span class="error field_err" id="emailErrorMessage"></span>
									</div>
									<!--end form-group-->
									<div class="form-group col-12 col-sm-4">
										<div class="form_fields">
											<input type="text" class="form-control clear" id="contactNumber"
												name="contactNumber" onkeyup="isContactNumber(this);"
												autocomplete="off"> <label for="contactNumber">College
												Mobile Number</label>
										</div>
										<span class="error field_err" id="contactNumberErrorMessage"></span>
									</div>
									<div class="form-group col-12 col-sm-4">
										<div class="form_fields">
											<input type="text" class="form-control clear" id="collegeCode"
												name="collegeCode" autocomplete="off"> <label
												for="collegeCode">College Code</label>
										</div>
										<span class="error field_err" id="collegeCodeErrorMessage"></span>
									</div>
									<!--end form-group-->
									<div class="form-group justify-content-center d-flex col-12">
										<button type="button" id="addCollegeSubmitBtn"
											name="addCollegeSubmitBtn" value="Submit"
											class="btn btn-success btn-round waves-effect waves-light mr-2"
											onclick="addNewCollege();">Add College</button>
										<button type="button" id="ClearSubmitBtn"
											name="ClearSubmitBtn" value="Submit"
											class="btn btn-success btn-round waves-effect waves-light mr-2"
											onclick="resetFields();">Clear</button>
									</div>
									<!--end form-group-->
								</form>
							</div>
						</div>
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

	<div class="modal fade" id="success_refundNotification" role="dialog"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered">
			<!-- Modal content-->
			<div class="modal-content">

				<div class="modal-body">
					<div class="text-center">
						<img
							src="${pageContext.request.contextPath}/static/images/source.gif"
							style="width: 140px; margin-top: -91px; margin-bottom: 10px; position: relative;">
						<div>
							<h4 class="refunded_body mb-4"></h4>
							<div class="text-center">
								<button type="button" id="successModal"
									class="btn btn-success px-5 ripple" data-dismiss="modal">OK</button>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="modal fade" id="error_refundNotification" role="dialog"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog modal-dialog-centered">
			<!-- Modal content-->
			<div class="modal-content">

				<div class="modal-body">
					<div class="text-center">
						<img src="${pageContext.request.contextPath}/static/images/x.gif"
							style="width: 140px; margin-top: -91px; margin-bottom: 10px; position: relative;">
						<div>
							<h4 class="refunded_body mb-4"></h4>
							<div class="text-center">
								<button type="button" class="btn btn-danger px-5 ripple"
									data-dismiss="modal">OK</button>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


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

	<script src="${pageContext.request.contextPath}/static/js/forms.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/plugins/select2/select2.min.js"></script>

	<!-- App js -->
	<script src="${pageContext.request.contextPath}/static/js/app.js"></script>

	<script>
		/* Universal Spinner with text for Button */
		var spinnerUrl = "<i class='fas fa-spinner fa-spin'></i> Please Wait...";
		function addNewCollege() {
			
			$("#addCollegeSubmitBtn").html(spinnerUrl);
			$("#btnSubmit").attr("disabled", true);
			
			var collegeName = $("#collegeName").val();
			var collegeLocation = $("#collegeLocation").val();
			var collegeEmail = $("#collegeEmail").val();
			var collegeNumber = $("#contactNumber").val();
			var collegeCode = $("#collegeCode").val();
			
			$.ajax({
				type : "POST",
				contentType : "application/json",
				dataType : "json",
				url : $("#addCollegeUrl").val(),
				data : JSON.stringify({
					collegeName : collegeName,
					collegeCode : collegeCode,
					collegeLocation : collegeLocation,
					phoneNumber : collegeNumber,
					collegeMail : collegeEmail
				}),
				beforeSend : function(xhr) {
					setAuthTokenInReqHeader(xhr);
					setCsrfTokenInRequestHeader(xhr);
					 
					
				},
				success : function(result, status, xhr) {
					$("#success_refundNotification").modal('show');
                    $(".refunded_body").html(result.message);
                    $("#addCollegeSubmitBtn").attr("disabled", false);
                    $("#addCollegeSubmitBtn").html("Add College");
                    resetFields();
				},
				error : function(data) {
					  if (data.readyState == 0) {
                          $("#error_refundNotification").modal('show');
                          $(".refunded_body").html("service is temporarily down,please try again later.");
                      }
                      if (data.status = 500) {
                          var responseMessage = JSON.parse(data.responseText);
                          var message = responseMessage.message;
                          $("#error_refundNotification").modal('show');
                          $(".refunded_body").html("There was an error in the backend");
                          $("#addCollegeSubmitBtn").attr("disabled", false);
                          $("#addCollegeSubmitBtn").clear();
                          $("#addCollegeSubmitBtn").html("Add College");

                      } else if (jqXHR.status == 400) {
                          $("#error_refundNotification").modal('show');
                          $(".refunded_body").html(data.responseText);

                      } else {
                          $("#error_refundNotification").modal('show');
                          $(".refunded_body").html(data.responseText);
                      }
				},
				complete : function(xhr, status) {
					console.log("onboarding a new college is completed");
				}
			});		
		}
		
		function resetFields() {
			$(".clear").val("");
		}
	</script>
</body>
</html>