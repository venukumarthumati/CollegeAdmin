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

<body onload="getEmboserLogoList(0, true);">
	<!-- Left Sidenav -->
	<jsp:include page="sidebar.jsp"></jsp:include>
	<!-- end left-sidenav-->

	<div id="hiddenFields">
		<input type="hidden" id="emboserLogoListPagesUrl" name="emboserLogoListPagesUrl" value="${emboserLogoListPagesUrl}" />
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
												<th>SL. NO.</th>
												<th>BIN</th>
												<th>REGION
												<th>LOGO ID</th>
												<th>LOGO IDENTIFIER</th>
												<th>DESCRIPTION</th>
											</tr>
										</thead>
										<tbody id="emboserLogoListTable">
												<tr>
													<td colspan="34" class="text-center" id="noProcessorList">No Program List Found</td>
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
									<input type="hidden" id="logoList_totalPages" value="1" />
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
						<div class="form-group">
							<div class="form_fields">
								<!-- <input type="text" class="form-control" name="client_id" id="client_id" autocomplete="off"> -->
								<select name="client_id" id="client_id"
									class="form-control enableSelect2">
									<option value=""></option>
									<option value="Client1">Client1</option>
									<option value="Client2">Client2</option>
								</select> <label for="client_id">Client</label>
							</div>
							<span class="err_text">This field is required!</span>
						</div>
						<!--end form-group-->
						<div class="form-group">
							<div class="form_fields">
								<input type="text" class="form-control" name="card_id"
									id="card_id" autocomplete="off"> <label for="card_id">Card
									Id</label>
							</div>
							<span class="err_text">This field is required!</span>
						</div>
						<!--end form-group-->
						<div class="form-group">
							<div class="form_fields">
								<input type="text" class="form-control" name="card_proxy_num"
									id="card_proxy_num" autocomplete="off"> <label
									for="card_proxy_num">Card Proxy Number</label>
							</div>
							<span class="err_text">This field is required!</span>
						</div>
						<!--end form-group-->
						<div class="form-group">
							<div class="form_fields">
								<input type="text" class="form-control" name="last_4digit"
									id="last_4digit" autocomplete="off"> <label
									for="last_4digit">Last 4 digit of Card</label>
							</div>
							<span class="err_text">This field is required!</span>
						</div>
						<!--end form-group-->
						<div class="form-group">
							<div class="form_fields">
								<!-- <input type="text" class="form-control" name="issuance_type" id="issuance_type" autocomplete="off"> -->
								<select name="issuance_type" id="issuance_type"
									class="form-control">
									<option value=""></option>
									<option value="Client1">All</option>
									<option value="Client2">New Card</option>
									<option value="Client2">Add on Card</option>
								</select> <label for="issuance_type">Issuance Type</label>
							</div>
							<span class="err_text">This field is required!</span>
						</div>
						<!--end form-group-->
						<div class="form-group">
							<div class="form_fields">
								<!-- <input type="text" class="form-control" name="card_status" id="card_status" autocomplete="off"> -->
								<select name="card_status" id="card_status" class="form-control">
									<option value=""></option>
									<option value="Client1">All</option>
									<option value="Client2">Active</option>
									<option value="Client2">Inactive</option>
									<option value="Client2">Temporary Block</option>
									<option value="Client2">Permanent Block</option>
								</select> <label for="card_status">Card Status</label>
							</div>
							<span class="err_text">This field is required!</span>
						</div>
						<!--end form-group-->
						<div class="form-group">
							<div class="form_fields">
								<!-- <input type="text" class="form-control" name="card_type" id="card_type" autocomplete="off"> -->
								<select name="card_type" id="card_type" class="form-control">
									<option value=""></option>
									<option value="Client1">All</option>
									<option value="Client2">Physical Card</option>
									<option value="Client2">Virtual Card</option>
								</select> <label for="card_type">Card Type</label>
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
		var value = $("#logoList_totalPages").val(val);
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
					getEmboserLogoList(page - 1, true);
				} else {
					$('#logoList_totalPages').val(2);
				}
			}
		});
	}
	
	function getEmboserLogoList(page, isPaging) {
		$.ajax({
			url: $("#emboserLogoListPagesUrl").val() + "?page=" + unSanitize(page) + "&size=10&order=DESC",
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
					$("#emboserLogoListTable").empty();
					var itemVal = result.content;
					if (itemVal.length > 0) {
						$(itemVal).each(function (i, item) {
							slno = slno + 1;
							trHTML += '<tr>';
							trHTML += '<td>' + slno + '</td>';
							trHTML += '<td>' + ((itemVal[i].region == null) ? "" : itemVal[i].region) + '</td>';
							trHTML += '<td>' + ((itemVal[i].bin == null) ? "" : itemVal[i].bin) + '</td>';
							trHTML += '<td>' + ((itemVal[i].logoId == null) ? "" : itemVal[i].logoId) + '</td>';
							trHTML += '<td>' + ((itemVal[i].embosserLogoIdentifier == null) ? "" : itemVal[i].embosserLogoIdentifier) + '</td>';
							trHTML += '<td>' + ((itemVal[i].description == null) ? "" : itemVal[i].description) + '</td>';
							trHTML += '</tr>';
						});
						pagination(result.totalPages, 1);
						$("#paging_info").html("Showing " + startno + " to " + slno + " of " + result.totalElements + " entries");
						$("#noProcessorList").hide();
						$('#emboserLogoListTable').append(trHTML);
					} else {
						$('#pagination').twbsPagination('destroy');  
						$(".testingg").empty();
						trHTML = '<tr class="odd testingg"><td class="dataTables_empty" colspan="15" valign="top"><h4>No data available in table</h4></td></tr>';
						$('#emboserLogoListTable').append(trHTML);
						$("#paging_info").html('');
					}
				} else {
					$('#pagination').twbsPagination('destroy');
					$(".testingg").empty();
					trHTML += '<tr class="odd testingg"><td class="dataTables_empty" colspan="15" valign="top"><h4>No data available in table</h4></td></tr>';
					$('#emboserLogoListTable').append(trHTML);
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
					$('#processorListTable').append(trHTML);
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