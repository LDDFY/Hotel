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
<link
	href="${pageContext.request.contextPath}/resourse/dist/css/bootstrap.css"
	rel="stylesheet" media="screen">
<link
	href="${pageContext.request.contextPath}/resourse/assets/css/custom.css"
	rel="stylesheet" media="screen">


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
	href="assets/css/font-awesome.css" media="screen" />
<!--[if lt IE 7]><link rel="stylesheet" type="text/css" href="assets/css/font-awesome-ie7.css" media="screen" /><![endif]-->

<!-- Animo css-->
<link
	href="${pageContext.request.contextPath}/resourse/plugins/animo/animate+animo.css"
	rel="stylesheet" media="screen">

<!-- Picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resourse/assets/css/jquery-ui.css" />

<!-- jQuery -->
<script
	src="${pageContext.request.contextPath}/resourse/assets/js/jquery.v2.0.3.js"></script>

<script type="text/javascript">
	function checkUser() {
		var uid =document.getElementById("uid").value;
			
		if (uid == null||uid=="") {
			alert("请登录后重新提交！");
			return false;
		} else {

			return true;//不写此返回值也行，此时就直接提交了

		}
	}
</script>
</head>
<body id="top" class="thebg">
	<input hidden="hidden" id="uid" name="uname" value="${ user.uid}" />
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
							src="${pageContext.request.contextPath}/resourse/images/logo.png"
							alt="Travel Agency Logo" class="logo" /></a>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.jsp">首页</a></li>
							<li><a href="newsPageUIl">新闻</a></li>
							<li><a href="aboutUI">关于我们</a></li>
							<li><a href="goContact.do">联系我们</a></li>
							<li style="display:${user.uname==null?"":'none'}"><a
								href="loginUI">登录</a></li>
							<li class="dropdown" style="display:${user.uname==null?"none":''}">
								<a data-toggle="dropdown" class="dropdown-toggle" href="#">操作<b
									class="lightcaret mt-2"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">登录名：${user.uname }</a></li>

									<li><a href="userUI?uid=${user.uid }">我的信息</a></li>

									<li class="dropdown active"><a>付款</a></li>
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
					<li><a href="#">首页</a></li>
					<li>/</li>
					<li><a href="#">付款</a></li>
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


			<!-- LEFT CONTENT -->
			<div class="col-md-8 pagecontainer2 offset-0">

				<div class="padding30 grey">
					<span class="size16px bold dark left">你想如何付款? </span>

					<div class="roundstep right">1</div>
					<div class="clearfix"></div>

					<br />
					<div class="col-md-4"></div>
					<ul class="nav navigation-tabs">
						<li class="active"><a href="#card" data-toggle="tab">账户余额</a></li>
						<li><a href="#paypal" data-toggle="tab">支付宝</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content4">
						<!-- Tab 2 -->
						<div class="tab-pane" id="paypal">
							<div class="alert alert-warning fade in">
								<button aria-hidden="true" data-dismiss="alert" class="close"
									type="button">×</button>
								<strong>重要提醒:</strong> 您将被重定向到支付宝网站安全地完成你的付款。
							</div>
							<button type="submit" class="btn-search5">进入支付宝</button>
						</div>
						<!-- End of Tab 2 -->


						<!-- Tab 1 -->
						<div class="tab-pane active" id="card">

							<div class="col-md-4 textright">
								<div class="margtop15">
									<span class="dark">用户名:</span><span class="red">*</span>
								</div>
							</div>
							<form action="SubmitRoom.do" method="post" onsubmit="return checkUser()">
								<div class="col-md-4">
									<input id="uname" name="uname" type="text"
										class="form-control margtop10" placeholder="">
								</div>
								<div class="col-md-4 textleft"></div>
								<div class="clearfix"></div>

								<div class="col-md-4 textright">
									<div class="margtop15">
										<span class="dark"> 密码 :</span><span class="red">*</span>
									</div>
								</div>
								<div class="col-md-4">
									<input id="upwd" name="upwd" type="password"
										class="form-control margtop10" placeholder="">
								</div>
								<input hidden="hidden" id="olist" name="olist"
									value="${olistinfor }">
								<div class="col-md-4 textleft"></div>
								<div class="clearfix"></div>
								<div class="col-md-3 textleft"></div>
								<c:if test="${not empty result }">
									<div class="col-md-6">
										<div class="alert alert-warning fade in margtop20">
											<button aria-hidden="true" data-dismiss="alert" class="close"
												type="button">×</button>
											<strong>提示!</strong>&nbsp;${result}
										</div>
									</div>
								</c:if>
						</div>
						<!-- End of Tab 1 -->
					</div>
					<div class="clearfix"></div>
					<br /> <br /> <span class="size16px bold dark left">回顾和预定</span>
					<div class="roundstep right">2</div>
					<div class="clearfix"></div>
					<div class="line4"></div>

					<div class="alert alert-info">
						关于您的预订的重要信息:<br />
						<p class="size12">• 此项保留不可更改，不可更改或取消。</p>
					</div>
					通过选择来完成这个预订，我承认我已经阅读并接受了 <a href="#" class="clblue">规则</a> <a
						href="#" class="clblue">限制条件</a> , 和 <a href="#" class="clblue">隐私政策</a>.
					<br />

					<button type="submit" class="cyanbtn margtop20">确认预定</button>


				</div>
				</form>
			</div>
			<!-- END OF LEFT CONTENT -->

			<!-- RIGHT CONTENT -->
			<div class="col-md-4">

				<div class="pagecontainer2 loginbox">
					<div class="cpadding1">
						<span class="icon-lockk"></span>
						<h3 class="opensans">登录</h3>

						<c:if test="${not empty loginResult}">
							<div class="alert alert-danger">${loginResult}</div>
						</c:if>

						<form action="orderLoginLogin.do" method="post">
							<input id="uname" name="uname" type="text"
								class="form-control logpadding" placeholder="用户名"> <br />
							<input id="upwd" name="upwd" type="password"
								class="form-control logpadding" placeholder="密码">
							<div class="margtop20">
								<div class="left">
									<div class="checkbox padding0">
										<label> <input type="checkbox">记住密码
										</label>
									</div>

								</div>
								<div class="right">
									<button class="btn-search5" type="submit"
										onclick="errorMessage()">登录</button>
								</div>
						</form>
					</div>
					<div class="clearfix"></div>
					<br />
				</div>
			</div>
			<br />
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
						src="${pageContext.request.contextPath}/resourse/images/icon-facebook.png"
						alt="" /></a> <a href="#" class="social2b"><img
						src="${pageContext.request.contextPath}/resourse/images/icon-twitter.png"
						alt="" /></a> <a href="#" class="social3b"><img
						src="${pageContext.request.contextPath}/resourse/images/icon-gplus.png"
						alt="" /></a> <a href="#" class="social4b"><img
						src="${pageContext.request.contextPath}/resourse/images/icon-youtube.png"
						alt="" /></a> <br /> <br /> <br /> <a href="#"><img
						src="${pageContext.request.contextPath}/resourse/images/logosmal2.png"
						alt="" /></a><br /> <span class="grey2">&copy; 2013 | <a
						href="#">隐私权政策</a><br /> All Rights Reserved
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
						Submit<img
							src="${pageContext.request.contextPath}/resourse/images/arrow.png"
							alt="" />
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
				src="${pageContext.request.contextPath}/resourse/images/spacer.png"
				alt="" /></a>
		</div>
	</div>


	<!-- Javascript  -->
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/js-payment.js"></script>

	<!-- Nicescroll  -->
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/jquery.nicescroll.min.js"></script>

	<!-- Custom functions -->
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/functions.js"></script>

	<!-- Custom Select -->
	<script type='text/javascript'
		src='${pageContext.request.contextPath}/resourse/assets/js/jquery.customSelect.js'></script>

	<!-- Load Animo -->
	<script
		src="${pageContext.request.contextPath}/resourse/plugins/animo/animo.js"></script>

	<!-- Picker -->
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/jquery-ui.js"></script>

	<!-- Picker -->
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/jquery.easing.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="${pageContext.request.contextPath}/resourse/dist/js/bootstrap.min.js"></script>
</body>
</html>
