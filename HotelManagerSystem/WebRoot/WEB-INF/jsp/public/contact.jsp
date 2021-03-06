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

<!-- PIECHART -->
<link rel="stylesheet" type="text/css"
	href="resourse/assets/css/jquery.easy-pie-chart.css">

<!-- Animo css-->
<link href="resourse/plugins/animo/animate+animo.css" rel="stylesheet"
	media="screen">

<!-- Picker -->
<link rel="stylesheet" href="resourse/assets/css/jquery-ui.css" />
</head>
<b ody id="top">
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
							<li><a href="newsPageUI">新闻</a></li>
							<li><a href="aboutUI">关于我们</a></li>
							<li class="dropdown active"><a href="goContact.do">联系我们</a></li>
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

		<img src="/HotelManagerSystem/resourse/images/slider/paris.jpg"
			style="width: 100%;" />
	</div> <!-- WRAP -->
	<div class="wrap cstyle03">

		<div class="container mt-200 z-index100">
			<div class="row">
				<div class="col-md-12">
					<div class="bs-example bs-example-tabs cstyle04">

						<div class="tab-content">

							<div class="col-md-4">

								<form action="sendEmail.do" method="post" id="EmailForm"
									name="EmailForm">

									<div>
										<span class="opensans size24 slim">联系</span>
										<c:if test="${not empty result }">
											<div class="alert alert-success alert-dismissable">
												<button type="button" class="close" data-dismiss="alert"
													aria-hidden="true">&times;</button>
												${result }
											</div>
										</c:if>
									</div>
									<input id="name" name="name" type="text" placeholder="姓名"
										class="form-control logpadding margtop10"> <input
										id="tel" name="tel" type="text" placeholder="手机号"
										class="form-control logpadding margtop20"> <input
										id="email" name="email" type="text" placeholder="E-mail"
										class="form-control logpadding margtop20">
							</div>
							<div class="col-md-4">
								<textarea rows="9" class="form-control margtop10" id="content"
									name="content"></textarea>
							</div>
							<div class="col-md-4 opensans grey">
								地址:<br /> <span class="dark"> XX<br /> XXXXX-XXX-XXX<br />
									武汉<br />
								</span> <br /> 电话<br />
								<p class="opensans size30 cyan xslim">1-866-599-XXXX</p>
								Email<br /> <a href="mailto:office@company.com" class="green2">office@company.com</a>
							</div>
						</div>

						<div class="searchbg3">
							<button type="submit" class="btn-search right mr20">发送邮件</button>

						</div>

						</form>
					</div>
				</div>
			</div>
		</div>
		<script src="resourse/js/jquery-1.9.1.js"></script>
		<script src="resourse/js/jquery.validate.js"></script>
		<script>
			var validator;
			$(document)
					.ready(
							function() {
								validator = $("#EmailForm").validate({
									rules : {
										name : {
											required : true,
										},
										tel : {
											required : true,
											isMobile : true,
										},
										email : {
											email : true,
										},
									},
									messages : {
										name : {
											required : '请输入用户名',
										},
										tel : {
											required : '请输入手手机号',
										},
										email : {
											email : "email格式不正确！",
										},
									},
									 submitHandler : function(form) {  
							                form.submit();  
							            },
								});
								$.validator
										.addMethod(
												"isMobile",
												function(value, element) {
													var length = value.length;
													var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
													return this
															.optional(element)
															|| (length == 11 && mobile
																	.test(value));
												}, $.validator
														.format("请填写正确的手机号！"));
							});
		</script>


		<div class="lastminutecontact lcfix">
			<div class="container lmc">
				<img src="resourse/images/rating-4.png" /><br /> 最新消息: <b>特价房</b>
				- 10月 27日起 50RMB/人<br />
				<form action="newsPageUI">
					<button class="btn iosbtn" type="submit">阅读更多</button>
				</form>
			</div>
		</div>




		<!-- FOOTER -->

		<div class="footerbg sfix3">
			<div class="container">
				<footer>
					<div class="footer">
						<a href="#" class="social1"><img
							src="resourse/images/icon-facebook.png" alt="" /></a> <a href="#"
							class="social2"><img src="resourse/images/icon-twitter.png"
							alt="" /></a> <a href="#" class="social3"><img
							src="resourse/images/icon-gplus.png" alt="" /></a> <a href="#"
							class="social4"><img src="resourse/images/icon-youtube.png"
							alt="" /></a> <br /> <br /> Copyright &copy; 2013 <a href="#">Travel
							Agency</a> All rights reserved. <a href="http://titanicthemes.com">TitanicThemes.com</a>
						<br /> <br /> <a href="#top" id="gotop2" class="gotop"><img
							src="resourse/images/spacer.png" alt="" /></a>
					</div>
				</footer>
			</div>
		</div>





	</div> <!-- END OF WRAP --> <!-- Javascript --> <script
		src="resourse/assets/js/js-details.js"></script> <!-- Googlemap --> <script
		src="resourse/assets/js/initialize-google-map.js"></script> <!-- Custom Select -->
	<script type='text/javascript'
		src="resourse/assets/js/jquery.customSelect.js"></script> <!-- Custom functions -->
	<script src="resourse/assets/js/functions.js"></script> <!-- Nicescroll  -->
	<script src="resourse/assets/js/jquery.nicescroll.min.js"></script> <!-- jQuery KenBurn Slider  -->
	<script type="text/javascript"
		src="resourse/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

	<!-- CarouFredSel --> <script
		src="resourse/assets/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script
		src="resourse/assets/js/helper-plugins/jquery.touchSwipe.min.js"></script>

	<script type="text/javascript"
		src="resourse/assets/js/helper-plugins/jquery.mousewheel.min.js"></script>
	<script type="text/javascript"
		src="resourse/assets/js/helper-plugins/jquery.transit.min.js"></script>
	<script type="text/javascript"
		src="resourse/assets/js/helper-plugins/jquery.ba-throttle-debounce.min.js"></script>

	<!-- Counter --> <script src="resourse/assets/js/counter.js"></script>

	<!-- Carousel--> <script
		src="resourse/assets/js/initialize-carousel-detailspage.js"></script>

	<!-- Js Easing--> <script src="resourse/assets/js/jquery.easing.js"></script>


	<!-- Bootstrap--> <script src="resourse/dist/js/bootstrap.min.js"></script>
	</body>
</html>
