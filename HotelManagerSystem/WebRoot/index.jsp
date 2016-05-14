<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>Travel Agency - HTML5 Booking template</title>

<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath}/resourse/dist/css/bootstrap.css"
	rel="stylesheet" media="screen">
<link
	href="${pageContext.request.contextPath}/resourse/assets/css/custom.css"
	rel="stylesheet" media="screen">

<!-- Carousel -->
<link
	href="${pageContext.request.contextPath}/resourse/examples/carousel/carousel.css"
	rel="stylesheet">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath}/resourse/assets/js/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath}/resourse/assets/js/respond.min.js"></script>
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
	href="${pageContext.request.contextPath}/resourse/assets/css/font-awesome.css"
	media="screen" />
<!--[if lt IE 7]><link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourse/assets/css/font-awesome-ie7.css" media="screen" /><![endif]-->

<!-- REVOLUTION BANNER CSS SETTINGS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resourse/css/fullscreen.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resourse/rs-plugin/css/settings.css"
	media="screen" />

<!-- Picker UI-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resourse/assets/css/jquery-ui.css" />

<!-- jQuery -->
<script
	src="${pageContext.request.contextPath}/resourse/assets/js/jquery.v2.0.3.js"></script>

</head>
<body id="top">

	<!-- Top wrapper -->
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
						<a href="${pageContext.request.contextPath}/resourse/index.html"
							class="navbar-brand"><img
							src="${pageContext.request.contextPath}/resourse/images/logo.png"
							alt="Travel Agency Logo" class="logo" /></a>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown active"><a href="#">首页</a></li>
							<li><a href="hotelListUI">宾馆</a></li>
							<li><a href="newsPageUI">新闻</a></li>
							<li><a href="aboutUI">关于我们</a></li>
							<li style="display:${user.uname==null?"":'none'}"><a
								href="loginUI">登录</a></li>
							<li class="dropdown" style="display:${user.uname==null?"none":''}">
								<a data-toggle="dropdown" class="dropdown-toggle" href="#">操作<b
									class="lightcaret mt-2"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">登录名：${user.uname }</a></li>
									<li><a href="userUI">我的信息</a></li>
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
	<!-- /Top wrapper -->


	<!--
	#################################
		- THEMEPUNCH BANNER -
	#################################
	-->
	<div id="dajy" class="fullscreen-container mtslide sliderbg fixed">
		<div class="fullscreenbanner">
			<ul>

				<!-- papercut fade turnoff flyin slideright slideleft slideup slidedown-->

				<!-- FADE -->
				<li data-transition="fade" data-slotamount="1"
					data-masterspeed="300"><img
					src="${pageContext.request.contextPath}/resourse/images/slider/rome.jpg"
					alt="" />
					<div class="tp-caption scrolleffect sft" data-x="center"
						data-y="120" data-speed="1000" data-start="800"
						data-easing="easeOutExpo"></li>

				<!-- FADE -->
				<li data-transition="fade" data-slotamount="1"
					data-masterspeed="300"><img
					src="${pageContext.request.contextPath}/resourse/images/slider/paris.jpg"
					alt="" />
					<div class="tp-caption scrolleffect sft" data-x="center"
						data-y="120" data-speed="1000" data-start="800"
						data-easing="easeOutExpo"></li>

				<!-- FADE -->
				<li data-transition="fade" data-slotamount="1"
					data-masterspeed="300"><img
					src="${pageContext.request.contextPath}/resourse/images/slider/santorini.jpg"
					alt="" />
					<div class="tp-caption scrolleffect sft" data-x="center"
						data-y="120" data-speed="1000" data-start="800"
						data-easing="easeOutExpo"></li>


			</ul>
			<div class="tp-bannertimer none"></div>
		</div>
	</div>

	<!--
		##############################
		 - ACTIVATE THE BANNER HERE -
		##############################
		-->
	<script type="text/javascript">
		var tpj = jQuery;
		tpj.noConflict();

		tpj(document).ready(function() {

			if (tpj.fn.cssOriginal != undefined)
				tpj.fn.css = tpj.fn.cssOriginal;

			tpj('.fullscreenbanner').revolution({
				delay : 9000,
				startwidth : 1170,
				startheight : 600,

				onHoverStop : "on", // Stop Banner Timet at Hover on Slide on/off

				thumbWidth : 100, // Thumb With and Height and Amount (only if navigation Tyope set to thumb !)
				thumbHeight : 50,
				thumbAmount : 3,

				hideThumbs : 0,
				navigationType : "bullet", // bullet, thumb, none
				navigationArrows : "solo", // nexttobullets, solo (old name verticalcentered), none

				navigationStyle : false, // round,square,navbar,round-old,square-old,navbar-old, or any from the list in the docu (choose between 50+ different item), custom

				navigationHAlign : "left", // Vertical Align top,center,bottom
				navigationVAlign : "bottom", // Horizontal Align left,center,right
				navigationHOffset : 30,
				navigationVOffset : 30,

				soloArrowLeftHalign : "left",
				soloArrowLeftValign : "center",
				soloArrowLeftHOffset : 20,
				soloArrowLeftVOffset : 0,

				soloArrowRightHalign : "right",
				soloArrowRightValign : "center",
				soloArrowRightHOffset : 20,
				soloArrowRightVOffset : 0,

				touchenabled : "on", // Enable Swipe Function : on/off

				stopAtSlide : -1, // Stop Timer if Slide "x" has been Reached. If stopAfterLoops set to 0, then it stops already in the first Loop at slide X which defined. -1 means do not stop at any slide. stopAfterLoops has no sinn in this case.
				stopAfterLoops : -1, // Stop Timer if All slides has been played "x" times. IT will stop at THe slide which is defined via stopAtSlide:x, if set to -1 slide never stop automatic

				hideCaptionAtLimit : 0, // It Defines if a caption should be shown under a Screen Resolution ( Basod on The Width of Browser)
				hideAllCaptionAtLilmit : 0, // Hide all The Captions if Width of Browser is less then this value
				hideSliderAtLimit : 0, // Hide the whole slider, and stop also functions if Width of Browser is less than this value

				fullWidth : "on", // Same time only Enable FullScreen of FullWidth !!
				fullScreen : "off", // Same time only Enable FullScreen of FullWidth !!

				shadow : 0
			//0 = no Shadow, 1,2,3 = 3 Different Art of Shadows -  (No Shadow in Fullwidth Version !)

			});

		});
	</script>

	<!-- WRAP -->
	<div class="wrap cstyle03">

		<div class="container mt-200 z-index100">
			<div class="row">
				<div class="col-md-4">
					<form action="hotelListUI">
						<div class="bs-example bs-example-tabs cstyle04">

							<ul class="nav nav-tabs" id="myTab">
								<li onclick="mySelectUpdate()" class="active"><a
									data-toggle="tab" href="#hotel"><span class="hotel"></span>宾馆</a>
								</li>
							</ul>
							<div class="tab-content" id="myTabContent">
								<div id="hotel" class="tab-pane fade active in">
									<span class="opensans size18">您想去哪里?</span>
									<div>
										<input type="text" class="form-control" value="" size="15"
											id="homecity_name" name="homecity_name" mod="address|notice"
											mod_address_source="hotel"
											mod_address_suggest="@Beijing|北京|53@Shanghai|上海|321@Shenzhen|深圳|91@Guangzhou|广州|80@Qingdao|青岛|292@Chengdu|成都|324@Hangzhou|杭州|383@Wuhan|武汉|192@Tianjin|天津|343@Dalian|大连|248@Xiamen|厦门|61@Chongqing|重庆|394@"
											mod_address_reference="cityid" mod_notice_tip="请输入地址" /> <input
											id="hcity" name="hcity" type="hidden" value="{$hcity}" />

									</div>
									<div id="jsContainer" class="jsContainer" style="height:0">
										<div id="tuna_alert"
											style="display:none;position:absolute;z-index:999;overflow:hidden;"></div>
										<div id="tuna_jmpinfo"
											style="visibility:hidden;position:absolute;z-index:120;"></div>
									</div>
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>选择入住时间</b></span> <input
												type="text" class="form-control mySelectCalendar"
												id="datepicker" placeholder="mm/dd/yyyy" />
										</div>
									</div>

									<div class="w50percentlast">
										<div class="wh90percent textleft right">
											<span class="opensans size13"><b>选择退房时间</b></span> <input
												type="text" class="form-control mySelectCalendar"
												id="datepicker2" placeholder="mm/dd/yyyy" />
										</div>
									</div>

									<div class="clearfix"></div>

									<div class="room1 margtop15">
										<div class="w50percent">
											<div class="wh90percent textleft">
												<span class="opensans size13"><b>房间 1</b></span><br />

												<div class="addroom1 block">
													<a href="#room2" onclick="addroom2()" class="grey">+
														添加房间</a>
												</div>
											</div>
										</div>

										<div class="w50percentlast">
											<div class="wh90percent textleft right">
												<div class="w50percent">
													<div class="wh90percent textleft left">
														<span class="opensans size13"><b>成年人</b></span> <select
															class="form-control mySelectBoxClass">
															<option>1</option>
															<option selected>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</div>
												</div>
												<div class="w50percentlast">
													<div class="wh90percent textleft right">
														<span class="opensans size13"><b>孩子</b></span> <select
															class="form-control mySelectBoxClass">
															<option>0</option>
															<option selected>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="room2 none">
										<div class="clearfix"></div>
										<div class="line1"></div>
										<div class="w50percent">
											<div class="wh90percent textleft">
												<span class="opensans size13"><b>房间 2</b></span><br />
												<div class="addroom2 block grey">
													<a href="#" onclick="addroom3()" class="grey">+ 添加房间</a> |
													<a href="#" onclick="removeroom2()" class="orange"><img
														src="${pageContext.request.contextPath}/resourse/images/delete.png"
														alt="delete" /></a>
												</div>
											</div>
										</div>

										<div class="w50percentlast">
											<div class="wh90percent textleft right">
												<div class="w50percent">
													<div class="wh90percent textleft left">
														<span class="opensans size13"><b>成年人</b></span> <select
															class="form-control mySelectBoxClass">
															<option>1</option>
															<option>2</option>
															<option selected>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</div>
												</div>
												<div class="w50percentlast">
													<div class="wh90percent textleft right">
														<span class="opensans size13"><b>孩子</b></span> <select
															class="form-control mySelectBoxClass">
															<option selected>0</option>
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="room3 none">
										<div class="clearfix"></div>
										<div class="line1"></div>
										<div class="w50percent">
											<div class="wh90percent textleft">
												<span class="opensans size13"><b>房间 3</b></span><br />
												<div class="addroom3 block grey">
													<a href="#" onclick="addroom3()" class="grey">+ 添加房间</a> |
													<a href="#" onclick="removeroom3()" class="orange"><img
														src="${pageContext.request.contextPath}/resourse/images/delete.png"
														alt="delete" /></a>
												</div>
											</div>
										</div>

										<div class="w50percentlast">
											<div class="wh90percent textleft right">
												<div class="w50percent">
													<div class="wh90percent textleft left">
														<span class="opensans size13"><b>成年人</b></span> <select
															class="form-control mySelectBoxClass">
															<option selected>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</div>
												</div>
												<div class="w50percentlast">
													<div class="wh90percent textleft right">
														<span class="opensans size13"><b>孩子</b></span> <select
															class="form-control mySelectBoxClass">
															<option selected>0</option>
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</div>
												</div>
											</div>
										</div>
									</div>


								</div>
								<!--End of 2nd tab -->
							</div>

							<div class="searchbg">

								<button type="submit" class="btn-search">查询</button>

							</div>

						</div>
					</form>
				</div>
				<div class="col-md-4">
					<div class="shadow cstyle05">
						<div class="fwi one">
							<img
								src="${pageContext.request.contextPath}/resourse/images/rome.jpg"
								alt="" />
							<div class="mhover none">
								<span class="icon"><a
									href="${pageContext.request.contextPath}/resourse/list4.html"><img
										src="${pageContext.request.contextPath}/resourse/images/spacer.png"
										alt="" /></a></span>
							</div>
						</div>
						<div class="ctitle">
							Rome<a
								href="${pageContext.request.contextPath}/resourse/list4.html"><img
								src="${pageContext.request.contextPath}/resourse/images/spacer.png"
								alt="" /></a> <span>$59.99</span>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="shadow cstyle05">
						<div class="fwi one">
							<img
								src="${pageContext.request.contextPath}/resourse/images/surfer.jpg"
								alt="" />
							<div class="mhover none">
								<span class="icon"><a
									href="${pageContext.request.contextPath}/resourse/list3.html"><img
										src="${pageContext.request.contextPath}/resourse/images/spacer.png"
										alt="" /></a></span>
							</div>
						</div>
						<div class="ctitle">
							Cote d'azur<a
								href="${pageContext.request.contextPath}/resourse/list3.html"><img
								src="${pageContext.request.contextPath}/resourse/images/spacer.png"
								alt="" /></a> <span>$59.99</span>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- FOOTER -->
		<div class="footerbg sfix3">
			<div class="container">
				<footer>
					<div class="footer">
						<a href="#" class="social1"><img
							src="${pageContext.request.contextPath}/resourse/images/icon-facebook.png"
							alt="" /></a> <a href="#" class="social2"><img
							src="${pageContext.request.contextPath}/resourse/images/icon-twitter.png"
							alt="" /></a> <a href="#" class="social3"><img
							src="${pageContext.request.contextPath}/resourse/images/icon-gplus.png"
							alt="" /></a> <a href="#" class="social4"><img
							src="${pageContext.request.contextPath}/resourse/images/icon-youtube.png"
							alt="" /></a> <br /> <br /> Copyright &copy; 2013 <a href="#">Travel
							Agency</a> All rights reserved. <br /> <br /> <a href="#top"
							id="gotop2" class="gotop"><img
							src="${pageContext.request.contextPath}/resourse/images/spacer.png"
							alt="" /></a>
					</div>
				</footer>
			</div>
		</div>





	</div>

	<!-- / WRAP -->



	<!-- Javascript -->

	<!-- This page JS -->
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/js-index3.js"></script>

	<!-- Custom functions -->
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/functions.js"></script>

	<!-- Picker UI-->
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/jquery-ui.js"></script>

	<!-- Easing -->
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/jquery.easing.js"></script>

	<!-- jQuery KenBurn Slider  -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resourse/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

	<!-- Nicescroll  -->
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/jquery.nicescroll.min.js"></script>

	<!-- CarouFredSel -->
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/helper-plugins/jquery.touchSwipe.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resourse/assets/js/helper-plugins/jquery.mousewheel.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resourse/assets/js/helper-plugins/jquery.transit.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resourse/assets/js/helper-plugins/jquery.ba-throttle-debounce.min.js"></script>

	<!-- Custom Select -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resourse/assets/js/jquery.customSelect.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="${pageContext.request.contextPath}/resourse/dist/js/bootstrap.min.js"></script>

	<!-- 菜单地点选项 -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resourse/js/fixdiv.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resourse/js/address.js"></script>
</body>
</html>

