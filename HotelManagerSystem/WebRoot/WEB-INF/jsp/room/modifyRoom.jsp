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
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="resourse/assets/js/html5shiv.js"></script>
      <script src="resourse/assets/js/respond.min.js"></script>
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
<!--[if lt IE 7]><link rel="stylesheet" type="text/css" href="resourse/assets/css/font-awesome-ie7.css" media="screen" /><![endif]-->

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
						<span style="padding-left: 50%;">修改房间信息</span>
					</h4>
				</div>
				<div class="tab-content4 ">
					<!-- TAB 1 -->
					<form action="updateHotel" method="post">
						<table class="table table-striped">
							<input hidden="hidden" id="hotel" name="hotel" type="text"
								value=" ${room.hotel}"
								<tr>
										<th>房间编号：</th>
										<th>房间号：</th>
										<th>房间类型：</th>
										<th>房间大小：</th>									
									</tr>
								<tr>										
										<td><input style="width: 150px;"id="haddr" name="haddr"
									type="text" value="${room.roomid }"/></td>
										<td><input style="width: 150px;" id="grand" name="grand"
									type="text" value=" ${room.rid }"/></td>
										<td><input style="width: 150px;" id="hprovince" name="hprovince" type="text"
													value="${room.rtype }"/></td>
										<td><input style="width: 150px;" id="hcity" name="hcity" type="text"
													value="${room.rarea }"/></td>
										<tr>									
									</tr>
								<tr>			
							<th>该类房间总数：</th>
							<th>房间格局：</th>
							<th>可住人数：</th>
							<th>是否可用：</th>
									</tr>
								<td><input style="width: 150px;" id="hname" name="hname"
								type="text" value="${room.total}" /></td>
								<td><input style="width: 150px;" id="htel" name="htel"
								type="text" value="${room.rpattern}" /></td>
								<td><input style="width: 150px;" id="hemail" name="hemail"
								type="text" value="${room.customs}" /></td>
								<td><select id="rstatus" name="rstatus">
									<option value="1">可用</option>
									<option value="o">不可用</option>
							</select></td>
							</tr>
							<tr>
								<td><button type="submit" class="btn btn-primary btn-sm">确认</button>
									<button type="submit" class="btn btn-primary btn-sm"
										onclick="JavaScript:history.back(-1);">返回</button></td>
							</tr>
						</table>
					</form>
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