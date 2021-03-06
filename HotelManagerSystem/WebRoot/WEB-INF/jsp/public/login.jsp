<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>汉译连锁酒店</title>

<!-- Bootstrap -->
<link href="resourse/dist/css/bootstrap.css" rel="stylesheet"
	media="screen">
<link href="resourse/assets/css/custom.css" rel="stylesheet"
	media="screen">

<!-- Animo css-->
<link href="resourse/plugins/animo/animate+animo.css" rel="stylesheet"
	media="screen">

<link href="resourse/examples/carousel/carousel.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	  <script src="assets/js/html5shiv.js"></script>
	  <script src="assets/js/respond.min.js"></script>
	<![endif]-->

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:700,400,300,300italic'
	rel='stylesheet' type='text/css'>
<!-- Font-Awesome -->
<link rel="stylesheet" type="text/css"
	href="resourse/assets/css/font-awesome.css" media="screen" />
<!--[if lt IE 7]><link rel="stylesheet" type="text/css" href="assets/css/font-awesome-ie7.css" media="screen" /><![endif]-->

<!-- Load jQuery -->
<script src="resourse/assets/js/jquery.v2.0.3.js"></script>
</head>
<body>
	<!-- 100% Width & Height container  -->
	<div class="login-fullwidith">
		<!-- onsubmit="errorMessage()" -->
		<form action="Login" method="post">
			<!-- Login Wrap  -->
			<div class="login-wrap">
				
				<c:if test="${not empty note }">
					<div class="cpadding15">
						<div class="alert alert-danger">${note }</div>
					</div>
				</c:if>
				<img src="resourse/images/logo.png" class="login-img" alt="logo" />
				<div class="login-c1">

					<div class="cpadding50">

						<input type="text" id="uname" name="uname"
							class="form-control logpadding" placeholder="用户名"> <br />
						<input type="password" id="upwd" name="upwd"
							class="form-control logpadding" placeholder="密码">

					</div>
				</div>
				<div class="login-c2">
					<div class="logmargfix">
						<div class="chpadding50">
							<div class="alignbottom">
								<button class="btn-search4" type="submit">登录</button>
								&nbsp;&nbsp; <a href="registerUI">注册</a>
							</div>
							<div class="alignbottom2">
								<div class="checkbox">
									<label> <input type="checkbox">记住密码
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="login-c3">
					<div class="left">
						<a href="index.jsp" class="whitelink"><span></span>网站主页</a>
					</div>
					<div class="right">
						<a href="#" class="whitelink">忘记密码?</a>
					</div>
				</div>
			</div>
			<!-- End of Login Wrap  -->
		</form>
	</div>
	<!-- End of Container  -->

	<!-- Javascript  -->
	<script src="resourse/assets/js/initialize-loginpage.js"></script>
	<script src="resourse/assets/js/jquery.easing.js"></script>
	<!-- Load Animo -->
	<script src="resourse/plugins/animo/animo.js"></script>
	<script>
		function errorMessage() {
			$('.login-wrap').animo({
				animation : 'tada'
			});
		}
	</script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resourse/dist/js/bootstrap.min.js"></script>
</body>
</html>
