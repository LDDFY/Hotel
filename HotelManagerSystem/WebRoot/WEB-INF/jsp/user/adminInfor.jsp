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
<title>汉驿连锁酒店</title>

<!-- Bootstrap -->
<link href="resourse/dist/css/bootstrap.css" rel="stylesheet"
	media="screen">
<link href="resourse/assets/css/custom.css" rel="stylesheet"
	media="screen">


<link href="resourse/examples/carousel/carousel.css" rel="stylesheet">

<link
	href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:700,400,300,300italic'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" type="text/css"
	href="resourse/assets/css/font-awesome.css" media="screen" />

<!-- REVOLUTION BANNER CSS SETTINGS -->
<link rel="stylesheet" type="text/css"
	href="resourse/css/fullscreen.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="resourse/rs-plugin/css/settings.css" media="screen" />

<!-- Picker UI-->
<link rel="stylesheet" href="resourse/assets/css/jquery-ui.css" />

<!-- bin/jquery.slider.min.css -->
<link rel="stylesheet" href="resourse/plugins/jslider/css/jslider.css"
	type="text/css">
<link rel="stylesheet"
	href="resourse/plugins/jslider/css/jslider.round-blue.css"
	type="text/css">

<!-- jQuery-->
<script src="resourse/assets/js/jquery.v2.0.3.js"></script>
<script src="resourse/assets/js/jquery-ui.js"></script>

<!-- bin/jquery.slider.min.js -->
<script type="text/javascript"
	src="resourse/plugins/jslider/js/jshashtable-2.1_src.js"></script>
<script type="text/javascript"
	src="resourse/plugins/jslider/js/jquery.numberformatter-1.2.3.js"></script>
<script type="text/javascript" src="resourse/plugins/jslider/js/tmpl.js"></script>
<script type="text/javascript"
	src="resourse/plugins/jslider/js/jquery.dependClass-0.1.js"></script>
<script type="text/javascript"
	src="resourse/plugins/jslider/js/draggable-0.1.js"></script>
<script type="text/javascript"
	src="resourse/plugins/jslider/js/jquery.slider.js"></script>
<!-- end -->

</head>
<body id="top" class="thebg">
	<!-- CONTENT -->
	<div class="container">
		<!-- END OF container-->
		<div class="container mt25 offset-0">

			<div class="col-md-15 pagecontainer2 offset-0">
				<div class="cstyle10">
					<h4>
						<span style="padding-left: 50%;">管理员信息</span>
					</h4>
				</div>

				<div class="tab-content4 ">
					<table class="table table-striped">
						<input hidden="hidden" id="hid" name="hid" type="text"
							value=" ${admin.uid }"
							<tr>
										<th>姓名</th>
										<th>真实姓名：</th>
										<th>性别：</th>
										<th>电话：</th>
										
									</tr>
							<tr>
										<td> ${admin.uname }</td>
										<td>${admin.realname }</td>
										<td>${admin.ugender }</td>
										<td>${admin.utel }</td>
										<tr>
									
									</tr>
							<tr>			
							            <th>email</th>				
										<th>账户余额</th>										
										<th>所管酒店</th>
																	
									</tr>
							<td>${admin.uemail }</td> <td>${admin.money }</td>
							<td>${hotelname }</td>
						</tr>
					</table>
					<div style="padding-left: 80px; width: 80px;">
						<button type="submit" class="btn btn-primary btn-sm"
							onclick="JavaScript:history.back(-1);">返回</button>
					</div>
				</div>
			</div>

		</div>

	</div>
	</div>

	</div>

	<script src="resourse/assets/js/js-details.js"></script>




	<!-- Custom functions -->
	<script src="resourse/assets/js/functions.js"></script>


	<script src="resourse/assets/js/jquery.nicescroll.min.js"></script>

	<!-- jQuery KenBurn Slider  -->
	<script type="text/javascript"
		src="resourse/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

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

	<!-- Counter -->
	<script src="resourse/assets/js/counter.js"></script>

	<!-- Carousel-->
	<script src="resourse/assets/js/initialize-carousel-detailspage.js"></script>

	<!-- Js Easing-->
	<script src="resourse/assets/js/jquery.easing.js"></script>


	<!-- Bootstrap-->
	<script src="resourse/dist/js/bootstrap.min.js"></script>
</body>
</html>