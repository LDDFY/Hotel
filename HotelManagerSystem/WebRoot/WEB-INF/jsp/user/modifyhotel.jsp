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
							<li class="dropdown active"><a href="hotelListUI">宾馆</a></li>
							<li><a href="newsPageUI">新闻</a></li>
							<li><a href="aboutUI">关于我们</a></li>
							<li style="display:${user.uname==null?"":'none'}"><a
								href="loginUI">登录</a></li>
							<li class="dropdown" style="display:${user.uname==null?"none":''}">
								<a data-toggle="dropdown" class="dropdown-toggle" href="#">操作<b
									class="lightcaret mt-2"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">登录名：${user.uname }</a></li>
									<li><a href="userUI?uid=${user.uid }">我的信息</a></li>
									<li><a href="paymentUI">付款</a></li>
									<li><a href="loginOut">注销</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- /Navigation-->
				</div>

			</div>
		</div>
	</div>






	<div class="container breadcrub">
		<div>
			<a class="homebtn left" href="#"></a>
			<div class="left">
				<ul class="bcrumbs">
					<li>/</li>
					<li><a>酒店</a></li>
					<li>/</li>
					<li><a>酒店详情</a></li>
				</ul>
			</div>
			<a class="backbtn right" href="#"></a>
		</div>
		<div class="clearfix"></div>
		<div class="brlines"></div>
	</div>

	<!-- CONTENT -->
	<div class="container">






		<!-- END OF container-->

		<div class="container mt25 offset-0">

			<div class="col-md-15 pagecontainer2 offset-0">
				<div class="cstyle10"></div>

				<ul class="nav nav-tabs" id="myTab">
					<li onclick="mySelectUpdate()"><a data-toggle="tab"
						href="#summary"><span class="summary"></span><span
							class="hidetext">概要</span>&nbsp;</a></li>


					<li onclick="JavaScript:history.back(-1);" class=""><a><span
							class="thingstodo"></span><span class="hidetext">返回</span>&nbsp;</a></li>
				</ul>
				<div class="tab-content4 ">


					<!-- TAB 1 -->
					<form action="updateHotel" method="post">
						<div id="summary" class="tab-pane fade ">
							<p class="collapsebtn2">
							 <input id="hid" name="hid" type="text"
									value=" ${hotel.hid }"  hidden="hidden"/>
								酒店名： <input id="hname" name="hname" type="text"
									value=" ${hotel.hname }" />
							</p>
							<div class="line4"></div>

							<!-- Collapse 1 -->
							<button type="button" class="collapsebtn2" data-toggle="collapse"
								data-target="#collapse1">
								地址： <span class="collapsearrow"></span>
							</button>

							<div id="collapse1" class="collapse in">
								<div class="hpadding20">
									<input id="haddr" name="haddr" type="text"
										value="${hotel.haddr }" />
								</div>
								<div class="clearfix"></div>
							</div>
							<!-- End of collapse 1 -->

							<div class="line4"></div>

							<!-- Collapse 2 -->
							<button type="button" class="collapsebtn2" data-toggle="collapse"
								data-target="#collapse2">
								星级： <span class="collapsearrow"></span>
							</button>

							<div id="collapse2" class="collapse in">
								<div class="hpadding20">
									<input id="grand" name="grand" type="text"
										value="${hotel.grand }" />Star
								</div>
								<div class="clearfix"></div>
							</div>
							<!-- End of collapse 2 -->

							<div class="line4"></div>

							<!-- Collapse 3 -->
							<button type="button" class="collapsebtn2 collapsed"
								data-toggle="collapse" data-target="#collapse3">
								所在省： <span class="collapsearrow"></span>
							</button>

							<div id="collapse3" class="collapse in">
								<div class="hpadding20">
									<input id="hprovince" name="hprovince" type="text"
										value="${hotel.hprovince }" />
								</div>
								<div class="clearfix"></div>
							</div>
							<!-- End of collapse 3 -->

							<div class="line4"></div>

							<!-- Collapse 4 -->
							<button type="button" class="collapsebtn2 collapsed"
								data-toggle="collapse" data-target="#collapse4">
								所在城市： <span class="collapsearrow"></span>
							</button>

							<div id="collapse4" class="collapse in">
								<div class="hpadding20">
									<input id="hcity" name="hcity" type="text"
										value="${hotel.hcity }" />
								</div>
								<div class="clearfix"></div>
							</div>
							<!-- End of collapse 4 -->
							<div class="line4"></div>
							<!-- Collapse 5 -->
							<button type="button" class="collapsebtn2 collapsed"
								data-toggle="collapse" data-target="#collapse5">
								联系电话： <span class="collapsearrow"></span>
							</button>

							<div id="collapse5" class="collapse in">
								<div class="hpadding20">
									<input id="htel" name="htel" type="text" value="${hotel.htel }" />
								</div>
								<div class="clearfix"></div>
							</div>
							<!-- End of collapse 5 -->
							<div class="line4"></div>
							<!-- Collapse 6 -->
							<button type="button" class="collapsebtn2 collapsed"
								data-toggle="collapse" data-target="#collapse6">
								邮箱： <span class="collapsearrow"></span>
							</button>

							<div id="collapse6" class="collapse in">
								<div class="hpadding20">
									<input id="hemail" name="hemail" type="text"
										value="${hotel.hemail }" />
								</div>
								<div class="clearfix"></div>
							</div>
							<!-- End of collapse 6 -->
							<div class="line4"></div>
							<!-- Collapse 7 -->
							<button type="button" class="collapsebtn2 collapsed"
								data-toggle="collapse" data-target="#collapse7">
								平均每晚价格： <span class="collapsearrow"></span>
							</button>

							<div id="collapse7" class="collapse in">
								<div class="hpadding20">
									<input id="avgprice" name="avgprice" type="text"
										value="${hotel.avgprice }" />
								</div>
								<div class="clearfix"></div>
							</div>
							<!-- End of collapse 7 -->
							<!-- Collapse 8 -->
							<button type="button" class="collapsebtn2 collapsed"
								data-toggle="collapse" data-target="#collapse8">
								简介： <span class="collapsearrow"></span>
							</button>

							<div id="collapse8" class="collapse in">
								<div class="hpadding20">
									<input id="summary" name="summary" type="text"
										value="${hotel.summary  }" style="height: 100px;width: 500px;" />
								</div>
								<div class="clearfix">

									<br>
									<div style="padding-left: 80px;">
										<button type="submit" class="btn btn-primary btn-sm"
											>确认修改</button>
									</div>

								</div>
							</div>
						</div>
					</form>
				</div>
				<!-- TAB 1 -->
			</div>
		</div>



	</div>
	<!-- END OF CONTENT -->







	<!-- FOOTER -->

	<div class="footerbgblack">
		<div class="container">

			<div class="col-md-3">
				<span class="ftitleblack">交流</span>
				<div class="scont">
					<a href="#" class="social1b"><img
						src="resourse/images/icon-facebook.png" alt="" /></a> <a href="#"
						class="social2b"><img src="resourse/images/icon-twitter.png"
						alt="" /></a> <a href="#" class="social3b"><img
						src="resourse/images/icon-gplus.png" alt="" /></a> <a href="#"
						class="social4b"><img src="resourse/images/icon-youtube.png"
						alt="" /></a> <br /> <br /> <br /> <a href="#"><img
						src="resourse/images/logosmal2.png" alt="" /></a><br /> <span
						class="grey2">&copy; 2013 | <a href="#">隐私权政策</a><br />
						All Rights Reserved
					</span> <br /> <br />

				</div>
			</div>
			<!-- End of column 1-->

			<div class="col-md-3">
				<span class="ftitleblack">Travel Specialists</span> <br /> <br />
				<ul class="footerlistblack">
					<li><a href="#">Golf Vacations</a></li>
					<li><a href="#">Ski & Snowboarding</a></li>
					<li><a href="#">Disney Parks Vacations</a></li>
					<li><a href="#">Disneyland Vacations</a></li>
					<li><a href="#">Disney World Vacations</a></li>
					<li><a href="#">Vacations As Advertised</a></li>
				</ul>
			</div>
			<!-- End of column 2-->

			<div class="col-md-3">
				<span class="ftitleblack">Travel Specialists</span> <br /> <br />
				<ul class="footerlistblack">
					<li><a href="#">Weddings</a></li>
					<li><a href="#">Accessible Travel</a></li>
					<li><a href="#">Disney Parks</a></li>
					<li><a href="#">Cruises</a></li>
					<li><a href="#">Round the World</a></li>
					<li><a href="#">First Class Flights</a></li>
				</ul>
			</div>
			<!-- End of column 3-->

			<div class="col-md-3 grey">
				<span class="ftitleblack">时事通讯</span>
				<div class="relative">
					<input type="email" class="form-control fccustom2black"
						id="exampleInputEmail1" placeholder="输入Email">
					<button type="submit" class="btn btn-default btncustom">
						Submit<img src="resourse/images/arrow.png" alt="" />
					</button>
				</div>
				<br /> <br /> <span class="ftitleblack">用户支持</span><br /> <span
					class="pnr">1-866-599-6674</span><br /> <span class="grey2">office@travel.com</span>
			</div>
			<!-- End of column 4-->


		</div>
	</div>

	<div class="footerbg3black">
		<div class="container center grey">
			<a href="#">首页</a> | <a href="#">关于我们</a> | <a href="#">预订</a> | <a
				href="#">特价优惠</a> | <a href="#">博客</a> | <a href="#">联系</a> <a
				href="#top" class="gotop scroll"><img
				src="resourse/images/spacer.png" alt="" /></a>
		</div>
	</div>


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