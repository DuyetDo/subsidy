<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<title>Hệ thống Subsidy</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="<c:url value='resources/assets/global/plugins/font-awesome/css/font-awesome.min.css' />" rel="stylesheet">
<link href="<c:url value='resources/assets/global/plugins/simple-line-icons/simple-line-icons.min.css' />" rel="stylesheet">
<link href="<c:url value='resources/assets/global/plugins/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">
<link href="<c:url value='resources/assets/global/plugins/uniform/css/uniform.default.css' />" rel="stylesheet">
<link href="<c:url value='resources/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css' />" rel="stylesheet">
<link href="<c:url value='resources/assets/global/plugins/select2/select2.css' />" rel="stylesheet">
<link href="<c:url value='resources/assets/admin/pages/css/login-soft.css' />" rel="stylesheet">
<link href="<c:url value='resources/assets/global/css/components.css' />" rel="stylesheet">
<link href="<c:url value='resources/assets/global/css/plugins.css' />" rel="stylesheet">
<link href="<c:url value='resources/assets/admin/layout/css/layout.css' />" rel="stylesheet">
<link id="style_color" href="<c:url value='resources/assets/admin/layout/css/themes/default.css' />" rel="stylesheet">
<link href="<c:url value='resources/assets/admin/layout/css/custom.css' />" rel="stylesheet">
<link rel="shortcut icon" href="<c:url value='img/iconmobifone.png' />" rel="stylesheet">

<!-- END THEME STYLES -->
<link rel="shortcut icon" href=""/>
</head>
<body class="login">
<!-- BEGIN LOGO -->
<div class="logo">
	<a href="index.html">
	<img src="resources/assets/admin/layout/img/logo.png" alt=""/>
	</a>
	
</div>
<div class="menu-toggler sidebar-toggler">
</div>
<div class="content">
    <c:url var="loginUrl" value="/login" />
	<form class="login-form" action="${loginUrl}" id="sign_in" method="POST">
			<h3 class="form-title">Đăng nhập</h3>
			<c:if test="${param.error != null}">
				<div class="alert alert-danger">
					<p>Tên đăng nhập hoặc mật khẩu không đúng</p>
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
					<p>Bạn đã thoát</p>
				</div>
			</c:if>
			<div class="form-group">
			<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
			<label class="control-label visible-ie8 visible-ie9">Tên truy cập</label>
			<div class="input-icon">
				<i class="fa fa-user"></i>
				<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Tên truy cập" name="ssoId" required="false"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">Mật khẩu</label>
			<div class="input-icon">
				<i class="fa fa-lock"></i>
				<input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Mật khẩu" name="password" required="false"/>
			</div>
		</div>
			<div class="col-xs-8 p-t-5">
				<input type="checkbox" name="remember-me" id="rememberme"
					class="filled-in chk-col-pink"> <label for="rememberme">Nhớ
					tôi</label>
			</div>
			<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
			<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">Mật khẩu</label>
			<div class="input-icon">
				<input type="checkbox" check="<%=request.getAttribute("withldap")%>" name ="withldap" >Đăng nhập dùng tài khoản Email MobiFone</label>
			</div>
		</div>
		<div class="form-actions">
			<button  class="btn blue pull-right" onclick="submitForm();" >
			Đăng nhập <i class="m-icon-swapright m-icon-white"></i>
			</button>
		</div>	
	</form>
</div>


<script src="<c:url value='resources/assets/global/plugins/jquery.min.js'/>"></script>
<script src="<c:url value='resources/assets/global/plugins/jquery-migrate.min.js'/>"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="<c:url value='resources/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js'/>"></script>
<script src="<c:url value='resources/assets/global/plugins/bootstrap/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='resources/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js'/>"></script>
<script src="<c:url value='resources/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js'/>"></script>
<script src="<c:url value='resources/assets/global/plugins/jquery.blockui.min.js'/>"></script>
<script src="<c:url value='resources/assets/global/plugins/jquery.cokie.min.js'/>"></script>
<script src="<c:url value='resources/assets/global/plugins/uniform/jquery.uniform.min.js'/>"></script>
<script src="<c:url value='resources/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js'/>"></script>
<script src="<c:url value='resources/assets/global/plugins/jquery-validation/js/jquery.validate.min.js'/>"></script>
<script src="<c:url value='resources/assets/global/plugins/backstretch/jquery.backstretch.min.js'/>"></script>
<script src="<c:url value='resources/assets/global/plugins/select2/select2.min.js'/>"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<c:url value='resources/assets/global/scripts/metronic.js'/>"></script>
<script src="<c:url value='resources/assets/admin/layout/scripts/layout.js'/>"></script>
<script src="<c:url value='resources/assets/admin/layout/scripts/quick-sidebar.js'/>"></script>
<script src="<c:url value='resources/assets/admin/layout/scripts/demo.js'/>"></script>
<script src="<c:url value='resources/assets/admin/pages/scripts/login-soft.js'/>"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
// ham login
function submitForm() {
<%-- 	var tenantCode = '<%=tenantCode%>';
	Common.setItem("tenantCode",tenantCode);
    var userName = document.getElementById('userName').value.trim();
    var passw = document.getElementById('passw').value.trim();
    var org_code = document.getElementById('org_code').value.trim();
    var urlFull= window.location.href;
    var paramRedirect = '';
    var url = 'user-service/login?username=' + userName + '&password=' + passw + '&type=WEB' +'&org_code=' + org_code;
    if (urlFull.indexOf("?") != -1) {
    	paramRedirect = urlFull.substring(urlFull.indexOf("?") + 1, urlFull.length);
    	url += '&' + paramRedirect;
	} --%>
	location.href = 'common/home';
	/* var url = 'http://google.com.vn';
	console.log(url);
	$.ajax(
			'get',
			url,
			'', 
			function(result) {
				location.href = 'common/home';
				
			}, 
			function() {
				$('#formNotSuccess').show();
			}
	);
     */

}
jQuery(document).ready(function() {     
  Metronic.init(); // init metronic core components
  Layout.init(); // init current layout
  QuickSidebar.init(); // init quick sidebar
  Demo.init(); // init demo features
  Login.init();
       // init background slide images
       /*$.backstretch([
        "assets/admin/pages/media/bg/1.jpg"
        ], {
          fade: 1000,
          duration: 8000
    }
    );*/
});
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>