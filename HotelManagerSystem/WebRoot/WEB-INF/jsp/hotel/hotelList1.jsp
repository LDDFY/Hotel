<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
  	<!--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>汉驿连锁酒店</title>
	
    <!-- Bootstrap -->
    <link href="resourse/dist/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="resourse/assets/css/custom.css" rel="stylesheet" media="screen">

	<link href="resourse/examples/carousel/carousel.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
	
    <!-- Fonts -->	
	<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,400,300,300italic' rel='stylesheet' type='text/css'>	
	<!-- Font-Awesome -->
    <link rel="stylesheet" type="text/css" href="resourse/assets/css/font-awesome.css" media="screen" />
    <!--[if lt IE 7]><link rel="stylesheet" type="text/css" href="assets/css/font-awesome-ie7.css" media="screen" /><![endif]-->
	
    <!-- REVOLUTION BANNER CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="resourse/css/fullscreen.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="resourse/rs-plugin/css/settings.css" media="screen" />

    <!-- Picker -->	
	<link rel="stylesheet" href="resourse/assets/css/jquery-ui.css" />	
	
	<!-- bin/jquery.slider.min.css -->
	<link rel="stylesheet" href="resourse/plugins/jslider/css/jslider.css" type="text/css">
	<link rel="stylesheet" href="resourse/plugins/jslider/css/jslider.round.css" type="text/css">	
	
    <!-- jQuery -->	
    <script src="resourse/assets/js/jquery.v2.0.3.js"></script>
	
	<!-- bin/jquery.slider.min.js -->
	<script type="text/javascript" src="resourse/plugins/jslider/js/jshashtable-2.1_src.js"></script>
	<script type="text/javascript" src="resourse/plugins/jslider/js/jquery.numberformatter-1.2.3.js"></script>
	<script type="text/javascript" src="resourse/plugins/jslider/js/tmpl.js"></script>
	<script type="text/javascript" src="resourse/plugins/jslider/js/jquery.dependClass-0.1.js"></script>
	<script type="text/javascript" src="resourse/plugins/jslider/js/draggable-0.1.js"></script>
	<script type="text/javascript" src="resourse/plugins/jslider/js/jquery.slider.js"></script>
	<!-- end -->
  </head>
  <body id="top" class="thebg" >
    
	<!-- Top wrapper -->
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
				<a href="index.html" class="navbar-brand"><img src="resourse/images/logo.png" alt="Travel Agency Logo" class="logo"/></a>
			  </div>
			  <div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
				  <li><a href="index.jsp">首页</a></li>
				  <li class="dropdown active"><a href="#">宾馆</a></li>
				  <li><a href="newsPageUI">新闻</a></li>			  			  
				  <li><a href="about.html">关于我们</a></li>
				  <li style="display:${user.uname==null?"":'none'}"><a href="loginUI">登录</a></li>				  			  
				  <li style="display:${user.uname==null?"none":''}"><a href="#">我的信息</a></li>	
				  <li style="display:${user.uname==null?"none":''}"><a href="loginOut">注销</a></li>	
				</ul>
			  </div>
			  <!-- /Navigation-->			  
			</div>
		
        </div>
      </div>
    </div>
	<!-- / Top wrapper -->
	
	<!-- Breadcrumbs -->
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
	<!-- / Breadcrumbs -->

	<!-- CONTENT -->
	<div class="container">
		<div class="container pagecontainer offset-0">	

			<!-- FILTERS -->
			<div class="col-md-3 filters offset-0">
			
				
				<!-- TOP TIP -->
				<div class="filtertip">
					<div class="padding20">
						<p class="size13"><span class="size18 bold counthotel">53</span> 家酒店起价为</p>
						<p class="size30 bold">$<span class="countprice"></span></p>
						<p class="size13">查看这些或 <a href="#">查看全部</a></p>
					</div>
					<div class="tip-arrow"></div>
				</div>
	
				<div class="bookfilters hpadding20">
						
						
						<div class="clearfix"></div><br/>
						
						<!-- HOTELS TAB -->
						<div class="hotelstab2 none">
							<span class="opensans size13">您想去哪?</span>
							<input type="text" class="form-control" placeholder="Greece">
							
							<div class="clearfix pbottom15"></div>
							
							<div class="w50percent">
								<div class="wh90percent textleft">
									<span class="opensans size13">选择到达时间</span>
									<input type="text" class="form-control mySelectCalendar" id="datepicker" placeholder="mm/dd/yyyy"/>
								</div>
							</div>

							<div class="w50percentlast">
								<div class="wh90percent textleft right">
									<span class="opensans size13">选择离开时间</span>
									<input type="text" class="form-control mySelectCalendar" id="datepicker2" placeholder="mm/dd/yyyy"/>
								</div>
							</div>
							
							<div class="clearfix pbottom15"></div>
							
							<div class="room1" >
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>房间 1</b></span><br/>
										
										<div class="addroom1 block"><a onclick="addroom2()" class="grey cpointer">+ 添加房间</a></div>
									</div>
								</div>

								<div class="w50percentlast">	
									<div class="wh90percent textleft right ohidden">
										<div class="w50percent">
											<div class="wh90percent textleft left">
												<span class="opensans size13">成年人</span>
												<select class="form-control mySelectBoxClass">
												  <option>1</option>
												  <option selected>2</option>
												  <option>3</option>
												  <option>4</option>
												  <option>5</option>
												</select>
											</div>
										</div>							
										<div class="w50percentlast">
											<div class="wh90percent textleft right ohidden">
											<span class="opensans size13">小孩</span>
												<select class="form-control mySelectBoxClass">
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
							
							<div class="room2 none">
								<div class="clearfix"></div><div class="line1"></div>
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>房间 2</b></span><br/>
										<div class="addroom2 block grey"><a onclick="addroom3()" class="grey cpointer">+ 添加房间</a> | <a onclick="removeroom2()" class="orange cpointer"><img src="resourse/images/delete.png" alt="delete"/></a></div>
									</div>
								</div>

								<div class="w50percentlast">	
									<div class="wh90percent textleft right">
										<div class="w50percent">
											<div class="wh90percent textleft left">
												<span class="opensans size13">成年人</span>
												<select class="form-control mySelectBoxClass">
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
											<span class="opensans size13">小孩</span>
												<select class="form-control mySelectBoxClass">
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
								<div class="clearfix"></div><div class="line1"></div>
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>房间 3</b></span><br/>
										<div class="addroom3 block grey"><a onclick="addroom3()" class="grey cpointer">+ 添加房间</a> | <a onclick="removeroom3()" class="orange cpointer"><img src="resourse/images/delete.png" alt="delete"/></a></div>
									</div>
								</div>

								<div class="w50percentlast">	
									<div class="wh90percent textleft right">
										<div class="w50percent">
											<div class="wh90percent textleft left">
												<span class="opensans size13">成年人</span>
												<select class="form-control mySelectBoxClass">
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
											<span class="opensans size13">小孩</span>
												<select class="form-control mySelectBoxClass">
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
							</div><div class="clearfix"></div>
							<button type="submit" class="btn-search3">查找</button>
						</div>
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
							  <input type="checkbox"><img src="resourse/images/filter-rating-5.png" class="imgpos1" alt=""/> 5 星
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox"><img src="resourse/images/filter-rating-4.png" class="imgpos1" alt=""/> 4 星
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox"><img src="resourse/images/filter-rating-3.png" class="imgpos1" alt=""/> 3 星
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox"><img src="resourse/images/filter-rating-2.png" class="imgpos1" alt=""/> 2 星
							</label>
						</div>
						<div class="checkbox">
							<label>
							  <input type="checkbox"><img src="resourse/images/filter-rating-1.png" class="imgpos1" alt=""/> 1 星
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
							<!-- <div class="right">
								<button class="gridbtn active">&nbsp;</button>
								<button class="listbtn" onClick="window.open('list4.html','_self');">&nbsp;</button>
								<button class="grid2btn" onClick="window.open('hotel/hotelList2.jsp','_self');">&nbsp;</button>
							</div> -->
						</div>
					</div>
					<!-- End of topfilters-->
				</div>
				<!-- End of padding -->
				
				<br/><br/>
				<div class="clearfix"></div>
				
				
				<div class="itemscontainer offset-1">


				
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item1.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">预订</button>						
							<b>郑州御玺国际酒店</b><br/>
							<p class="lightgrey"><span class="green size14"><b>36.0RMB0</b></span> 平均每晚</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item2.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>							
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">Book</button>						
							<b>河南永和铂爵国际酒店</b><br/>
							<p class="lightgrey"><span class="green size14"><b>37.00RMB</b></span> 平均每晚</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item3.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>							
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">预订</button>						
							<b>Mabely Grand Hotel</b><br/>
							<p class="lightgrey"><span class="green size14"><b>37.50RMB</b></span> 平均每晚</p>
						</div>					
					</div>

					<div class="clearfix"></div>
					<div class="offset-2"><hr class="featurette-divider3"></div>
					
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item4.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>								
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">预订</button>						
							<b>郑州南北公馆(会展中心店)</b><br/>
							<p class="lightgrey"><span class="green size14"><b>RMB41.00</b></span> 平均每晚</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item5.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>								
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">预订</button>						
							<b>郑州新华建国饭店</b><br/>
							<p class="lightgrey"><span class="green size14"><b>45.00RMB</b></span> 平均每晚</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item6.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>									
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">预订</button>						
							<b>Mabely Grand Hotel</b><br/>
							<p class="lightgrey"><span class="green size14"><b>RMB45.50</b></span> 平均每晚</p>
						</div>					
					</div>		

					<div class="clearfix"></div>
					<div class="offset-2"><hr class="featurette-divider3"></div>
					
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item7.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>									
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">Book</button>						
							<b>Mabely Grand Hotel</b><br/>
							<p class="lightgrey"><span class="green size14"><b>$45.90</b></span> avg/night</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item8.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>									
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">Book</button>						
							<b>Mabely Grand Hotel</b><br/>
							<p class="lightgrey"><span class="green size14"><b>$50.00</b></span> avg/night</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item9.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>									
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">Book</button>						
							<b>Mabely Grand Hotel</b><br/>
							<p class="lightgrey"><span class="green size14"><b>$55.00</b></span> avg/night</p>
						</div>					
					</div>
					
					<div class="clearfix"></div>
					<div class="offset-2"><hr class="featurette-divider3"></div>
					
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item10.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>									
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">Book</button>						
							<b>Mabely Grand Hotel</b><br/>
							<p class="lightgrey"><span class="green size14"><b>$55.00</b></span> avg/night</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item11.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>									
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">Book</button>						
							<b>Mabely Grand Hotel</b><br/>
							<p class="lightgrey"><span class="green size14"><b>$59.00</b></span> avg/night</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="listitem">
							<img src="resourse/images/items/item12.jpg" alt=""/>
							<div class="liover"></div>
							<a class="fav-icon" href="#"></a>
							<a class="book-icon" href="#"></a>									
						</div>
						<div class="itemlabel">
							<button class="bookbtn right mt1">Book</button>						
							<b>Mabely Grand Hotel</b><br/>
							<p class="lightgrey"><span class="green size14"><b>$61.00</b></span> avg/night</p>
						</div>					
					</div>

					<div class="clearfix"></div>
					<div class="offset-2"><hr class="featurette-divider3"></div>

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
					<a href="#" class="social1b"><img src="resourse/images/icon-facebook.png" alt=""/></a>
					<a href="#" class="social2b"><img src="resourse/images/icon-twitter.png" alt=""/></a>
					<a href="#" class="social3b"><img src="resourse/images/icon-gplus.png" alt=""/></a>
					<a href="#" class="social4b"><img src="resourse/images/icon-youtube.png" alt=""/></a>
					<br/><br/><br/>
					<a href="#"><img src="resourse/images/logosmal2.png" alt="" /></a><br/>
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
					<button type="submit" class="btn btn-default btncustom">Submit<img src="resourse/images/arrow.png" alt=""/></button>
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
		<a href="#top" class="gotop scroll"><img src="resourse/images/spacer.png" alt=""/></a>
		</div>
	</div>
	

    <!-- Counter -->	
    <script src="resourse/assets/js/js-list2.js"></script>	

    <!-- Custom Select -->
	<script type="text/javascript" src="resourse/assets/js/jquery.customSelect.js"></script>
	
    <!-- JS Ease -->	
    <script src="resourse/assets/js/jquery.easing.js"></script>
	
    <!-- Custom functions -->
    <script src="resourse/assets/js/functions.js"></script>
	
    <!-- jQuery KenBurn Slider  -->
    <script type="text/javascript" src="resourse/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

    <!-- Counter -->	
    <script src="resourse/assets/js/counter.js"></script>	
	
    <!-- Nicescroll  -->	
	<script src="resourse/assets/js/jquery.nicescroll.min.js"></script>
	
    <!-- Picker -->	
	<script src="resourse/assets/js/jquery-ui.js"></script>
	
    <!-- Bootstrap -->	
    <script src="resourse/dist/js/bootstrap.min.js"></script>
  </body>
</html>
