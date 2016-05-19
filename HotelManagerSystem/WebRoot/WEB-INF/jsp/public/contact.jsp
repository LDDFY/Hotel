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

<!-- PIECHART -->
<link rel="stylesheet" type="text/css"
	href="resourse/assets/css/jquery.easy-pie-chart.css">

<!-- Animo css-->
<link href="resourse/plugins/animo/animate+animo.css" rel="stylesheet"
	media="screen">

<!-- Picker -->
<link rel="stylesheet" href="resourse/assets/css/jquery-ui.css" />

<!-- jQuery -->
<script src="resourse/assets/js/jquery.v2.0.3.js"></script>


</head>
<body id="top">
	<div class="navbar-wrapper2 navbar-fixed-top">
		<div class="container">
			<div class="navbar mtnav">

				<div class="container offset-3">
					<!-- Navigation-->
					<div class="navbar-header">
						<button data-target=".navbar-collapse" data-toggle="collapse"
							class="navbar-toggle" type="button">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a href="index.html" class="navbar-brand"><img
							src="resourse/images/logo.png" alt="Travel Agency Logo"
							class="logo" /></a>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.jsp">首页</a></li>
							<li class="dropdown active"><a href="#">联系我们</a></li>
							<li><a href="newsPageUI">新闻</a></li>
							<li><a href="aboutUI">关于我们</a></li>
							<li style="display:${user.uname==null?"":'none'}"><a
								href="loginUI">登录</a></li>
							<li class="dropdown" style="display:${user.uname==null?"none":''}">
								<a data-toggle="dropdown" class="dropdown-toggle" href="#">操作<b
									class="lightcaret mt-2"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">用户名：${user.uname }</a></li>
									<li><a href="userUI?uid=${user.uid }">个人信息</a></li>
									<li><a href="paymentUI">付款</a></li>
									<li><a href="loginOut">退出</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- /Navigation-->
				</div>

			</div>
		</div>
	</div>


	<div id="dajy" class="mtslide sliderbg fixed cstyle11">
		<div id="map-canvas2"></div>
	</div>



<!-- WRAP -->
	<div class="wrap cstyle03">
		
		<div class="container mt-200 z-index100">		
		  <div class="row">
			<div class="col-md-12">
				<div class="bs-example bs-example-tabs cstyle04">
				
					<div class="tab-content">

						<div class="col-md-4">
						<form action="#">
							<span class="opensans size24 slim">联系</span>
							<input type="text" placeholder="姓名" class="form-control logpadding margtop10">
							<input type="text" placeholder="电话" class="form-control logpadding margtop20">
							<input type="text" placeholder="E-mail" class="form-control logpadding margtop20">
						</div>
						<div class="col-md-4">
							<textarea rows="9" class="form-control margtop10"></textarea>
						</div>
						<div class="col-md-4 opensans grey">
							地址:<br/>
							<span class="dark">
								李龙<br/>
								科学大道166号<br/>
								河南 郑州<br/>
							</span>
							<br/>
							电话<br/>
							<p class="opensans size30 cyan xslim">1-866-599-6674</p>
							Email<br/>
							<a href="mailto:office@company.com" class="green2">office@company.com</a>
						</div>
					</div>
					
					<div class="searchbg3">
						<button type="submit" class="btn-search right mr20">发送邮件</button>
						</form>
					</div>
						
				</div>
			</div>
		  </div>
		</div>
		

		
		<div class="lastminutecontact lcfix">
			<div class="container lmc">	
				<img src="resourse/images/rating-4.png" alt=""/><br/>
				最新消息: <b>巴塞罗那</b> -  10月 27日起  209RMB/人<br/>
				<form action="newsPageUI" >
					<button class="btn iosbtn" type="submit">阅读更多</button>
				</form>
			</div>
		</div>
		

		
		
		<!-- FOOTER -->
		
		<div class="footerbg sfix3">
			<div class="container">		
				<footer>
					<div class="footer">
						<a href="#" class="social1"><img src="images/icon-facebook.png" alt=""/></a>
						<a href="#" class="social2"><img src="images/icon-twitter.png" alt=""/></a>
						<a href="#" class="social3"><img src="images/icon-gplus.png" alt=""/></a>
						<a href="#" class="social4"><img src="images/icon-youtube.png" alt=""/></a>
						<br/><br/>
						Copyright &copy; 2013 <a href="#">Travel Agency</a> All rights reserved. <a href="http://titanicthemes.com">TitanicThemes.com</a>
						<br/><br/>
						<a href="#top" id="gotop2" class="gotop"><img src="images/spacer.png" alt=""/></a>
					</div>
				</footer>
			</div>	
		</div>
		
		

		
		
	</div>
	<!-- END OF WRAP -->


	<!-- Javascript -->
	<script src="resourse/assets/js/js-details.js"></script>

	<!-- Googlemap -->
	<script src="resourse/assets/js/initialize-google-map.js"></script>

	<!-- Custom Select -->
	<script type='text/javascript'
		src="resourse/assets/js/jquery.customSelect.js"></script>

	<!-- Custom functions -->
	<script src="resourse/assets/js/functions.js"></script>

	<!-- Nicescroll  -->
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
