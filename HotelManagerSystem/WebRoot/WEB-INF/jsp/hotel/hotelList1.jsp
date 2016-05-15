<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
  	<!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Travel Agency - HTML5 Booking template</title>
	
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/resourse/dist/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="${pageContext.request.contextPath}/resourse/assets/css/custom.css" rel="stylesheet" media="screen">

	<link href="${pageContext.request.contextPath}/resourse/examples/carousel/carousel.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath}/resourse/assets/js/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath}/resourse/assets/js/respond.min.js"></script>
    <![endif]-->
	
    <!-- Fonts -->	
	<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,400,300,300italic' rel='stylesheet' type='text/css'>	
	<!-- Font-Awesome -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourse/assets/css/font-awesome.css" media="screen" />
    <!--[if lt IE 7]><link rel="stylesheet" type="text/css" href="assets/css/font-awesome-ie7.css" media="screen" /><![endif]-->
	
    <!-- REVOLUTION BANNER CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourse/css/fullscreen.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resourse/rs-plugin/css/settings.css" media="screen" />

    <!-- Picker -->	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resourse/assets/css/jquery-ui.css" />	
	
	
	<!-- bin/jquery.slider.min.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resourse/plugins/jslider/css/jslider.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resourse/plugins/jslider/css/jslider.round.css" type="text/css">	
	

	
    <!-- jQuery -->	
    <script src="${pageContext.request.contextPath}/resourse/assets/js/jquery.v2.0.3.js"></script>
	
	<!-- bin/jquery.slider.min.js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resourse/plugins/jslider/js/jshashtable-2.1_src.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resourse/plugins/jslider/js/jquery.numberformatter-1.2.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resourse/plugins/jslider/js/tmpl.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resourse/plugins/jslider/js/jquery.dependClass-0.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resourse/plugins/jslider/js/draggable-0.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resourse/plugins/jslider/js/jquery.slider.js"></script>
	<!-- end -->
	
	
  </head>
  <body id="top" class="thebg" >
    
	
	
	<div class="navbar-wrapper2 navbar-fixed-top">
      <div class="container">
		<div class="navbar mtnav">

			<div class="container offset-3">
			  <!-- Navigation-->
			  <div class="navbar-header">
				<button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				</button>
				<a href="aboutUI" class="navbar-brand"><img src="${pageContext.request.contextPath}/resourse/images/logo.png" alt="Travel Agency Logo" class="logo"/></a>
			  </div>
			  <div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
				  <li><a href="index.jsp">首页</a></li>
				  <li class="dropdown active"><a href="#">宾馆</a></li>
				  <li><a href="newsPageUI">新闻</a></li>			  			  
				  <li><a href="aboutUI">关于我们</a></li>			  			  
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
	
	
	
	
	<div class="container breadcrub">
	    <div>
			<a class="homebtn left" href="#"></a>
			<div class="left">
				<ul class="bcrumbs">
					<li>/</li>
					<li><a href="#">宾馆</a></li>
				</ul>				
			</div>
			<a class="backbtn right" href="#"></a>
		</div>
		<div class="clearfix"></div>
		<div class="brlines"></div>
	</div>	

	<!-- CONTENT -->
	<div class="container">	
		<div class="container pagecontainer offset-0">	

			<!-- FILTERS -->
			<div class="col-md-3 filters offset-0">
			
				
				<!-- TOP TIP -->
				<div class="filtertip">
					<div class="padding20">
						<p class="size13"><span class="size18 bold counthotel"></span> ${count }家酒店起价为</p>
						<p class="size30 bold">$<span class="countprice"></span></p>
						<p class="size13">查看这些或 <a href="#">查看全部</a></p>
					</div>
					<div class="tip-arrow"></div>
				</div>
	
				<div class="bookfilters hpadding20">
						<div class="clearfix"></div><br/>
						<form action="hotelListUI">
						<!-- HOTELS TAB -->
						<div class="hotelstab2 none">
							<span class="opensans size13">您想去哪?</span>
							<input type="text" class="form-control" placeholder="请选择目的地" name="hcity" id="hcity" value="${hcity }">
							
							<div class="clearfix pbottom15"></div>
							
							<div class="w50percent">
								<div class="wh90percent textleft">
									<span class="opensans size13">选择入住时间</span>
									<input type="text" class="form-control mySelectCalendar" id="datepicker" name="checkInData" placeholder="入住时间" value="${checkInData }"/>
								</div>
							</div>

							<div class="w50percentlast">
								<div class="wh90percent textleft right">
									<span class="opensans size13">选择退房时间</span>
									<input type="text" class="form-control mySelectCalendar" id="datepicker2" name="checkOutData" placeholder="退房时间" value="${checkOutData }"/>
								</div>
							</div>
							
							<div class="clearfix pbottom15"></div>
							
							<span class="opensans size13"><b>关键词</b></span>
							<div>
								<input type="text" class="form-control" id="keyWords" name="keyWords" size="15" placeholder="如位置\酒店名称" value="${keyWords }"/>
							</div>
							
							<div class="clearfix"></div>
							<button type="submit" class="btn-search3">查找</button>
						</div>
						</form>
						<!-- END OF HOTELS TAB -->
					</div>
						
						
				
				<div class="line2"></div>
				
				<div class="padding20title"><h3 class="opensans dark">筛选条件</h3></div>
				<div class="line2"></div>
				
				<!-- Star ratings -->	
				<button type="button" class="collapsebtn" data-toggle="collapse" data-target="#collapse1">
				  星星评分 <span class="collapsearrow"></span>
				</button>

				<div id="collapse1" class="collapse in">
					<div class="hpadding20">
						<div class="checkbox">
							<label>
							  <input type="checkbox"><img src="${pageContext.request.contextPath}/resourse/images/filter-rating-5.png" class="imgpos1" alt=""/> 5 星
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox"><img src="${pageContext.request.contextPath}/resourse/images/filter-rating-4.png" class="imgpos1" alt=""/> 4 星
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox"><img src="${pageContext.request.contextPath}/resourse/images/filter-rating-3.png" class="imgpos1" alt=""/> 3 星
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox"><img src="${pageContext.request.contextPath}/resourse/images/filter-rating-2.png" class="imgpos1" alt=""/> 2 星
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox"><img src="${pageContext.request.contextPath}/resourse/images/filter-rating-1.png" class="imgpos1" alt=""/> 1 星
							</label>
						</div>	
					</div>
					<div class="clearfix"></div>
				</div>
				<!-- End of Star ratings -->	
				
				<div class="line2"></div>
				
				<!-- Price range -->					
				<button type="button" class="collapsebtn" data-toggle="collapse" data-target="#collapse2">
				  价格区间 <span class="collapsearrow"></span>
				</button>
					
				<div id="collapse2" class="collapse in">
					<div class="padding20">
						<div class="layout-slider wh100percent">
						<span class="cstyle09"><input id="Slider1" type="slider" name="price" value="400;700" /></span>
						</div>
						<script type="text/javascript" >
						  jQuery("#Slider1").slider({ from: 100, to: 1000, step: 5, smooth: true, round: 0, dimension: "&nbsp;RMB", skin: "round" });
						</script>
					</div>
				</div>
				<!-- End of Price range -->	
				
				<div class="line2"></div>
				
				
				<!-- Hotel Preferences -->
				<button type="button" class="collapsebtn last" data-toggle="collapse" data-target="#collapse4">
				  宾馆配置 <span class="collapsearrow"></span>
				</button>	
				<div id="collapse4" class="collapse in">
					<div class="hpadding20">
						<div class="checkbox">
							<label>
							  <input type="checkbox">高速互联网 (41)
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox">空调 (52)
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox">游泳池 (55)
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox">托儿服务 (12)
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox">健身器材 (49)
							</label>
						</div>	
						<div class="checkbox">
							<label>
							  <input type="checkbox">免费早餐 (14)
							</label>
						</div>	
						<div class="checkbox">
							<label>
							  <input type="checkbox">Free parking (11)
							</label>
						</div>	
						<div class="checkbox">
							<label>
							  <input type="checkbox">免费停车场 (48)
							</label>
						</div>	
						<div class="checkbox">
							<label>
							  <input type="checkbox">允许带宠物 (16)
							</label>
						</div>	
						<div class="checkbox">
							<label>
							  <input type="checkbox">酒店餐厅 (47)
							</label>
						</div>	
						<div class="checkbox">
							<label>
							  <input type="checkbox">服务到屋 (38)
							</label>
						</div>	

					</div>
					<div class="clearfix"></div>						
				</div>	
				<!-- End of Hotel Preferences -->
				
				<div class="line2"></div>
				<div class="clearfix"></div>
				<br/>
				<br/>
				<br/>
				
				
			</div>
			<!-- END OF FILTERS -->

			<!-- LIST CONTENT-->
			<div class="rightcontent col-md-9 offset-0">
			
				<div class="hpadding20">
					<!-- Top filters -->
					<div class="topsortby">
						<div class="col-md-4 offset-0">
								
								<div class="left mt7"><b>排序方式:</b></div>
								
								<div class="right wh70percent">
									<select class="form-control mySelectBoxClass ">
									  <option selected>客户评级</option>
									  <option>5 周内</option>
									  <option>4 周内</option>
									  <option>3 周内</option>
									  <option>2 周内</option>
									  <option>1 周内</option>
									</select>
								</div>

						</div>			
						<div class="col-md-4">
							<div class="w50percent">
								<div class="wh90percent">
									<select class="form-control mySelectBoxClass ">
									  <option selected>名字</option>
									  <option>A 到 Z</option>
									  <option>Z 到 A</option>
									</select>
								</div>
							</div>
							<div class="w50percentlast">
								<div class="wh90percent">
									<select class="form-control mySelectBoxClass ">
									  <option selected>价钱</option>
									  <option>升序</option>
									  <option>降序</option>
									</select>
								</div>
							</div>					
						</div>
						<div class="col-md-4 offset-0">
							<button class="popularbtn left">最受欢迎</button>
						</div>
					</div>
					<!-- End of topfilters-->
				</div>
				<!-- End of padding -->
				
				<br/><br/>
				<div class="clearfix"></div>
				
				
				<div class="itemscontainer offset-1">
					<c:forEach var="hotelLists" items="${hotelLists }">
						<div class="offset-2">
							<div class="col-md-4 offset-0">
								<div class="listitem2">
									<a href="${hotelLists.imagepath}" data-footer="A custom footer text" data-title="A random title" data-gallery="multiimages" data-toggle="lightbox"><img src="${hotelLists.imagepath}" alt=""/></a>
									<div class="liover"></div>
									<a class="fav-icon" href="#"></a>
									<a class="book-icon" href="hotelDetailsUI?hid=${hotelLists.hid }"></a>
								</div>
							</div>
							<div class="col-md-8 offset-0">
							<div class="itemlabel3">
								
								<div class="labelright">
									<img src="${pageContext.request.contextPath}/resourse/images/filter-rating-5.png" width="60" alt=""/><br/><br/><br/>
									<img src="${pageContext.request.contextPath}/resourse/images/user-rating-5.png" width="60" alt=""/><br/>
									<span class="size11 grey">${hotelLists.reviews } 人浏览</span><br/><br/>
									<span class="green size18"><b>${hotelLists.avgprice }RMB</b></span><br/>
									<span class="size11 grey">平均每晚</span><br/><br/><br/>
									<a href="hotelDetailsUI?hid=${hotelLists.hid }"><button class="bookbtn mt1">预订</button></a>
								</div>
								
								<div class="labelleft2">			
									<b>${hotelLists.hname }</b><br/><br/>
									<p class="grey">${hotelLists.summary }</p><br/>
									<ul class="hotelpreferences">
										<li class="icohp-internet"></li>
										<li class="icohp-air"></li>
										<li class="icohp-pool"></li>
										<li class="icohp-childcare"></li>
										<li class="icohp-fitness"></li>
										<li class="icohp-breakfast"></li>
										<li class="icohp-parking"></li>
										<li class="icohp-pets"></li>
										<li class="icohp-spa"></li>
									</ul>
									
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="offset-2"><hr class="featurette-divider3"></div>
					</c:forEach>
					
				</div>	
				
				<!-- End of offset1-->		

				<div class="hpadding20">
				
					<ul class="pagination right paddingbtm20">
					  <li class="disabled"><a href="#">&laquo;</a></li>
					  <li><a href="#">1</a></li>
					  <li><a href="#">2</a></li>
					  <li><a href="#">3</a></li>
					  <li><a href="#">4</a></li>
					  <li><a href="#">5</a></li>
					  <li><a href="#">&raquo;</a></li>
					</ul>

				</div>

			</div>
			<!-- END OF LIST CONTENT-->
			
		

		</div>
		<!-- END OF container-->
		
	</div>
	<!-- END OF CONTENT -->
	
	
	<!-- FOOTER -->
	<div class="footerbgblack">
		<div class="container">		
			
			<div class="col-md-3">
				<span class="ftitleblack">交流</span>
				<div class="scont">
					<a href="#" class="social1b"><img src="${pageContext.request.contextPath}/resourse/images/icon-facebook.png" alt=""/></a>
					<a href="#" class="social2b"><img src="${pageContext.request.contextPath}/resourse/images/icon-twitter.png" alt=""/></a>
					<a href="#" class="social3b"><img src="${pageContext.request.contextPath}/resourse/images/icon-gplus.png" alt=""/></a>
					<a href="#" class="social4b"><img src="${pageContext.request.contextPath}/resourse/images/icon-youtube.png" alt=""/></a>
					<br/><br/><br/>
					<a href="#"><img src="${pageContext.request.contextPath}/resourse/images/logosmal2.png" alt="" /></a><br/>
					<span class="grey2">&copy; 2013  |  <a href="#">隐私权政策</a><br/>
					All Rights Reserved </span>
					<br/><br/>
					
				</div>
			</div>
			<!-- End of column 1-->
			
			<div class="col-md-3">
				<span class="ftitleblack">Travel Specialists</span>
				<br/><br/>
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
				<span class="ftitleblack">Travel Specialists</span>
				<br/><br/>
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
					<input type="email" class="form-control fccustom2black" id="exampleInputEmail1" placeholder="输入Email">
					<button type="submit" class="btn btn-default btncustom">Submit<img src="${pageContext.request.contextPath}/resourse/images/arrow.png" alt=""/></button>
				</div>
				<br/><br/>
				<span class="ftitleblack">用户支持</span><br/>
				<span class="pnr">1-866-599-6674</span><br/>
				<span class="grey2">office@travel.com</span>
			</div>			
			<!-- End of column 4-->			
		
			
		</div>	
	</div>
	
	<div class="footerbg3black">
		<div class="container center grey"> 
		<a href="#">首页</a> | 
		<a href="#">关于我们</a> | 
		<a href="#">预订</a> | 
		<a href="#">特价优惠</a> | 
		<a href="#">博客</a> | 
		<a href="#">联系</a>
		<a href="#top" class="gotop scroll"><img src="${pageContext.request.contextPath}/resourse/images/spacer.png" alt=""/></a>
		</div>
	</div>
	



    <!-- Javascript -->	
    <script src="${pageContext.request.contextPath}/resourse/assets/js/js-list4.js"></script>	
	
    <!-- Custom Select -->
	<script type='text/javascript' src="${pageContext.request.contextPath}/resourse/assets/js/jquery.customSelect.js"></script>
	
    <!-- Custom Select -->
	<script type='text/javascript' src="${pageContext.request.contextPath}/resourse/js/lightbox.js"></script>	
	
    <!-- JS Ease -->	
    <script src="${pageContext.request.contextPath}/resourse/assets/js/jquery.easing.js"></script>
	
    <!-- Custom functions -->
    <script src="${pageContext.request.contextPath}/resourse/assets/js/functions.js"></script>
	
    <!-- jQuery KenBurn Slider  -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resourse/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

    <!-- Counter -->	
    <script src="${pageContext.request.contextPath}/resourse/assets/js/counter.js"></script>	
	
    <!-- Nicescroll  -->	
	<script src="${pageContext.request.contextPath}/resourse/assets/js/jquery.nicescroll.min.js"></script>
	
    <!-- Picker -->	
	<script src="${pageContext.request.contextPath}/resourse/assets/js/jquery-ui.js"></script>
	
    <!-- Bootstrap -->	
    <script src="${pageContext.request.contextPath}/resourse/dist/js/bootstrap.min.js"></script>
  </body>
</html>
