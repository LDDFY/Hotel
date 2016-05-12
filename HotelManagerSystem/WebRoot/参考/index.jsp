<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>">

<title>XXX Hotel</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- Bootstrap -->
<link href="resourse/dist/css/bootstrap.css" rel="stylesheet"
	media="screen">
<link href="resourse/assets/css/custom.css" rel="stylesheet"
	media="screen">
<link href="resourse/assets/css/intro.css" rel="stylesheet"
	media="screen">


<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="resourse/assets/js/html5shiv.js"></script>
      <script src="resourse/assets/js/respond.min.js"></script>
    <![endif]-->
<script src="resourse/assets/js/html5shiv.js"></script>
<script src="resourse/assets/js/respond.min.js"></script>
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
<link rel="stylesheet" type="text/css" href="resourse/assets/css/font-awesome-ie7.css" media="screen" />
<!-- Carousel -->
<link href="resourse/css/carousel.css" rel="stylesheet">

<!-- Revolution banner css settings -->
<link rel="stylesheet" type="text/css"
	href="resourse/css/fullscreen.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="resourse/rs-plugin/css/settings.css" media="screen" />

<!-- Picker -->
<link rel="stylesheet" href="resourse/assets/css/jquery-ui.css" />

<!-- jQuery -->
<script src="<%=basePath %>resourse/assets/js/jquery.v2.0.3.js"></script>


</head>

