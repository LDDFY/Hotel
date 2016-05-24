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
<base href="<%=basePath%>">

<title>manager</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<!-- Bootstrap -->
<link href="resourse/dist/css/bootstrap.css" rel="stylesheet"
	media="screen">
<link href="resourse/assets/css/custom.css" rel="stylesheet"
	media="screen">
<link href="resourse/assets/css/dashboard.css" rel="stylesheet"
	media="screen">

<!-- Carousel -->
<link href="resourse/css/carousel.css" rel="stylesheet">
<link href="resourse/css/css.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="resourse/assets/css/font-awesome.css" media="screen" />

<link rel="stylesheet" type="text/css"
	href="resourse/assets/css/jquery.easy-pie-chart.css">
<link rel="stylesheet" href="resourse/assets/css/jquery-ui.css" />

<!-- jQuery -->
<script src="resourse/assets/js/jquery.v2.0.3.js"></script>
<script src="resourse/js/jquery.form.js"></script>

</head>

<body id="top">
	<input id="uID" name="uID" value="${user.uid }" />
	<input id="level" name="level" value="${user.level }" hidden="hidden" />
	<!-- CONTENT -->
	<div class="container2">
		<div class="container2 offset-0">
			<!-- CONTENT -->
			<div class="col-md-12  offset-0">
				<!-- LEFT MENU -->
				<div class="dashboard-left offset-0 textcenter">
					<br /> <br /> <a><a href="loginOut.do"><img src="resourse/images/dash/logo.png" />
						<br /> <span class="size12 dark">
							<h5>欢迎：${user.uname }</h5>
					</span> </a><br /> <br /> <!-- Nav tabs -->
						<ul class="nav dashboard-tabs">

							<li><a href="#">
									<div class="dash-ct">
										<span class="dashboard-icon left"></span> <span class="dtxt">首页
										</span>
									</div>
							</a></li>
							<c:if test="${user.level ==2}">
								<li class=“margbottom10" ><a href="HotelManager.do"
									target="content">

										<div class="dash-ct">
											<span class="posts-icon left"></span><span class="dtxt">酒店信息管理
											</span>
										</div>

								</a></li>
							</c:if>
							<li><a href="RoomManager.do" target="content">
									<div class="dash-ct">
										<span class="topics-icon left"></span> <span class="dtxt">房间信息管理
										</span>
									</div>
							</a></li>

							<li><a href="OrderManager.do" target="content">
									<div class="dash-ct">
										<span class="pages-icon left"></span> <span class="dtxt">订单管理</span>
									</div>
							</a></li>
							<li><a href="EvaluationManager.do" target="content">
									<div class="dash-ct">
										<span class="comments-icon left"></span> <span class="dtxt">评价信息管理</span>
									</div>
							</a></li>

							<li><a href="mailManager.do" target="content">
									<div class="dash-ct">
										<span class="forums-icon left"></span> <span class="dtxt">邮件</span>
									</div>
							</a></li>

							<li><a href="newsManager.do" target="content">
									<div class="dash-ct">
										<span class="replies-icon left"></span> <span class="dtxt">新闻信息管理</span>
									</div>
							</a></li>
							<li><a href="userManager.do" target="content">
									<div class="dash-ct">
										<span class="appearance-icon left"></span> <span class="dtxt">用户信息管理</span>
									</div>
							</a></li>
							<c:if test="${user.level ==2}">
								<li><a href="AdninistratorManager.do" target="content">
										<div class="dash-ct">
											<span class="profile-icon left"></span> <span class="dtxt">管理员信息管理</span>
										</div>
								</a></li>
							</c:if>
						</ul> <br /> <span class="dtxt"> <span class="size12 grey">
								Copyright &copy; 2013.<br /> XXXXXXXXX.com
						</span> <br /> <br /> <br />
					</span>
						<div class="clearfix"></div>
				</div>
				<!-- LEFT MENU -->


				<!-- RIGHT CPNTENT -->
				<div class="dashboard-right  offset-0">

					<Iframe id="content" name="content"
						style="width:100%;height:850px;" scrolling="no" frameborder="0"></iframe>

				</div>
				<!-- END OF RIGHT CPNTENT -->

				<div class="clearfix"></div>
				<br /> <br />

			</div>
			<!-- END CONTENT -->
		</div>
	</div>
	<!-- END OF CONTENT -->
	<div class="masternotice none">
		<button type="button" class="close" data-dismiss="alert"
			aria-hidden="true">&times;</button>
		Message from TitanicThemes
	</div>
	<!-- This page JS -->
	<script src="resourse/assets/js/js-index.js"></script>
	<script src="resourse/assets/js/js-dashboard.js"></script>

	<!-- Sparkline -->
	<script src="resourse/assets/js/jquery.sparkline.js"></script>

	<!-- Custom functions -->
	<script src="resourse/assets/js/functions.js"></script>

	<!-- Counter -->
	<script src="resourse/assets/js/counter.js"></script>

	<!-- Picker UI-->
	<script src="resourse/assets/js/jquery-ui.js"></script>

	<!-- Easing -->
	<script src="resourse/assets/js/jquery.easing.js"></script>

	<!-- Nicescroll  -->
	<script src="resourse/assets/js/jquery.nicescroll.min.js"></script>

	<!-- CarouFredSel -->
	<script src="resourse/assets/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script
		src="resourse/assets/js/helper-plugins/jquery.touchSwipe.min.js"></script>
	<script type="text/javascript"
		src="resourse/assets/js/helper-plugins/jquery.mousewheel.min.js"></script>
	<script type="text/javascript"
		src="resourse/assets/js/helper-plugins/jquery.transit.min.js"></script>
	<script type="text/javascript"
		src="resourse/assets/js/helper-plugins/jquery.ba-throttle-debounce.min.js"></script>

	<!-- Custom Select -->
	<script type='text/javascript'
		src='resourse/assets/js/jquery.customSelect.js'></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resourse/dist/js/bootstrap.min.js"></script>

</body>
</html>
