<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Hệ thống subsidy</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />
<link rel="shortcut icon" href="resources/img/iconmobifone.png" />
<link
    href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/global/plugins/jquery-tags-input/jquery.tagsinput.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/global/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/global/plugins/typeahead/typeahead.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/global/plugins/bootstrap-datepicker/css/datepicker3.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/global/plugins/jqvmap/jqvmap/jqvmap.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/global/plugins/select2/select2.css" rel="stylesheet"
	type="text/css" />

<link href="resources/assets/global/plugins/bootstrap-toastr/toastr.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/global/plugins/bootstrap-select/bootstrap-select.min.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/global/plugins/sweetalert/sweet-alert.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/admin/pages/css/tasks.css" rel="stylesheet"
	type="text/css" />
<link href="resources/assets/global/css/components.css" rel="stylesheet"
	type="text/css" />
<link href="resources/assets/global/css/plugins.css" rel="stylesheet"
	type="text/css" />
<link href="resources/assets/admin/layout/css/layout.css" rel="stylesheet"
	type="text/css" />
<link href="resources/assets/admin/layout/css/themes/darkblue.css"
	rel="stylesheet" type="text/css" />
<link href="resources/assets/admin/layout/css/custom.css" rel="stylesheet"
	type="text/css" />
<link href="resources/app.css" rel="stylesheet" type="text/css" />
<link href="resources/ext_css.css" rel="stylesheet" type="text/css" />
<link href="resources/assets/admin/dung-metisMenu.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/assets/admin/dung-sb-admin-2.css" rel="stylesheet"
	type="text/css" />
<link
	href="resources/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<link
	href="resources/assets/global/plugins/datatables/media/css/jquery.dataTables.css"
	rel="stylesheet" type="text/css" />
<link href="resources/datacode_custom.css" rel="stylesheet" type="text/css" />
<script src="resources/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="resources/assets/global/plugins/jquery-migrate.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"
	type="text/javascript"></script>
<script src="resources/assets/global/plugins/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
	type="text/javascript"></script>
<script src="resources/assets/global/plugins/jquery.blockui.min.js"
	type="text/javascript"></script>
<script src="resources/assets/global/plugins/jquery.cokie.min.js"
	type="text/javascript"></script>
<script src="resources/assets/global/plugins/uniform/jquery.uniform.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
	type="text/javascript"></script>
<script src="resources/assets/global/plugins/bootstrap-toastr/toastr.min.js"
	type="text/javascript"></script>
<script src="resources/assets/global/plugins/select2/select2.min.js"
	type="text/javascript"></script>

<script
	src="resources/assets/global/plugins/datatables/media/js/jquery.dataTables.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"
	type="text/javascript"></script>

<script
	src="resources/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/jquery-inputmask/jquery.inputmask.bundle.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/jquery.input-ip-address-control-1.0.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-pwstrength/pwstrength-bootstrap.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/jquery-tags-input/jquery.tagsinput.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js"
	type="text/javascript"></script>
<script src="resources/assets/global/plugins/typeahead/handlebars.min.js"
	type="text/javascript"></script>
<script src="resources/assets/global/plugins/typeahead/typeahead.bundle.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-daterangepicker/moment.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"
	type="text/javascript"></script>
<script
	src="resources/assets/global/plugins/bootstrap-select/bootstrap-select.min.js"
	type="text/javascript"></script>
<script src="resources/assets/global/plugins/sweetalert/sweet-alert.min.js"
	type="text/javascript"></script>
<script src="resources/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="resources/assets/admin/layout/scripts/layout.js"
	type="text/javascript"></script>
<script src="resources/assets/admin/layout/scripts/quick-sidebar.js"
	type="text/javascript"></script>
<script src="resources/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="resources/assets/admin/pages/scripts/index.js" type="text/javascript"></script>
<script src="resources/assets/admin/pages/scripts/tasks.js" type="text/javascript"></script>
<script src="resources/assets/admin/pages/scripts/components-form-tools.js"
	type="text/javascript"></script>
<script src="resources/assets/admin/pages/scripts/components-pickers.js"
	type="text/javascript"></script>
<script src="resources/assets/admin/pages/scripts/calendar.js"
	type="text/javascript"></script>
<script src="resources/assets/admin/pages/scripts/components-form-tools.js"
	type="text/javascript"></script>
<script src="resources/app.js" type="text/javascript"></script>
</head>

<body class="page-header-fixed page-quick-sidebar-over-content ">
	<!-- BEGIN HEADER -->
	<div class="page-header navbar navbar-fixed-top ">
		<!-- BEGIN HEADER INNER -->
		<div class="page-header-inner">
			<!-- BEGIN LOGO -->
			<div class="page-logo">
				<a href=""> <img src="resources/assets/admin/layout/img/logo.png"
					alt="logo" class="logo-default" />
				</a>
			</div>
			<!-- END LOGO -->

			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu" style="clear: none;">
				<ul class="nav navbar-nav pull-right">
					
					<li class="dropdown dropdown-user"><a href=""
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-close-others="true"> <img alt=""
							class="img-circle hide1"
							src="resources/assets/admin/layout/img/avatar3_small.jpg" /> <span
							class="username username-hide-on-mobile">Trần Đình Quang</span>

					</a>
					<ul class="dropdown-menu">
                        <li><a href="logout.jsp"><i class="icon-logout"></i> Đăng xuất</a></li>
                    </ul>
					</li>
					 
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END HEADER INNER -->
	</div>
	<!-- END HEADER -->

	<div class="clearfix"></div>

	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top "
			role="navigation" style="margin-bottom: 0">
			<div class="navbar-default sidebar " role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<!-- <li class="active"> -->
						<li><a><i class="fa fa-arrow-circle-o-down"></i> Quản lý hạn mức bảo lãnh</a>
							<ul class="nav nav-second-level">
								<li><a href="search_cash_manage.jsp">Tìm kiếm</a></li>
								<li><a href="add_new_cash_manage.jsp">Thêm mới</a></li>
							
							</ul> <!-- /.nav-second-level -->
							</li>
							<li><a><i class="fa fa-arrow-circle-o-down"></i> Quản lý tổ chức bảo lãnh</a>
							<ul class="nav nav-second-level">
								<li><a href="add_new_guaranty_org.jsp">Thêm mới</a></li>
								<li><a href="search_guaranty_org.jsp">Tìm kiếm</a></li>
							
							</ul> <!-- /.nav-second-level -->
							</li>
							<li><a><i class="fa fa-arrow-circle-o-down"></i> Quản lý cá nhân bảo lãnh</a>
							<ul class="nav nav-second-level">
								<li><a href="add_new_guarantor.jsp">Thêm mới</a></li>
								<li><a href="search_guarantor.jsp">Tìm kiếm</a></li>
							
							</ul> <!-- /.nav-second-level -->
							</li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>

		<script>
			$(document).ready(function() {
				Metronic.init(); // init metronic core components
				Layout.init(); // init current layout
				QuickSidebar.init(); // init quick sidebar
				Demo.init(); // init demo features
				Index.initDashboardDaterange();
				$('.nav a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });

			});
		</script>