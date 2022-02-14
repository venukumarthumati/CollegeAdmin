<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/CommonValidations.js"></script>
<meta charset="utf-8" />
<title>College Admin - College List</title>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/select2/select2.min.css">
<link href="${pageContext.request.contextPath}/static/css/app.min.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/static/css/style.css"
	rel="stylesheet" type="text/css" />

</head>

<body onload="getCollegeList(0, true);">
	<!-- Left Sidenav -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- end left-sidenav-->

	<div id="hiddenFields">
		<input type="hidden" id="collegeListPageUrl" name="collegeListPageUrl" value="${collegeListPageUrl}" />
	</div>

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
							<div class="d-flex justify-content-between align-items-center">
								<div class="">
									<h4 class="page-title">College List</h4>
								</div>
								<!--end col-->
								<!-- <div class="titleBox_btn">
									<button class="btn btn-success btn-round btn-sm"
										id="filter__btn">Filter</button>
								</div> -->
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
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
											 <th>SL NO</th>
											   <th>COLLEGE ID</th>
												<th>COLLEGE CODE</th>
												<th>COLLEGE NAME</th>
												<th>COLLEGE lOCATION</th>
												<th>PHONE NUMBER</th>
												<th>COLLEGE EMAIL</th>
												<th>DATE CREATEDAT</th>
												<th>DATE UPDATEDAT</th>
												<th>CREATEDBY</th>
												<th>UPDATEDBY</th>
											</tr>
										</thead>
										<tbody id="collegeListTable">
												<tr>
													<td colspan="34" class="text-center" id="noCollegeList">No college List Found</td>
												</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-body">
								<div class="pagination-wrapper">
									<p id="paging_info" class="pull-left"></p>
									<input type="hidden" id="collegeList_totalPages" value="1" />
									<div class="pull-right">
										<ul class="pagination-sm" id="pagination"></ul>
									</div>
								</div>
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

	<!-- Filter Table data -->
	<div class="sideDrawer_wrapper" id="sideDrawer">
		<div class="containner">
			<div class="header">
				<h4>Filter</h4>
				<span class="icon" id="closeSideDrawer"><i
					data-feather="x-circle"></i></span>
			</div>
			<div class="body">
				<div class="filter__fields">
					<form action="">
						<div class="form-group">
							<div class="form_fields">
								<input type="text" class="form-control" name="date" id="date"
									autocomplete="off"> <label for="date">Select
									Date</label>
							</div>
							<span class="err_text">This field is required!</span>
						</div>
						<!--end form-group-->
					</form>
				</div>
			</div>
			<div class="globalAction">
				<button class="btn btn-success btn-round btn-block" type="button">Search</button>
			</div>
		</div>
	</div>
	<div class="filter__overlay" style="display: none;"></div>

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
		src="${pageContext.request.contextPath}/static/js/jquery.twbsPagination.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/forms.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/plugins/select2/select2.min.js"></script>

	<!-- App js -->
	<script src="${pageContext.request.contextPath}/static/js/app.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/encoder/he.js"></script>

	<script>
	
	var spinnerUrl = "<i class='fas fa-spinner fa-spin'></i> Please Wait...";
	
	function pagination(totalPages, val) {
		var value = $("#collegeList_totalPages").val(val);
		if (val === '0') {
			$('#pagination').twbsPagination('destroy');
		}
		if (totalPages === 0) {
			totalPages = 1;
		}
		$('#pagination').twbsPagination({
			totalPages: totalPages,
			visiblePages: 10,
			startPage: 1,
			hideOnlyOnePage: false,
			initiateStartPageClick: false,
			 first: '<i class="mdi mdi-chevron-double-left"></i>',
             prev: '<i class="mdi mdi-chevron-left"></i>',
             next: '<i class="mdi mdi-chevron-right"></i>',
             last: '<i class="mdi mdi-chevron-double-right"></i>',
			onPageClick: function (event, page) {
				if (value != 1) {
					getCollegeList(page - 1, true);
				} else {
					$('#collegeList_totalPages').val(2);
				}
			}
		});
	}
	
	function getCollegeList(page, isPaging) {
		$.ajax({
			url: $("#collegeListPageUrl").val() + "?page=" + unSanitize(page) + "&size=10&order=DESC",
			type: "GET",
			contentType: "application/json",
			beforeSend: function (xhr) {
				setAuthTokenInReqHeader(xhr);
				setCsrfTokenInRequestHeader(xhr);
			},
			success: function (result, status, xhr) {
				var contextPath = "${pageContext.request.contextPath}";
				setAndReturnNewAuthToken(xhr, contextPath);
				setAndReturnNewCsrfToken(xhr, contextPath);
				result = sanitize(unSanitize(result));
				var trHTML = '';
				if (trHTML === '') {
					var slno = (page * 10);
					var startno = (page * 10) + 1;
					$("#collegeListPageUrl").empty();
					var itemVal = result.content;
					if (itemVal.length > 0) {
						$(itemVal).each(function (i, item) {
							slno = slno + 1;
							trHTML += '<tr>';
							trHTML += '<td>' + collegeId + '</td>';
							trHTML += '<td>' + ((itemVal[i].collegeCode == null) ? "" : itemVal[i].collegeCode) + '</td>';
							trHTML += '<td>' + ((itemVal[i].collegeName == null) ? "" : itemVal[i].bin) + '</td>';
							trHTML += '<td>' + ((itemVal[i].collegeLocation == null) ? "" : itemVal[i].collegeLocation) + '</td>';
							trHTML += '<td>' + ((itemVal[i].phoneNumber == null) ? "" : itemVal[i].phoneNumber) + '</td>';
							trHTML += '<td>' + ((itemVal[i].collegeEmail == null) ? "" : itemVal[i].collegeEmail) + '</td>';
							trHTML += '<td>' + ((itemVal[i].dateCreatedAt == null) ? "" : itemVal[i].dateCreatedAt) + '</td>';
							trHTML += '<td>' + ((itemVal[i].dateUpdatedAt == null) ? "" : itemVal[i].dateUpdatedAt) + '</td>';
							trHTML += '<td>' + ((itemVal[i].createdBy == null) ? "" : itemVal[i].createdBy) + '</td>';
							trHTML += '<td>' + ((itemVal[i].updatedBy == null) ? "" : itemVal[i].updatedBy) + '</td>';
							trHTML += '</tr>';
						});
						pagination(result.totalPages, 1);
						$("#paging_info").html("Showing " + startno + " to " + slno + " of " + result.totalElements + " entries");
						$("#noCollegeList").hide();
						$('#collegeListTable').append(trHTML);
					} else {
						$('#pagination').twbsPagination('destroy');  
						$(".testingg").empty();
						trHTML = '<tr class="odd testingg"><td class="dataTables_empty" colspan="15" valign="top"><h4>No data available in table</h4></td></tr>';
						$('#collegeListTable').append(trHTML);
						$("#paging_info").html('');
					}
				} else {
					$('#pagination').twbsPagination('destroy');
					$(".testingg").empty();
					trHTML += '<tr class="odd testingg"><td class="dataTables_empty" colspan="15" valign="top"><h4>No data available in table</h4></td></tr>';
					$('#collegeListTable').append(trHTML);
					$("#paging_info").html('');
				}
				if (page == 0 && isPaging == true) {
					page = 1;
				}
			},
			error: function (data) {
				var trHTML = '';
				if (data.readyState == 0) {
					$("#error_refundNotification").modal('show');
					$(".refunded_body").html("service is temporarily down,please try again later!");
				} else if (data.status === 500) {
					$('#paginationn').twbsPagination('destroy');
					$(".testingg").empty();
					trHTML += '<tr class="odd testingg"><td class="dataTables_empty" colspan="15" valign="top"><h4>No data available in table</h4></td></tr>';
					$('#collegeListTable').append(trHTML);
				}
			},
			complete: function (xhr, status) {
				var contextPath = "${pageContext.request.contextPath}";
				setAndReturnNewAuthToken(xhr, contextPath);
				setAndReturnNewCsrfToken(xhr, contextPath);
			}
		});
	}

		$('#filter__btn').click(function() {
			$('#sideDrawer').addClass('active');
			$('.filter__overlay').css('display', 'block');
			$('body').css('overflow', 'hidden');
		})
		$('#closeSideDrawer').click(function() {
			$('#sideDrawer').removeClass('active');
			$('.filter__overlay').css('display', 'none');
			$('body').css('overflow', 'auto');
		})
	</script>
</body>
</html>