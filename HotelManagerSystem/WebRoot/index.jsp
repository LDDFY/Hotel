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
<base href="<%=basePath%>">

<title>index</title>

 <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	
    <!-- Bootstrap -->
    <link href="resourse/dist/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="resourse/assets/css/custom.css" rel="stylesheet" media="screen">

    <!-- Carousel -->
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

    <!-- Picker UI-->	
	<link rel="stylesheet" href="resourse/assets/css/jquery-ui.css" />		
	
    <!-- jQuery -->	
    <script src="resourse/assets/js/jquery.v2.0.3.js"></script>

	
	
  </head>
  <body id="top">
    
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
				  <li class="dropdown active">
					<a data-toggle="dropdown" class="dropdown-toggle" href="index.html">Home <span class="badge indent0">1</span><b class="lightcaret mt-2"></b></a>
					<ul class="dropdown-menu posright-0">
					  <li>
							<div class="row dropwidth01">
								<ul class="droplist col-md-4">
								  <li class="dropdown-header">Homepages</li>	
								  <li><a href="index.html">Home 1 minimal</a></li>
								  <li><a href="index2.html">Home 2 offers</a></li>
								  <li><a href="index3.html">Home 3 full search</a></li>
								  <li><a href="index4.html">Home 4 presentation</a></li>
								  <li><a href="index5.html">Home 5 footer2</a></li>
								  <li><a href="index6.html">Home 6 full</a></li>
								  <li><a href="index7.html">Home 7 </a></li><li><a href="http://www.weidea.net">Home 8 </a></li>
								  <li><a href="z-new-homepage.html">New Homepage</a> <span class="green">new</span></li>									  
								</ul>
								<ul class="droplist col-md-4">
								  <li class="dropdown-header">Intro pages</li>
								  <li><a href="intro.html">Intro 1</a></li>
								  <li><a href="intro2.html">Intro 2 - slides</a> <span class="glyphicon glyphicon-star lblue"></span></li>
								  <li><a href="intro3.html">Intro 3 - slides2</a> <span class="glyphicon glyphicon-star lblue"></span></li>
								</ul>
								<ul class="droplist col-md-4">
								  <li class="dropdown-header">Colors</li>
								  <li><a href="../blue/index.html">Blue</a></li>
								  <li><a href="../green/index.html">Green</a></li>
								  <li><a href="../orange/index.html">Orange</a></li>
								  <li><a href="../cyan/index.html">Cyan</a></li>
								  <li></li>
								  <li class="inactive size10 lgrey caps"><span class="glyphicon glyphicon-star "></span> Popular pages</li>								  
								</ul>
							</div>
					  </li>
					</ul>
				  </li>
				  <li class="dropdown">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">Pages <span class="badge indent0">14</span><b class="lightcaret mt-2"></b></a>
					<ul class="dropdown-menu posright-0">
					  <li>
							<div class="row dropwidth01">
								<ul class="droplist col-md-4">
								  <li class="dropdown-header">Inner pages</li>	
								  <li><a href="list.html">List page 1</a></li>
								  <li><a href="list2.html">List page 2</a></li>
								  <li><a href="list3.html">List page 3</a></li>
								  <li><a href="list4.html">List page 4</a></li>
								  <li><a href="details.html">Details page</a></li>
								  <li><a href="payment.html">Payment</a></li>
								  <li><a href="blog.html">Blog page</a></li>
								  <li><a href="blog-details.html">Blog details</a></li>	
								  <li><a href="about.html">About</a></li>								  
								  <li><a href="contact.html">Contact</a></li>
								  <li><a href="profile.html">User Profile</a>  <span class="glyphicon glyphicon-star lblue"></span></li>
								  <li><a href="login.html">Login</a></li>
								  <li><a href="dashboard/index.html">Dashboard</a>  <span class="glyphicon glyphicon-star lblue"></span></li>								  

						  
								</ul>	
								<ul class="droplist col-md-4">
								  <li class="dropdown-header">Update - <span class="green">14 New Pages</span></li>	
								  <li><a href="z-new-homepage.html">New Homepage</a>  <span class="glyphicon glyphicon-star lblue"></span></li>
								  <li><a href="z-flights-list.html">Flights list</a>  <span class="glyphicon glyphicon-star lblue"></span></li>
								  <li><a href="z-flights-payment.html">Flights payment</a></li>
								  <li><a href="z-cruise-list.html">Cruise list</a></li>
								  <li><a href="z-cruise-payment.html">Cruise payment</a></li>
								  <li><a href="z-rentacar-list.html">Rent a car list</a></li>
								  <li><a href="z-rentacar-details.html">Rent a car details</a></li>
								  <li><a href="z-rentacar-payment.html">Rent a car payment</a></li>
								  <li><a href="z-transfers-list.html">Transfers list</a></li>
								  <li><a href="z-transfers-payment.html">Transfers payment</a></li>
								  <li><a href="z-activities-list.html">Activities list</a></li>
								  <li><a href="z-activities-details.html">Activities details</a></li>
								  <li><a href="z-activities-payment.html">Activities payment</a></li>
								  <li><a href="z-wearesearching.html">Loading page</a></li>
								</ul>								
								<ul class="droplist col-md-4">
								  <li class="dropdown-header">Bootstrap Shortcodes</li>	
								  <li ><a href="http://getbootstrap.com/components/" target="_blank">Components</a></li>								  
								  <li ><a href="http://getbootstrap.com/javascript/" target="_blank">Javascript</a></li>								  
								  <li ><a href="http://getbootstrap.com/css/" target="_blank">Css</a></li>	
								  <li class="dropdown-header">Comming next</li>	
								  <li class="inactive"><a href="#">More Home pages</a></li>
								  <li class="inactive"><a href="#">Elements</a></li>
								  <li class="inactive"><a href="#">...</a></li>
								  <li></li>								  
								  <li class="inactive size10 lgrey caps"><span class="glyphicon glyphicon-star "></span> Popular pages</li>
								</ul>									
							</div>
					  </li>
					</ul>
				  </li>
				  <li><a href="#">Hotels</a></li>
				  <li><a href="#">Flights</a></li>
				  <li><a href="#">Vacations</a></li>
				  <li><a href="#">Cars</a></li>			  
				  <li><a href="#">Cruises</a></li>			  
				  <li><a href="#">Last minute</a></li>			  
				  <li><a href="#">Early booking</a></li>			  
				  <li class="dropdown">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">Deals<b class="lightcaret mt-2"></b></a>
					<ul class="dropdown-menu">
					  <li class="dropdown-header">Aligned Right Dropdown</li>	
					  <li><a href="#">Sample Link 1</a></li>
					  <li><a href="#">Sample Link 2</a></li>
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
					<li data-transition="fade" data-slotamount="1" data-masterspeed="300"> 										
						
						<img src="resourse/images/slider/paris.jpg" alt=""/>
						<div class="tp-caption scrolleffect sft"
							 data-x="center"
							 data-y="120"
							 data-speed="1000"
							 data-start="800"
							 data-easing="easeOutExpo"  >
							 <div class="sboxpurple textcenter">
								<span class="lato size28 slim caps white">France</span><br/><br/><br/>
								<span class="lato size100 slim caps white">Paris</span><br/>
								<span class="lato size20 normal caps white">from</span><br/><br/>
								<span class="lato size48 slim uppercase yellow">$1500</span><br/>
							 </div>
						</div>	
					</li>	
					
					<!-- FADE -->
					<li data-transition="fade" data-slotamount="1" data-masterspeed="300"> 										
						<img src="resourse/images/slider/rome.jpg" alt=""/>
						<div class="tp-caption scrolleffect sft"
							 data-x="center"
							 data-y="120"
							 data-speed="1000"
							 data-start="800"
							 data-easing="easeOutExpo">
							 <div class="sboxpurple textcenter">
								<span class="lato size28 slim caps white">Italy</span><br/><br/><br/>
								<span class="lato size100 slim caps white">Rome</span><br/>
								<span class="lato size20 normal caps white">from</span><br/><br/>
								<span class="lato size48 slim uppercase yellow">$1500</span><br/>
							 </div>
						</div>	
					</li>	
				
					<!-- FADE -->
					<li data-transition="fade" data-slotamount="1" data-masterspeed="300"> 										
						<img src="resourse/images/slider/santorini.jpg" alt=""/>
						<div class="tp-caption scrolleffect sft"
							 data-x="center"
							 data-y="120"
							 data-speed="1000"
							 data-start="800"
							 data-easing="easeOutExpo">
							 <div class="sboxpurple textcenter">
								<span class="lato size28 slim caps white">Greece</span><br/><br/><br/>
								<span class="lato size100 slim caps white">Santorini</span><br/>
								<span class="lato size20 normal caps white">from</span><br/><br/>
								<span class="lato size48 slim uppercase yellow">$1500</span><br/>
							 </div>
						</div>	
					</li>


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

						onHoverStop:"on",						// Stop Banner Timet at Hover on Slide on/off

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
	<div class="wrap cstyle03">
		
		<div class="container mt-130 z-index100">		
		  <div class="row">
			<div class="col-md-12">
				<div class="bs-example bs-example-tabs cstyle04">
				
					<ul class="nav nav-tabs" id="myTab">
						<li onclick="mySelectUpdate()" class="active"><a data-toggle="tab" href="#air2"><span class="flight"></span><span class="hidetext">Air</span>&nbsp;</a></li>
						<li onclick="mySelectUpdate()" class=""><a data-toggle="tab" href="#hotel2"><span class="hotel"></span><span class="hidetext">Hotel</span>&nbsp;</a></li>
						<li onclick="mySelectUpdate()" class=""><a data-toggle="tab" href="#car2"><span class="car"></span><span class="hidetext">Car</span>&nbsp;</a></li>
						<li onclick="mySelectUpdate()" class=""><a data-toggle="tab" href="#vacations2"><span class="suitcase"></span><span class="hidetext">Vacations</span>&nbsp;</a></li>
						<li onclick="mySelectUpdate()" class=""><a data-toggle="tab" href="#flighthotel2"><span class="flighthotel"></span><span class="hidetext">Flight + Hotel</span>&nbsp;</a></li>
						<li onclick="mySelectUpdate()" class=""><a data-toggle="tab" href="#cruise2"><span class="cruise"></span><span class="hidetext">Cruise</span>&nbsp;</a></li>
						<li onclick="mySelectUpdate()" class=""><a data-toggle="tab" href="#hotelcar2"><span class="hotelcar"></span><span class="hidetext">Hotel + Car</span>&nbsp;</a></li>
						<li onclick="mySelectUpdate()" class=""><a data-toggle="tab" href="#flighthotelcar2"><span class="flighthotelcar"></span><span class="hidetext">Flight + Hotel + Car</span>&nbsp;</a></li>
					</ul>
					
					<div class="tab-content2" id="myTabContent">
						<div id="air2" class="tab-pane fade active in">
							
							<div class="col-md-4">
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Flying from</b></span>
										<input type="text" class="form-control" placeholder="City or airport">
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>To</b></span>
										<input type="text" class="form-control" placeholder="City or airport">
									</div>
								</div>
							</div>
							
							<div class="col-md-4">
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Departing</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker3" placeholder="mm/dd/yyyy"/>
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>Returning</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker4" placeholder="mm/dd/yyyy"/>
									</div>
								</div>
							</div>
							
							<div class="col-md-4">
								<div class="room1" >
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>Adult</b></span>
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
										<div class="wh90percent textleft right">
											<span class="opensans size13"><b>Child</b></span>
											<select class="form-control mySelectBoxClass">
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
						<!--End of 1st tab -->
						
						<div id="hotel2" class="tab-pane fade">

							<div class="col-md-4 pt-6">
								<span class="opensans size18" >Where do you want to go?</span>
								<input type="text" class="form-control" placeholder="Greece">
							</div>

							<div class="col-md-4">
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Check in date</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker" placeholder="mm/dd/yyyy"/>
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>Check in date</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker2" placeholder="mm/dd/yyyy"/>
									</div>
								</div>
							</div>
							
							<div class="col-md-4">
								<div class="room1" >
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>ROOM 1</b></span><br/>
											
											<div class="addroom1 block"><a href="#room2" onclick="addroom2()" class="grey">+ Add room</a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<div class="wh90percent textleft right">
												<span class="opensans size13"><b>Child</b></span>
													<select class="form-control mySelectBoxClass">
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
									<div class="clearfix"></div><div class="line1"></div>
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>ROOM 2</b></span><br/>
											<div class="addroom2 block grey"><a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a href="#" onclick="removeroom2()" class="orange"><img src="resourse/images/delete.png" alt="delete"/></a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<span class="opensans size13"><b>Child</b></span>
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
											<span class="opensans size13"><b>ROOM 3</b></span><br/>
											<div class="addroom3 block grey"><a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a href="#" onclick="removeroom3()" class="orange"><img src="resourse/images/delete.png" alt="delete"/></a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<span class="opensans size13"><b>Child</b></span>
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
							</div>

						
						</div>
						<!--End of 2nd tab -->
						
						<div id="car2" class="tab-pane fade">

							<div class="col-md-4">
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Picking up</b></span>
										<input type="text" class="form-control" placeholder="Airport, address">
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>Dropping off</b></span>
										<input type="text" class="form-control" placeholder="Airport, address">
									</div>
								</div>
							</div>
							
							<div class="col-md-4">							
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Pick up date</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker5" placeholder="mm/dd/yyyy"/>
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>Hour</b></span>
										<select class="form-control mySelectBoxClass">
										  <option>12:00 AM</option>
										  <option>12:30 AM</option>
										  <option>01:00 AM</option>
										  <option>01:30 AM</option>
										  <option>02:00 AM</option>
										  <option>02:30 AM</option>
										  <option>03:00 AM</option>
										  <option>03:30 AM</option>
										  <option>04:00 AM</option>
										  <option>04:30 AM</option>
										  <option>05:00 AM</option>
										  <option>05:30 AM</option>
										  <option>06:00 AM</option>
										  <option>06:30 AM</option>
										  <option>07:00 AM</option>
										  <option>07:30 AM</option>
										  <option>08:00 AM</option>
										  <option>08:30 AM</option>
										  <option>09:00 AM</option>
										  <option>09:30 AM</option>
										  <option>10:00 AM</option>
										  <option selected>10:30 AM</option>
										  <option>11:00 AM</option>
										  <option>11:30 AM</option>
										  <option>12:00 PM</option>
										  <option>12:30 PM</option>								  
										  <option>01:00 PM</option>
										  <option>01:30 PM</option>
										  <option>02:00 PM</option>
										  <option>02:30 PM</option>
										  <option>03:00 PM</option>
										  <option>03:30 PM</option>
										  <option>04:00 PM</option>
										  <option>04:30 PM</option>
										  <option>05:00 PM</option>
										  <option>05:30 PM</option>
										  <option>06:00 PM</option>
										  <option>06:30 PM</option>
										  <option>07:00 PM</option>
										  <option>07:30 PM</option>
										  <option>08:00 PM</option>
										  <option>08:30 PM</option>
										  <option>09:00 PM</option>
										  <option>09:30 PM</option>
										  <option>10:00 PM</option>
										  <option>10:30 PM</option>
										  <option>11:00 PM</option>
										  <option>11:30 PM</option>								  
										</select>
									</div>
								</div>
							</div>
							
							<div class="col-md-4">
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>Drop off date</b></span>
											<input type="text" class="form-control mySelectCalendar" id="datepicker6" placeholder="mm/dd/yyyy"/>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<span class="opensans size13"><b>Hour</b></span>
											<select class="form-control mySelectBoxClass">
											  <option>12:00 AM</option>
											  <option>12:30 AM</option>
											  <option>01:00 AM</option>
											  <option>01:30 AM</option>
											  <option>02:00 AM</option>
											  <option>02:30 AM</option>
											  <option>03:00 AM</option>
											  <option>03:30 AM</option>
											  <option>04:00 AM</option>
											  <option>04:30 AM</option>
											  <option>05:00 AM</option>
											  <option>05:30 AM</option>
											  <option>06:00 AM</option>
											  <option>06:30 AM</option>
											  <option>07:00 AM</option>
											  <option>07:30 AM</option>
											  <option>08:00 AM</option>
											  <option>08:30 AM</option>
											  <option>09:00 AM</option>
											  <option>09:30 AM</option>
											  <option>10:00 AM</option>
											  <option selected>10:30 AM</option>
											  <option>11:00 AM</option>
											  <option>11:30 AM</option>
											  <option>12:00 PM</option>
											  <option>12:30 PM</option>								  
											  <option>01:00 PM</option>
											  <option>01:30 PM</option>
											  <option>02:00 PM</option>
											  <option>02:30 PM</option>
											  <option>03:00 PM</option>
											  <option>03:30 PM</option>
											  <option>04:00 PM</option>
											  <option>04:30 PM</option>
											  <option>05:00 PM</option>
											  <option>05:30 PM</option>
											  <option>06:00 PM</option>
											  <option>06:30 PM</option>
											  <option>07:00 PM</option>
											  <option>07:30 PM</option>
											  <option>08:00 PM</option>
											  <option>08:30 PM</option>
											  <option>09:00 PM</option>
											  <option>09:30 PM</option>
											  <option>10:00 PM</option>
											  <option>10:30 PM</option>
											  <option>11:00 PM</option>
											  <option>11:30 PM</option>		
											</select>
										</div>
									</div>
							</div>
						
						</div>
						<!--End of 3rd tab -->
						
						<div id="vacations2" class="tab-pane fade">

							<div class="col-md-4">
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Flying from</b></span>
										<input type="text" class="form-control" placeholder="City or airport">
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>To</b></span>
										<input type="text" class="form-control" placeholder="City or airport">
									</div>
								</div>
							</div>
							
							<div class="col-md-4">
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Check in date</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker7" placeholder="mm/dd/yyyy"/>
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>Check in date</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker8" placeholder="mm/dd/yyyy"/>
									</div>
								</div>
							</div>
							
							<div class="col-md-4">
								<div class="room1" >
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>ROOM 1</b></span><br/>
											
											<div class="addroom1 block"><a href="#room2" onclick="addroom2()" class="grey">+ Add room</a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<div class="wh90percent textleft right">
												<span class="opensans size13"><b>Child</b></span>
													<select class="form-control mySelectBoxClass">
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
									<div class="clearfix"></div><div class="line1"></div>
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>ROOM 2</b></span><br/>
											<div class="addroom2 block grey"><a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a href="#" onclick="removeroom2()" class="orange"><img src="resourse/images/delete.png" alt="delete"/></a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<span class="opensans size13"><b>Child</b></span>
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
											<span class="opensans size13"><b>ROOM 3</b></span><br/>
											<div class="addroom3 block grey"><a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a href="#" onclick="removeroom3()" class="orange"><img src="resourse/images/delete.png" alt="delete"/></a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<span class="opensans size13"><b>Child</b></span>
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
							</div>
						
						</div>
						
						<div id="flighthotel2" class="tab-pane fade">
							<div class="col-md-4">
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Flying from</b></span>
										<input type="text" class="form-control" placeholder="City or airport">
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>To</b></span>
										<input type="text" class="form-control" placeholder="City or airport">
									</div>
								</div>
							</div>
							
							<div class="col-md-4">
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Departing</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker10" placeholder="mm/dd/yyyy"/>
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>Returning</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker9" placeholder="mm/dd/yyyy"/>
									</div>
								</div>
							</div>
							
							<div class="col-md-4">
								<div class="room1" >
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>ROOM 1</b></span><br/>
											
											<div class="addroom1 block"><a href="#room2" onclick="addroom2()" class="grey">+ Add room</a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<div class="wh90percent textleft right">
												<span class="opensans size13"><b>Child</b></span>
													<select class="form-control mySelectBoxClass">
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
									<div class="clearfix"></div><div class="line1"></div>
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>ROOM 2</b></span><br/>
											<div class="addroom2 block grey"><a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a href="#" onclick="removeroom2()" class="orange"><img src="resourse/images/delete.png" alt="delete"/></a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<span class="opensans size13"><b>Child</b></span>
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
											<span class="opensans size13"><b>ROOM 3</b></span><br/>
											<div class="addroom3 block grey"><a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a href="#" onclick="removeroom3()" class="orange"><img src="resourse/images/delete.png" alt="delete"/></a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<span class="opensans size13"><b>Child</b></span>
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
							</div>
						</div>
						<!-- End of Flight + Hotel -->
						
						<div id="cruise2" class="tab-pane fade">
							<div class="col-md-6">
								<span class="opensans size13"><b>Going to</b></span>
								<select class="form-control mySelectBoxClass">
								  <option selected>Show all</option>
								  <optgroup label="Most Popular">
									  <option>Caribbean</option>
									  <option>Bahamas</option>
									  <option>Mexico</option>
									  <option>Alaska</option>
									  <option>Europe</option>
									  <option>Bermuda</option>
									  <option>Hawaii</option>
								  </optgroup>
								  <optgroup label="Other Destinations">
									  <option>Africa</option>
									  <option>Arctic/Antartctic</option>
									  <option>Asia</option>
									  <option>Australia/New Zealand</option>
									  <option>Central America</option>
									  <option>Cruise to Nowhere</option>
									  <option>Galapagos</option>
									  <option>Greenland/Iceland</option>
									  <option>Middle East</option>
									  <option>Pacific Coastal</option>
									  <option>Panama Canal</option>
									  <option>South Africa</option>
									  <option>South Pacific</option>
									  <option>Tahiti</option>
									  <option>Transatlantic</option>
									  <option>World Cruises</option>
								  </optgroup>
								</select>

							</div>
							<div class="col-md-6">
								<span class="opensans size13"><b>Departure</b></span>
								<select class="form-control mySelectBoxClass">
								  <option selected>Show all</option>
								  <option>October 2013</option>
								  <option>November 2013</option>
								  <option>December 2013</option>
								  <option>January 2014</option>
								  <option>February 2014</option>
								  <option>March 2014</option>
								  <option>April 2014</option>
								  <option>May 2014</option>
								  <option>June 2014</option>
								  <option>July 2014</option>
								  <option>August 2014</option>
								  <option>September 2014</option>
								  <option>October 2014</option>
								  <option>November 2014</option>
								  <option>December 2014</option>
								</select>
							</div>		
						</div>
						
						<div id="hotelcar2" class="tab-pane fade">
							<div class="col-md-4 pt-6">
								<span class="opensans size18" >Where do you want to go?</span>
								<input type="text" class="form-control" placeholder="Greece">
							</div>

							<div class="col-md-4">
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Check in date</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker11" placeholder="mm/dd/yyyy"/>
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>Check in date</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker12" placeholder="mm/dd/yyyy"/>
									</div>
								</div>
							</div>
							
							<div class="col-md-4">
								<div class="room1" >
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>ROOM 1</b></span><br/>
											
											<div class="addroom1 block"><a href="#room2" onclick="addroom2()" class="grey">+ Add room</a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<div class="wh90percent textleft right">
												<span class="opensans size13"><b>Child</b></span>
													<select class="form-control mySelectBoxClass">
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
									<div class="clearfix"></div><div class="line1"></div>
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>ROOM 2</b></span><br/>
											<div class="addroom2 block grey"><a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a href="#" onclick="removeroom2()" class="orange"><img src="resourse/images/delete.png" alt="delete"/></a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<span class="opensans size13"><b>Child</b></span>
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
											<span class="opensans size13"><b>ROOM 3</b></span><br/>
											<div class="addroom3 block grey"><a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a href="#" onclick="removeroom3()" class="orange"><img src="resourse/images/delete.png" alt="delete"/></a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<span class="opensans size13"><b>Child</b></span>
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
							</div>
							<div class="clearfix"></div>
							<div class="center size10 ca02 ">! An economy car will be added to your search. (You may change your car options later.) </div>
						</div>
						<!--End of Flight + Car -->
						
						<div id="flighthotelcar2" class="tab-pane fade">
							<div class="col-md-4">
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Flying from</b></span>
										<input type="text" class="form-control" placeholder="City or airport">
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>To</b></span>
										<input type="text" class="form-control" placeholder="City or airport">
									</div>
								</div>
							</div>
							
							<div class="col-md-4">
								<div class="w50percent">
									<div class="wh90percent textleft">
										<span class="opensans size13"><b>Departing</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker13" placeholder="mm/dd/yyyy"/>
									</div>
								</div>

								<div class="w50percentlast">
									<div class="wh90percent textleft right">
										<span class="opensans size13"><b>Returning</b></span>
										<input type="text" class="form-control mySelectCalendar" id="datepicker14" placeholder="mm/dd/yyyy"/>
									</div>
								</div>
							</div>
							
							<div class="col-md-4">
								<div class="room1" >
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>ROOM 1</b></span><br/>
											
											<div class="addroom1 block"><a href="#room2" onclick="addroom2()" class="grey">+ Add room</a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<div class="wh90percent textleft right">
												<span class="opensans size13"><b>Child</b></span>
													<select class="form-control mySelectBoxClass">
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
									<div class="clearfix"></div><div class="line1"></div>
									<div class="w50percent">
										<div class="wh90percent textleft">
											<span class="opensans size13"><b>ROOM 2</b></span><br/>
											<div class="addroom2 block grey"><a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a href="#" onclick="removeroom2()" class="orange"><img src="resourse/images/delete.png" alt="delete"/></a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<span class="opensans size13"><b>Child</b></span>
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
											<span class="opensans size13"><b>ROOM 3</b></span><br/>
											<div class="addroom3 block grey"><a href="#" onclick="addroom3()" class="grey">+ Add room</a> | <a href="#" onclick="removeroom3()" class="orange"><img src="resourse/images/delete.png" alt="delete"/></a></div>
										</div>
									</div>

									<div class="w50percentlast">	
										<div class="wh90percent textleft right">
											<div class="w50percent">
												<div class="wh90percent textleft left">
													<span class="opensans size13"><b>Adult</b></span>
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
												<span class="opensans size13"><b>Child</b></span>
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
							</div>
							<div class="clearfix"></div>
							<div class="center size10 ca03">! An economy car will be added to your search. (You may change your car options later.)</div>							
						</div>						
						<!--End of Flight + Hotel + Car -->
					</div>
					
					<div class="searchbg2">
						<div class="left ca01"><a href="#">Advanced +</a></div>
						<form action="list4.html">
							<button type="submit" class="btn-search right mr30">Search</button>
						</form>
					</div>
						
				</div>
			</div>
			
		  </div>
		</div>
		

		<div class="lastminute2 lcfix">
			<div class="container lmc">	
				<img src="resourse/images/rating-4.png" alt=""/><br/>
				LAST MINUTE: <b>Barcelona</b> - 2 nights - Flight+4* Hotel, Dep 27h Aug from $209/person<br/>
				<form action="list4.html">
					<button class="btn iosbtn" type="submit">Read more</button>
				</form>
			</div>
		</div>
		
		
		<!-- FOOTER -->
		<div class="footerbg sfix2">
			<div class="container">		
				<footer>
					<div class="footer">
						<a href="#" class="social1"><img src="resourse/images/icon-facebook.png" alt=""/></a>
						<a href="#" class="social2"><img src="resourse/images/icon-twitter.png" alt=""/></a>
						<a href="#" class="social3"><img src="resourse/images/icon-gplus.png" alt=""/></a>
						<a href="#" class="social4"><img src="resourse/images/icon-youtube.png" alt=""/></a>
						<br/><br/>
						Copyright &copy; 2013 <a href="#">Travel Agency</a> All rights reserved. <a href="http://titanicthemes.com">TitanicThemes.com</a>
						<br/><br/>
						<a href="#top" id="gotop2" class="gotop"><img src="resourse/images/spacer.png" alt=""/></a>
					</div>
				</footer>
			</div>	
		</div>
		
		

		
		
	</div>
    <!-- /WRAP -->
	
	
	
    <!-- Javascript -->
	
    <!-- This page JS -->
	<script src="resourse/assets/js/js-index3.js"></script>	
	
    <!-- Custom functions -->
    <script src="resourse/assets/js/functions.js"></script>
	
    <!-- Picker UI-->	
	<script src="resourse/assets/js/jquery-ui.js"></script>		
	
	<!-- Easing -->
    <script src="resourse/assets/js/jquery.easing.js"></script>
	
    <!-- jQuery KenBurn Slider  -->
    <script type="text/javascript" src="resourse/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
	
   <!-- Nicescroll  -->	
	<script src="resourse/assets/js/jquery.nicescroll.min.js"></script>
	
    <!-- CarouFredSel -->
    <script src="resourse/assets/js/jquery.carouFredSel-6.2.1-packed.js"></script>
    <script src="resourse/assets/js/helper-plugins/jquery.touchSwipe.min.js"></script>
	<script type="text/javascript" src="resourse/assets/js/helper-plugins/jquery.mousewheel.min.js"></script>
	<script type="text/javascript" src="resourse/assets/js/helper-plugins/jquery.transit.min.js"></script>
	<script type="text/javascript" src="resourse/assets/js/helper-plugins/jquery.ba-throttle-debounce.min.js"></script>
	
    <!-- Custom Select -->
	<script type='text/javascript' src='resourse/assets/js/jquery.customSelect.js'></script>	

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resourse/dist/js/bootstrap.min.js"></script>
  </body>
</html>
