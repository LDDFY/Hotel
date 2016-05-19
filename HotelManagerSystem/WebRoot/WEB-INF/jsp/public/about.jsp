<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
							<li><a href="hotelListUI">宾馆</a></li>
							<li><a href="newsPageUI">新闻</a></li>
							<li class="dropdown active"><a href="aboutUI">关于我们</a></li>
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
					<li><a href="#" class="active">关于我们</a></li>
				</ul>
			</div>
			<a class="backbtn right" href="#"></a>
		</div>
		<div class="clearfix"></div>
		<div class="brlines"></div>
	</div>

	<!-- CONTENT -->
	<div class="container">


		<div class="container mt25 offset-0">


			<!-- CONTENT -->
			<div class="col-md-12 pagecontainer2 offset-0">
				<div class="hpadding50c">
					<p class="lato size30 slim">遇见我们</p>
					<p class="aboutarrow"></p>
				</div>
				<div class="line3"></div>

				<div class="hpadding50c">

					<p class="lato size22 slim textcenter">
						武汉汉驿旅店管理有限公司,<br /> 我们可以很容易地计划你的下一个商务或休闲住宿
					</p>
					<br />
					<div class="line3"></div>
					<br />

					<!-- LEFT IMG -->
					<div class="col-md-8 cpdd01">
						<img src="resourse/images/about-man.jpg" class="fwimg" alt="" />
						<hr/>
						<img src="resourse/images/about-man.jpg" class="fwimg" alt="" />
					</div>
					<!-- END OF LEFT IMG -->

					<!-- IMG RIGHT TEXT -->
					<div class="col-md-4 cpdd02">
						<div class="opensans size18 grey">
							<span class="lato dark bold">公司</span><br />
							武汉汉驿旅店管理有限公司以职业化、开拓型、创新性旅店管理团队为基蕴，依托武汉的旅游资源和人脉环境，聚集为极具资本实力、资源合力和域展空间的规模化、专业型百元旅店品牌管理公司。公司在武汉光谷商圈、司门口商圈、黄鹤楼商圈、汉口江汉步行街商圈、汉正街商圈及汉阳国博商圈，武汉高校区等成功运营了12家汉驿旅店；在武汉汉口中央商业区，签约江汉步行街项目及六渡桥项目；良好的品牌锻造力和运营推动力，必将铸就汉驿旅店高速发展。
							<br /> <br /> <span class="lato dark bold">特性</span><br />
							<div class="progress-about margbtm10">
								<div class="progress-bar progress-bar-success pbar1"
									role="progressbar" aria-valuenow="90" aria-valuemin="0"
									aria-valuemax="100" style="width: 0%">特性 1 90%</div>
							</div>
							<div class="progress-about margbtm10">
								<div class="progress-bar progress-bar-success pbar2"
									role="progressbar" aria-valuenow="100" aria-valuemin="0"
									aria-valuemax="100" style="width: 0%">特性 2 100%</div>
							</div>
							<div class="progress-about margbtm10">
								<div class="progress-bar progress-bar-success pbar3"
									role="progressbar" aria-valuenow="85" aria-valuemin="0"
									aria-valuemax="100" style="width: 0%">特性 3 85%</div>
							</div>
							<div class="progress-about">
								<div class="progress-bar progress-bar-success pbar4"
									role="progressbar" aria-valuenow="95" aria-valuemin="0"
									aria-valuemax="100" style="width: 0%">特性 4 95%</div>
							</div>

						</div>
					</div>
					<!-- END OF IMG RIGHT TEXT -->
					<div class="clearfix"></div>
					<br /> <br /> <span class="lato size18 dark bold">人员介绍</span><br />
					<br />

					<div class="col-md-4">
						<div class="abover ohidden">
							<img src="resourse/images/about-women.jpg" class="fwimg" alt="" />
							<div class="chart none" data-percent="69"
								style="float:right; margin-top:-60px; right:10px;">
								<span class="countbouncerate">69</span>%
							</div>
						</div>
						<p class="lato lh2 mt10">
							<b>John Doe</b><br /> 销售
						</p>
					</div>
					<div class="col-md-4">
						<div class="abover ohidden">
							<img src="resourse/images/about-men2.jpg" class="fwimg" alt="" />
							<div class="chart2 none" data-percent="69"
								style="float:right; margin-top:-60px; right:10px;">
								<span class="countnewvisits">81</span>%
							</div>
						</div>
						<p class="lato lh2 mt10">
							<b>John Doe</b><br /> C.E.O.
						</p>
					</div>
					<div class="col-md-4">
						<div class="abover ohidden">
							<img src="resourse/images/about-women2.jpg" class="fwimg" alt="" />
							<div class="chart3 none" data-percent="69"
								style="float:right; margin-top:-60px; right:10px;">
								<span class="countsearchtrafic">33</span>%
							</div>
						</div>
						<p class="lato lh2 mt10">
							<b>John Doe</b><br /> 销售
						</p>
					</div>
					<div class="clearfix"></div>

					<br /> <br />


					<div class="line3"></div>
					<br /> <br />

					<div class="col-md-4">
						<div class="opensans grey2">
							<span class="gcircle">1</span><span
								class="lato size18 dark mt6 ml10"><b>公司团队</b></span><br /> <br />
							全球有11000多名员工致力于服务Booking.com的客人和酒店合作伙伴。
							<ul class='checklist2'>
								<li>Pellentesque non dolor urna</li>
								<li>Tempor nisl et enim sagittis egestas</li>
								<li>Aenean a purus vel nisi aliquet ultricies</li>
								<li>Ut nunc vivamus at erat ligula suspen</li>
							</ul>
						</div>
					</div>
					<div class="col-md-4">

						<p class="opensans grey2">
							<span class="gcircle">2</span><span
								class="lato size18 dark mt6 ml10"><b>我们的企业理念</b></span><br /> <br />
							协助任何预算的休闲旅客及商务人士轻松搜索、预订并享受全球绝佳住宿。
						</p>
					</div>
					<div class="col-md-4">

						<p class="opensans grey2">
							<span class="gcircle">3</span><span
								class="lato size18 dark mt6 ml10"><b>公司愿景</b></span><br /> <br />
							Booking.com提供信息全面且易于使用的网站以及最优惠价格保证。我们的目标是为世界各地的商务人士和休闲旅客提供最易于使用且最实惠的方式，搜索并预订各种类型的住宿。
							<br /> <br />
							我们的酒店团队及内容编辑团队在当地办公室与酒店合作伙伴通力合作，为所有客人提供透明的信息、足够的空房以及最优的价格。我们的多语种客户服务团队全天24小时提供服务，致力于为所有的客人提供协助和支持。
							<br />
						</p>
					</div>
					<div class="clearfix"></div>


				</div>



				<div class="clearfix"></div>
				<br /> <br />
			</div>
			<!-- END CONTENT -->



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


	<!-- Javascript  -->
	<script src="resourse/assets/js/js-about.js"></script>

	<!-- Easy Pie Chart  -->
	<script src="resourse/assets/js/jquery.easy-pie-chart.js"></script>

	<!-- Nicescroll  -->
	<script src="resourse/assets/js/jquery.nicescroll.min.js"></script>

	<!-- Custom functions -->
	<script src="resourse/assets/js/functions.js"></script>

	<!-- Custom Select -->
	<script type='text/javascript'
		src='resourse/assets/js/jquery.customSelect.js'></script>

	<!-- Load Animo -->
	<script src="resourse/plugins/animo/animo.js"></script>

	<!-- Picker -->
	<script src="resourse/assets/js/jquery-ui.js"></script>

	<!-- Picker -->
	<script src="resourse/assets/js/jquery.easing.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resourse/dist/js/bootstrap.min.js"></script>
</body>
</html>
