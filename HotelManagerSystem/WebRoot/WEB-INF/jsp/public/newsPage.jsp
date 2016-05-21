<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'newsPage.jsp' starting page</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">


<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/resourse/dist/css/bootstrap.css" rel="stylesheet" media="screen">
<link href="${pageContext.request.contextPath}/resourse/assets/css/custom.css" rel="stylesheet" media="screen">

<!-- Updates -->
<link href="${pageContext.request.contextPath}/resourse/updates/update1/css/style01.css" rel="stylesheet" media="screen">

<!-- Carousel -->
<link href="${pageContext.request.contextPath}/resourse/css/carousel.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
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
	href="${pageContext.request.contextPath}/resourse/assets/css/font-awesome.css" media="screen" />
<!--[if lt IE 7]><link rel="stylesheet" type="text/css" href="assets/css/font-awesome-ie7.css" media="screen" /><![endif]-->

<!-- REVOLUTION BANNER CSS SETTINGS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resourse/css/fullscreen.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resourse/rs-plugin/css/settings.css" media="screen" />

<!-- Picker UI-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resourse/assets/css/jquery-ui.css" />

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/resourse/assets/js/jquery.v2.0.3.js"></script>


<!-- Masonry -->
<link href="${pageContext.request.contextPath}/resourse/updates/update1/css/masonry.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resourse/updates/update1/js/masonry.pkgd.js"></script>
<script>
	// http://masonry.desandro.com/masonry.pkgd.js added as external resource

	docReady( function() {

	  var container = document.querySelector('.masonry');
	  var button = document.querySelector('#toggle-button');
	  var msnry = new Masonry( container, {
		columnWidth: 2
	  });

	  var isActive = true;

	  eventie.bind( button, 'click', function() {
		if ( isActive ) {
		  msnry.destroy();
		} else {
		  msnry = new Masonry( container );
		}
		isActive = !isActive;
	  });

	});
	//@ sourceURL=pen.js
	</script>


