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
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css" media="screen" />
    <!--[if lt IE 7]><link rel="stylesheet" type="text/css" href="assets/css/font-awesome-ie7.css" media="screen" /><![endif]-->
	
	<!-- Animo css-->
	<link href="${pageContext.request.contextPath}/resourse/plugins/animo/animate+animo.css" rel="stylesheet" media="screen">

    <!-- Picker -->	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resourse/assets/css/jquery-ui.css" />	
	
    <!-- jQuery -->		
    <script src="${pageContext.request.contextPath}/resourse/assets/js/jquery.v2.0.3.js"></script>	

	
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
				<a href="index.html" class="navbar-brand"><img src="${pageContext.request.contextPath}/resourse/images/logo.png" alt="Travel Agency Logo" class="logo"/></a>
			  </div>
			  <div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
				  <li><a href="index.jsp">首页</a></li>
				  <li><a href="hotelUI">宾馆</a></li>
				  <li><a href="newsPageUIl">新闻</a></li>			  			  
				  <li><a href="aboutUI">关于我们</a></li>				  			  
				  <li style="display:${user.uname==null?"":'none'}"><a href="loginUI">登录</a></li>
				  <li class="dropdown" style="display:${user.uname==null?"none":''}">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">操作<b class="lightcaret mt-2"></b></a>
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
					<span class="size16px bold dark left">是谁要旅行? </span>
					<div class="roundstep active right">1</div>
					<div class="clearfix"></div>
					<div class="line4"></div>
					请告诉我们谁会入住酒店。必须是18岁或以上。 <br/><br/>
					
					<div class="col-md-4 textright">
						<div class="margtop15"><span class="dark">联系人姓名:</span><span class="red">*</span></div>
					</div>
					<div class="col-md-4">
						<span class="size12">姓名*</span>
						<input type="text" class="form-control " placeholder="">
					</div>
					<div class="col-md-4 textleft margtop15">
					</div>
					<div class="clearfix"></div>
					
					<br/>
					<div class="col-md-4 textright">
						<div class="margtop7"><span class="dark">电话号码:</span><span class="red">*</span></div>
					</div>
					<div class="col-md-4">
						<span class="size12">区号*</span>						
						<select class="form-control mySelectBoxClass">
						  <option selected>xxx-xxx-xxx-772</option>
						  <option>xxx-xxx-xxx-039</option>
						</select>
					</div>
					<div class="col-md-4 textleft">
						<span class="size12">首选电话号码</span>	
						<input type="text" class="form-control" placeholder="">
					</div>
					<div class="clearfix"></div>

					<br/>
					<div class="col-md-4">
					</div>
					<div class="clearfix"></div>
					
					
					<br/>
					<br/>
					<span class="size16px bold dark left">你想如何付款?</span>
					<div class="roundstep right">2</div>
					<div class="clearfix"></div>
					<div class="line4"></div>		
				
					
					
					<br/>
					<div class="col-md-4">
					</div>
					
					<ul class="nav navigation-tabs">
					  <li class="active"><a href="#card" data-toggle="tab">信用卡/借记卡</a></li>
					  <li><a href="#paypal" data-toggle="tab">支付宝</a></li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content4">
					
					  <!-- Tab 1 -->
					  <div class="tab-pane active" id="card">
					  
							<div class="col-md-4 textright">
								<div class="margtop15"><span class="dark">信用卡/借记卡号:</span><span class="red">*</span></div>
							</div>
							<div class="col-md-4">
								<input type="text" class="form-control margtop10" placeholder="">
							</div>
							<div class="col-md-4 textleft">
							</div>
							<div class="clearfix"></div>
							
							<!-- <br/>
							<div class="col-md-4 textright">
								<div class="margtop15"><span class="dark">银行卡类型:</span><span class="red">*</span></div>
							</div>
							<div class="col-md-4">
								<select class="form-control mySelectBoxClass">
								  <option selected>xxx-xxx-xxx-772</option>
								  <option>xxx-xxx-xxx-039</option>
								</select>
							</div>
							<div class="col-md-4 textleft">
							</div>
							<div class="clearfix"></div> -->
							
							<div class="col-md-4 textright">
								<div class="margtop15"><span class="dark">
								信用卡安全码 :</span><span class="red">*</span></div>
							</div>
							<div class="col-md-4">
								<input type="text" class="form-control margtop10" placeholder="">
							</div>
							<div class="col-md-4 textleft margtop15">这是什么?
							</div>
							<div class="clearfix"></div>
							
							<div class="col-md-4 textright">
								<div class="margtop15"><span class="dark">账单邮编:</span><span class="red">*</span></div>
							</div>
							<div class="col-md-4">
								<input type="text" class="form-control margtop10" placeholder="">
							</div>
							<div class="col-md-4 textleft margtop15">
							</div>
							<div class="clearfix"></div>
							
							
							<div class="col-md-4 textright">
								<div class="margtop15"><span class="dark"> 持卡人姓名:</span><span class="red">*</span></div>
							</div>
							<div class="col-md-4">
								<input type="text" class="form-control margtop10" placeholder="">
							</div>
							<div class="col-md-4 textleft margtop15">(出现在卡上面的名字)
							</div>
							<div class="clearfix"></div>
					  
					  </div>
					  <!-- End of Tab 1 -->					  
					  
					  <!-- Tab 2 -->					  
					  <div class="tab-pane" id="paypal">
						
						<div class="alert alert-warning fade in">
							<button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
							<strong>重要提醒:</strong> 您将被重定向到支付宝网站安全地完成你的付款。
						</div>

						<button type="submit" class="btn-search5">进入支付宝</button>

					  </div>
					  <!-- End of Tab 2 -->	
					</div>

					
					<br/>
					<br/>
					<span class="size16px bold dark left">我们应该把确认发送到哪?</span>
					<div class="roundstep right">3</div>
					<div class="clearfix"></div>
					<div class="line4"></div>		
					请输入电子邮件地址,以保证能收到你的确认信息。<br/> 
					
					
					<div class="col-md-4 textright">
						<div class="mt15"><span class="dark">Email 地址:</span><span class="red">*</span></div>
					</div>
					<div class="col-md-4">
						<input type="text" class="form-control margtop10" placeholder="">
					</div>
					<div class="col-md-4 textleft">
					</div>
					<div class="clearfix"></div>
					
					<br/>
					<br/>
					<span class="size16px bold dark left">回顾和预定</span>
					<div class="roundstep right">4</div>
					<div class="clearfix"></div>
					<div class="line4"></div>		
					
					<div class="alert alert-info">
					关于您的预订的重要信息:<br/>
					<p class="size12">• 此项保留不可更改，不可更改或取消。</p>
					</div>		
					通过选择来完成这个预订，我承认我已经阅读并接受了 <a href="#" class="clblue">规则</a> <a href="#" class="clblue">限制条件</a> , 和 <a href="#" class="clblue">隐私政策</a>.	<br/>		
					
					<button type="submit" class="cyanbtn margtop20">确认预定</button>	
					
			
				</div>
		
			</div>
			<!-- END OF LEFT CONTENT -->			
			
			<!-- RIGHT CONTENT -->
			<div class="col-md-4" >
				
				<div class="pagecontainer2 paymentbox grey">
					<div class="padding30">
						<img src="${pageContext.request.contextPath}/resourse/images/thumb.png" class="left margright20" alt=""/>
						<span class="opensans size18 dark bold">郑州御玺国际酒店</span>
						<span class="opensans size13 grey">郑州, 河南</span><br/>
						<img src="${pageContext.request.contextPath}/resourse/images/bigrating-5.png" alt=""/>
					</div>
					<div class="line3"></div>
					
					<div class="hpadding30 margtop30">
						<table class="table table-bordered margbottom20">
							<tr>
								<td>旅客推荐</td>
								<td class="center green bold">97%</td>
							</tr>
							<tr>
								<td>客户评级</td>
								<td class="center green bold">4.5</td>
							</tr>
							<tr>
								<td colspan=2><span class="dark">房间 1</span>: 标准双人间</td>
							</tr>
							<tr>
								<td colspan=2><span class="dark">5 晚</span>: 9/10/2013 - 9/14/2013</td>
							</tr>
							<tr>
								<td>
									<span class="dark">房间 1</span>: 2 成年人<br/>
									5 晚
									<!-- Collapse 1 -->	
									<button type="button" class="collapsebtn3 collapsed mt-5" data-toggle="collapse" data-target="#collapse1"></button>
									<div id="collapse1" class="collapse">
										<div class="left size12 lblue">
											Thu Nov 14<br/>
											Fri Nov 15
										</div>
										<div class="right size12 lblue">
											$15.92<br/>
											$20.00
										</div><div class="clearfix"></div>	
									</div>
									<!-- End of collapse 1 -->
									<div class="clearfix"></div>	
									
									
									每晚小费
									
									<!-- Collapse 1 -->	
									<button type="button" class="collapsebtn3 collapsed mt-5" data-toggle="collapse" data-target="#collapse2"></button>
									<div id="collapse2" class="collapse">
										<div class="left size12 lred">
											Thu Nov 14<br/>
											Fri Nov 15
										</div>
										<div class="right size12 lred">
											$1.51<br/>
											$1.00
										</div><div class="clearfix"></div>	
									</div>
									<!-- End of collapse 1 -->
									<div class="clearfix"></div>	
									
								</td>
								<td class="center">
									avg./night<br/>
									$35.92<br/>
									$2.51<br/>
								</td>
							</tr>
						</table>
					</div>	
					<div class="line3"></div>
					<div class="padding30">					
						<span class="left size14 dark">共计:</span>
						<span class="right lred2 bold size18">192.15RMB</span>
						<div class="clearfix"></div>
					</div>


				</div><br/>
				
				<div class="pagecontainer2 needassistancebox">
					<div class="cpadding1">
						<span class="icon-help"></span>
						<h3 class="opensans">需要帮助?</h3>
						<p class="size14 grey">我们的团队是24 / 7在您的服务，以帮助您与您的预订问题或回答任何相关的问题</p>
						<p class="opensans size30 lblue xslim">1-866-599-6674</p>
					</div>
				</div><br/>
				
			</div>
			<!-- END OF RIGHT CONTENT -->
			
			
		</div>
		
		
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
	
	
	<!-- Javascript  -->
	<script src="${pageContext.request.contextPath}/resourse/assets/js/js-payment.js"></script>
	
    <!-- Nicescroll  -->	
	<script src="${pageContext.request.contextPath}/resourse/assets/js/jquery.nicescroll.min.js"></script>
	
    <!-- Custom functions -->
    <script src="${pageContext.request.contextPath}/resourse/assets/js/functions.js"></script>
	
    <!-- Custom Select -->
	<script type='text/javascript' src='${pageContext.request.contextPath}/resourse/assets/js/jquery.customSelect.js'></script>
	
	<!-- Load Animo -->
	<script src="${pageContext.request.contextPath}/resourse/plugins/animo/animo.js"></script>

    <!-- Picker -->	
	<script src="${pageContext.request.contextPath}/resourse/assets/js/jquery-ui.js"></script>	

    <!-- Picker -->	
    <script src="${pageContext.request.contextPath}/resourse/assets/js/jquery.easing.js"></script>	
	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.request.contextPath}/resourse/dist/js/bootstrap.min.js"></script>
  </body>
</html>