<body>
	<!-- BLUE SECTION -->
	<div class="bluediv">
		<div class="loader">
			<img src="resourse/images/loading.gif" alt="" />
		</div>

		<a href="intro2.html"><img class="logointro"
			src="resourse/images/logo-intro.png" alt="" /></a>

		<div class="tabscontainer">
			<ul class='tabs'>
				<li class="b2" onclick='mySelectUpdate(); changeAnimation2();'><a
					href='#tab1'><div class="anihotels">
							<img src="resourse/images/spacer.png" alt="" />订房
						</div></a></li>
				<li class="b1" onclick='mySelectUpdate(); changeAnimation1();'><a
					href='#tab2'><div class="anivacations">
							<img src="resourse/images/spacer.png" alt="" />登录
						</div></a></li>

				<li class="b3" onclick='mySelectUpdate(); changeAnimation3();'><a
					href='#tab3'><div class="aniflights">
							<img src="resourse/images/spacer.png" alt="" />联系我们
						</div></a></li>
				<li class="b4" onclick='mySelectUpdate(); changeAnimation4();'><a
					href='#tab4'><div class="anicars">
							<img src="resourse/images/spacer.png" alt="" />关于我们
						</div></a></li>

			</ul>
		</div>

		<div class="social">
			<a href="#"><img
				src="<%=basePath %>resourse/images/icon-facebook.png" alt="" /></a> <a
				href="#"><img
				src="<%=basePath %>resourse/images/icon-twitter.png" alt="" /></a> <a
				href="#"><img src="<%=basePath %>resourse/images/icon-gplus.png"
				alt="" /></a> <a href="#"><img
				src="<%=basePath %>resourse/images/icon-youtube.png" alt="" /></a> <br />
			<br /> &copy; 2016 |<a href="#">xxx Hotel</a><br />All rights
			reserved.
		</div>
	</div>
	<!-- END OF BLUE SECTION -->

	<!--WHITE SECTION -->
	<div class="whitediv">


		<!--TAB 2 -->
		<div id="tab2">
			<!-- -->
			<div class="w50percent">
				<div class="wh90percent textleft">
					<span class="opensans size13"><b>用户名</b></span> <input type="text"
						class="form-control" placeholder="username">
				</div>
			</div>

			<div class="w50percentlast">
				<div class="wh90percent textleft right">
					<span class="opensans size13"><b>密码</b></span> <input type="text"
						class="form-control" placeholder="password">
				</div>
			</div>


			<form action="list4.html">
				<button type="submit" class="btn-search2">登录</button>
			</form>
		</div>
		<!-- END OF TAB2 -->

		<!--TAB 1 -->
		<div id="tab1">
			<span class="opensans size18">选择地点</span>
			<!--<input type="text" class="form-control" placeholder="Greece">-->
			<input type="text" class="form-control" placeholder="Greece" value=""
				size="15" id="homecity_name" name="homecity_name"
				mod="address|notice" mod_address_source="hotel"
				mod_address_suggest="@Beijing|北京|53@Shanghai|上海|321@Shenzhen|深圳|91@Guangzhou|广州|80@Qingdao|青岛|292@Chengdu|成都|324@Hangzhou|杭州|383@Wuhan|武汉|192@Tianjin|天津|343@Dalian|大连|248@Xiamen|厦门|61@Chongqing|重庆|394@"
				mod_address_reference="cityid" mod_notice_tip="中文/拼音" /> <input
				id="cityid" name="cityid" type="hidden" value="{$cityid}" />
			<div id="jsContainer" class="jsContainer" style="height:0">
				<div id="tuna_alert"
					style="display:none;position:absolute;z-index:999;overflow:hidden;"></div>
				<div id="tuna_jmpinfo"
					style="visibility:hidden;position:absolute;z-index:120;"></div>
			</div>
			<br />

			<div class="w50percent">
				<div class="wh90percent textleft">
					<span class="opensans size13"><b>入住时间</b></span> <input type="text"
						class="form-control mySelectCalendar2" id="datepicker7"
						placeholder="mm/dd/yyyy" />
				</div>
			</div>

			<div class="w50percentlast">
				<div class="wh90percent textleft right">
					<span class="opensans size13"><b>离开时间</b></span> <input type="text"
						class="form-control mySelectCalendar2" id="datepicker8"
						placeholder="mm/dd/yyyy" />
				</div>
			</div>

			<div class="clearfix"></div>

			<div class="room1">
				<div class="w50percent">
					<div class="wh90percent textleft">
						<span class="opensans size13"><b>房间 1</b></span><br />

						<div class="addroom1 block">
							<a href="#room2" onclick="addroom2()" class="grey">+ 添加房间</a>
						</div>
					</div>
				</div>

				<div class="w50percentlast">
					<div class="wh90percent textleft right">
						<div class="w50percent">
							<div class="wh90percent textleft left">
								<span class="opensans size13"><b>人数</b></span> <select
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
								<span class="opensans size13"><b>儿童</b></span> <select
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
						<span class="opensans size13"><b>ROOM 2</b></span><br />
						<div class="addroom2 block grey">
							<a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a
								href="#" onclick="removeroom2()" class="orange"></a>
						</div>
					</div>
				</div>

				<div class="w50percentlast">
					<div class="wh90percent textleft right">
						<div class="w50percent">
							<div class="wh90percent textleft left">
								<span class="opensans size13"><b>Adult</b></span> <select
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
								<span class="opensans size13"><b>Child</b></span> <select
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
						<span class="opensans size13"><b>ROOM 3</b></span><br />
						<div class="addroom3 block grey">
							<a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a
								href="#" onclick="removeroom3()" class="orange"><img
								src="resourse/images/delete.png" alt="delete" /></a>
						</div>
					</div>
				</div>

				<div class="w50percentlast">
					<div class="wh90percent textleft right">
						<div class="w50percent">
							<div class="wh90percent textleft left">
								<span class="opensans size13"><b>Adult</b></span> <select
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
								<span class="opensans size13"><b>Child</b></span> <select
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
			<form action="list4.html">
				<button type="submit" class="btn-search2">查看</button>
			</form>
		</div>
		<script type="text/javascript" src="resourse/js/fixdiv.js"></script>
		<script type="text/javascript" src="resourse/js/address.js"></script>
		<!--END OF TAB 1 -->

		<!--TAB 3 -->
		<div id="tab3"></div>
		<!-- END OF TAB3 -->

		<!--TAB 4 -->
		<div id="tab4"></div>
		<!-- END OF TAB4 -->





	</div>
	<!-- END OF WHITE SECTION -->



	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resourse/dist/js/bootstrap.min.js"></script>

	<!-- Javascript -->
	<script src="resourse/assets/js/js-intro2.js"></script>

	<!-- Preload images -->
	<script src="resourse/assets/js/jquery.preload.js"></script>

	<!-- Easing -->
	<script src="resourse/assets/js/jquery.easing.js"></script>

	<!-- Nicescroll  -->
	<script src="resourse/assets/js/jquery.nicescroll.min.js"></script>

	<!-- Picker UI-->
	<script src="resourse/assets/js/jquery-ui.js"></script>

	<!-- Custom Select -->
	<script type='text/javascript'
		src='resourse/assets/js/jquery.customSelect.js'></script>

	<!-- Functions -->
	<script src="resourse/assets/js/functions.js"></script>

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

</body>
</html>