</head>
<body id="top">

	<!-- Top wrapper -->
	<div class="navbar-wrapper3 navbar-fixed-top2">
		<div class="container">
			<div class="navbar mtnav2">

				<div class="container offset-3">
					<!-- Navigation-->
					<div class="navbar-header">
						<button data-target=".navbar-collapse" data-toggle="collapse"
							class="navbar-toggle" type="button">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a href="index.html" class="navbar-brand"><img
							src="${pageContext.request.contextPath}/resourse/updates/update1/img/logo.png"
							alt="Travel Agency Logo" class="logo2" /></a>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav nav2 navlight navbar-nav navbar-right">
							<li><a href="index.jsp">首页</a></li>
							  
							  <li class="dropdown active"><a href="newsPageUI">新闻</a></li>			  			  
							  <li><a href="aboutUI">关于我们</a></li>	
							  <li><a href="goContact.do">联系我们</a></li>			  			  
							  <li style="display:${user.uname==null?"":'none'}"><a href="loginUI">登录</a></li>
							  <li class="dropdown" style="display:${user.uname==null?"none":''}">
								<a data-toggle="dropdown" class="dropdown-toggle" href="#">操作<b class="lightcaret mt-2"></b></a>
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
	<!-- /Top wrapper -->




	<!--
	#################################
		- THEMEPUNCH BANNER -
	#################################
	-->
	<div id="dajy" class="fullscreen-container2 mtslideb sliderbg fixed">

		<div class="searchcontainer textcenter" style="">
			<span class="lato size48 slim white ">您想去哪?</span><br />

			<div class=" wh95percent center">
				<input type="text" class="form-control inph left"
					placeholder="ex: New York"></input>
				<button class="btn btn-default nbtn-search right" type="button">
					<span class="glyphicon glyphicon-search"></span>
				</button>

			</div>

		</div>


		<div class="fullscreenbanner">
			<ul>

				<!-- papercut fade turnoff flyin slideright slideleft slideup slidedown-->

				<!-- FADE -->
				<li data-transition="fade" data-slotamount="1"
					data-masterspeed="300"><img
					src="${pageContext.request.contextPath}/resourse/updates/update1/img/slider/slide4.jpg" alt="" />
					<div class="tp-caption scrolleffect sft" data-x="center"
						data-y="120" data-speed="1000" data-start="800"
						data-easing="easeOutExpo"></div></li>

				<!-- FADE -->
				<li data-transition="fade" data-slotamount="1"
					data-masterspeed="300"><img
					src="${pageContext.request.contextPath}/resourse/updates/update1/img/slider/slide2.jpg" alt="" />
					<div class="tp-caption scrolleffect sft" data-x="center"
						data-y="120" data-speed="1000" data-start="800"
						data-easing="easeOutExpo"></div></li>

				<!-- FADE -->
				<li data-transition="fade" data-slotamount="1"
					data-masterspeed="300"><img
					src="${pageContext.request.contextPath}/resourse/updates/update1/img/slider/slide3.jpg" alt="" />
					<div class="tp-caption scrolleffect sft" data-x="center"
						data-y="120" data-speed="1000" data-start="800"
						data-easing="easeOutExpo"></div></li>

				<!-- FADE -->
				<li data-transition="fade" data-slotamount="1"
					data-masterspeed="300"><img
					src="${pageContext.request.contextPath}/resourse/updates/update1/img/slider/slide4.jpg" alt="" />
					<div class="tp-caption scrolleffect sft" data-x="center"
						data-y="120" data-speed="1000" data-start="800"
						data-easing="easeOutExpo"></div></li>

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

			var tpj=jQuery;
			tpj.noConflict();

			tpj(document).ready(function() {

			if (tpj.fn.cssOriginal!=undefined)
				tpj.fn.css = tpj.fn.cssOriginal;

				tpj('.fullscreenbanner').revolution(
					{
						delay:9000,
						startwidth:1170,
						startheight:600,

						onHoverStop:"off",						// Stop Banner Timet at Hover on Slide on/off

						thumbWidth:100,							// Thumb With and Height and Amount (only if navigation Tyope set to thumb !)
						thumbHeight:50,
						thumbAmount:3,

						hideThumbs:0,
						navigationType:"bullet",				// bullet, thumb, none
						navigationArrows:"solo",				// nexttobullets, solo (old name verticalcentered), none

						navigationStyle:false,				// round,square,navbar,round-old,square-old,navbar-old, or any from the list in the docu (choose between 50+ different item), custom


						navigationHAlign:"left",				// Vertical Align top,center,bottom
						navigationVAlign:"bottom",					// Horizontal Align left,center,right
						navigationHOffset:30,
						navigationVOffset:30,

						soloArrowLeftHalign:"left",
						soloArrowLeftValign:"center",
						soloArrowLeftHOffset:20,
						soloArrowLeftVOffset:0,

						soloArrowRightHalign:"right",
						soloArrowRightValign:"center",
						soloArrowRightHOffset:20,
						soloArrowRightVOffset:0,

						touchenabled:"on",						// Enable Swipe Function : on/off


						stopAtSlide:-1,							// Stop Timer if Slide "x" has been Reached. If stopAfterLoops set to 0, then it stops already in the first Loop at slide X which defined. -1 means do not stop at any slide. stopAfterLoops has no sinn in this case.
						stopAfterLoops:-1,						// Stop Timer if All slides has been played "x" times. IT will stop at THe slide which is defined via stopAtSlide:x, if set to -1 slide never stop automatic

						hideCaptionAtLimit:0,					// It Defines if a caption should be shown under a Screen Resolution ( Basod on The Width of Browser)
						hideAllCaptionAtLilmit:0,				// Hide all The Captions if Width of Browser is less then this value
						hideSliderAtLimit:0,					// Hide the whole slider, and stop also functions if Width of Browser is less than this value


						fullWidth:"on",							// Same time only Enable FullScreen of FullWidth !!
						fullScreen:"off",						// Same time only Enable FullScreen of FullWidth !!


						shadow:0								//0 = no Shadow, 1,2,3 = 3 Different Art of Shadows -  (No Shadow in Fullwidth Version !)

					});


		});
		</script>

	<!-- WRAP -->
	<div class="wrap cst03 bgfix ">
		<div class="container lnews">最新新闻</div>
		<div class="masonry">
			<%-- <c:forEach var="newsLists" items="${newsLists }">
						<div class="offset-2">
							<div class="col-md-4 offset-0">
								<div class="listitem2">
									<a href="${newsLists.imgpath}" data-footer="A custom footer text" data-title="A random title" data-gallery="multiimages" data-toggle="lightbox"><img src="${newsLists.imgpath}" alt=""/></a>
									<div class="liover"></div>
									<a class="fav-icon" href="#"></a>
									<a class="book-icon" href="hotelDetailsUI?hid=${newsLists.newsid }"></a>
								</div>
							</div>
							<div class="col-md-8 offset-0">
							<div class="itemlabel3">
								<div class="labelright">
									<span class="size11 grey">${newsLists.author }</span><br/><br/>
									<span class="size11 grey">${newsLists.releasetime }</span><br/><br/>
									<span class="green size18"><b>${newsLists.keyword }</b></span><br/>
								</div>
								<div class="labelleft2">			
									<b>${newsLists.title }</b><br/><br/><br/>
									<p class="grey">${newsLists.content }</p><br/>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="offset-2"><hr class="featurette-divider3"></div>
					</c:forEach> --%>
			<c:forEach var="newsLists" items="${newsLists }">
			<div class="item ht2">
				<div class="msbox2">
					<%-- <a href="#"><img src="${newsLists.imgpath}"
						class="fhimg" alt=""></a> --%>
					<p class="msctext padding20">
						<span class="newstitle"><a href="#">${newsLists.title }</a></span>
						<br /> <br /> ${newsLists.content }
					</p>
				</div>
			</div>
			</c:forEach>
			<%-- <div class="item ">
				<div class="msbox">
					<a href="#"><img src="${pageContext.request.contextPath}/resourse/updates/update1/img/pic03.jpg"
						class="fhimg" alt=""></a>
				</div>
			</div>
			<div class="item ht2">
				<div class="msbox2">
					<a href="#"><img src="${pageContext.request.contextPath}/resourse/updates/update1/img/pic04.jpg"
						class="fhimg" alt=""></a>
					<p class="msctext padding20">
						<span class="newstitle"><a href="#">Velassaru Beach
								Resort Island Paradise - Maldives</a></span> <span
							class="glyphicon glyphicon-star lblue"></span> <span
							class="glyphicon glyphicon-star lblue"></span> <span
							class="glyphicon glyphicon-star lblue"></span> <span
							class="glyphicon glyphicon-star lblue"></span> <span
							class="glyphicon glyphicon-star lblue"></span> <br /> <br />
						Sed auctor erat sit amet lorem venenatis, in feugiat nisl
						fermentum. Nam luctus adipiscing dapibus. Nunc leo felis, ornare
						non commodo a, elementum a risus.
					</p>
				</div>
			</div>
			<div class="item wt2">
				<div class="msbox">
					<div class="w50percent msctext padding20 left">
						<span class="newstitle"><a href="#">Aquaventure
								Waterpark and The Lost Chambers Aquarium</a></span><br /> <br /> Sed
						auctor erat sit amet lorem venenatis, in feugiat nisl fermentum.
						Nam luctus adipiscing dapibus. Nunc leo felis, ornare non commodo
						a.
					</div>
					<div class="w50percentlast right">
						<a href="#"><img src="${pageContext.request.contextPath}/resourse/updates/update1/img/pic06.jpg"
							class="fwimg " alt=""></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="msbox">
					<a href="#"><img src="${pageContext.request.contextPath}/resourse/updates/update1/img/pic05.jpg"
						class="fhimg" alt=""></a>
				</div>
			</div> --%>

		</div>

		<div>
			<br /> <br /> <br />
		</div>








		<!-- FOOTER -->

		<div class="footerbg lcfix">
			<div class="container">
				<footer>
					<div class="footer">
						<a href="#" class="social1"><img
							src="${pageContext.request.contextPath}/resourse/images/icon-facebook.png" alt="" /></a> <a href="#"
							class="social2"><img src="${pageContext.request.contextPath}/resourse/images/icon-twitter.png"
							alt="" /></a> <a href="#" class="social3"><img
							src="${pageContext.request.contextPath}/resourse/images/icon-gplus.png" alt="" /></a> <a href="#"
							class="social4"><img src="${pageContext.request.contextPath}/resourse/images/icon-youtube.png"
							alt="" /></a> <br /> <br /> Copyright &copy; 2013 <a href="#">隐私协议</a>
						All rights reserved. <a href="http://titanicthemes.com">TitanicThemes.com</a>
						<br /> <br /> <a href="#top" id="gotop2" class="gotop"><img
							src="${pageContext.request.contextPath}/resourse/images/spacer.png" alt="" /></a>
					</div>
				</footer>
			</div>
		</div>





	</div>
	<!-- END OF WRAP -->




	<!-- Javascript -->

	<!-- This page JS -->
	<script src="${pageContext.request.contextPath}/resourse/updates/update1/js/js-new-homepage.js"></script>

	<!-- Custom functions -->
	<script src="${pageContext.request.contextPath}/resourse/assets/js/functions.js"></script>

	<!-- Picker UI-->
	<script src="${pageContext.request.contextPath}/resourse/assets/js/jquery-ui.js"></script>

	<!-- Easing -->
	<script src="${pageContext.request.contextPath}/resourse/assets/js/jquery.easing.js"></script>

	<!-- jQuery KenBurn Slider  -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resourse/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

	<!-- Nicescroll  -->
	<script src="${pageContext.request.contextPath}/resourse/assets/js/jquery.nicescroll.min.js"></script>

	<!-- CarouFredSel -->
	<script src="${pageContext.request.contextPath}/resourse/assets/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script
		src="${pageContext.request.contextPath}/resourse/assets/js/helper-plugins/jquery.touchSwipe.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resourse/assets/js/helper-plugins/jquery.mousewheel.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resourse/assets/js/helper-plugins/jquery.transit.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resourse/assets/js/helper-plugins/jquery.ba-throttle-debounce.min.js"></script>

	<!-- Custom Select -->
	<script type='text/javascript'
		src='resourse/assets/js/jquery.customSelect.js'></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="${pageContext.request.contextPath}/resourse/dist/js/bootstrap.min.js"></script>
</body>
</html>
