<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>汉驿连锁酒店</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap -->
<link href="resourse/dist/css/bootstrap.css" rel="stylesheet"
	media="screen">
<link href="resourse/assets/css/custom.css" rel="stylesheet"
	media="screen">


<link href="resourse/css/carousel.css" rel="stylesheet">

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

<!-- Animo css-->
<link href="resourse/plugins/animo/animate+animo.css" rel="stylesheet"
	media="screen">

<!-- Picker -->
<link rel="stylesheet" href="resourse/assets/css/jquery-ui.css" />

<!-- jQuery -->
<script src="resourse/assets/js/jquery.v2.0.3.js"></script>

<script type="text/javascript">
	function updateInfor() {

		var uid = document.getElementById("uid").value;
		var uname = document.getElementById("uname").value;
		var upassword = document.getElementById("upassword").value;
		alert(uid + uname + upassword);
		$.ajax({
			type : "POST",
			url : "updateInfor.do",
			data : {
				userid : uid,
				username : uname,
				userpassword : upassword
			},
			success : function(result) {
				alert(result);
			},
			error : function() {
				alert("修改密码失败！");
			}

		});
	}
</script>
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
							class="logo" /> </a>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.jsp">首页</a></li>
							<li><a href="newsPageUI">新闻</a></li>
							<li><a href="aboutUI">关于我们</a></li>
							<li><a href="goContact.do">联系我们</a></li>
							<li class="dropdown" style="display:${user.uname==null?"none":''}">
								<a data-toggle="dropdown" class="dropdown-toggle" href="#">操作<b
									class="lightcaret mt-2"></b></a>
								<ul class="dropdown-menu">
									<li><a>登录名：${user.uname }</a></li>
									<li class="dropdown active"><a>我的信息</a></li>
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
					<li><a href="#" class="active">个人信息</a></li>
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

				<!-- LEFT MENU -->
				<div class="col-md-1 offset-0">
					<!-- Nav tabs -->
					<ul class="nav profile-tabs">
						<li class="active"><a href="#profile" data-toggle="tab">
								<span class="profile-icon"></span> 个人信息
						</a></li>
						<li><a href="#bookings" data-toggle="tab"
							onclick="mySelectUpdate()"> <span class="bookings-icon"></span>
								我的订单
						</a></li>

						<li><a href="#history" data-toggle="tab"
							onclick="mySelectUpdate()"> <span class="history-icon"></span>
								订单历史
						</a></li>
						<li><a href="#password" data-toggle="tab"
							onclick="mySelectUpdate()"> <span class="password-icon"></span>
								修改密码
						</a></li>

						<c:if test="${user.level>0}">
							<li><a href="backManage.do" onclick="mySelectUpdate()">
									<span class="settings-icon"></span> 后台管理
							</a></li>
						</c:if>
					</ul>
					<div class="clearfix"></div>
				</div>
				<!-- LEFT MENU -->

				<!-- RIGHT CPNTENT -->
				<div class="col-md-11 offset-0">
					<!-- Tab panes from left menu -->
					<div class="tab-content5">

						<!-- TAB 1 -->
						<div class="tab-pane padding40 active" id="profile">

							<!-- Admin top -->
							<div class="col-md-4 offset-0">

								<p class="size12 grey margtop10">
								<h4>您好</h4>
								<span class="lred">${user.uname }</span><br />

								</p>
								<div class="clearfix"></div>
							</div>
							<div class="col-md-4"></div>
							<div class="col-md-4 offset-0"></div>
							<!-- End of Admin top -->

							<div class="clearfix"></div>

							<!-- COL 1 -->
							<div class="col-md-12 offset-0">
								<form action="update">
									<table>
										<tr>
											<td>
												<div class="radio left">
													<label> <input type="radio" name="ugender"
														id="ugender" value="女" ${user.ugender== "女"?"checked":''} />
														女
													</label>
												</div>
											</td>
											<td>
												<div class="radio">
													<label> <input type="radio" name="ugender"
														id="ugender" value="男" ${user.ugender== "男"?"checked":''} />
														男
													</label>
												</div>
											</td>
										</tr>
									</table>

									<br /> <input type="text" style="display:none;" id="uid"
										class="form-control" value="${user.uid }" rel="popover"
										name="uid"> 姓名*: <input type="text"
										class="form-control" value="${user.realname }" rel="popover"
										id="realname" name="realname" readonly="readonly"> <br />
									用户名*: <input type="text" class="form-control"
										value="${user.uname }" rel="popover" name="uname" id="uname"
										readonly="readonly"> <br /> E-mail*: <input
										type="text" class="form-control" value="${user.uemail }"
										name="uemail" id="uemail"> <br /> 电话号码: <input
										type="text" class="form-control" value="${user.utel }"
										id="utel" name="utel"> <br /> <br /> <br />
									<button type="submit" class="cyanbtn  margtop20">更新</button>

								</form>
							</div>
							<!-- END OF COL 1 -->

							<div class="clearfix"></div>
							<br /> <br /> <br />


						</div>
						<!-- END OF TAB 1 -->
						<!-- TAB 2 -->
						<div class="tab-pane" id="bookings">
							<div class="padding40">
								<div class="clearfix"></div>

								<br /> <br /> <span class="dark size18">最新订单</span>
								<div class="right mt-5">
									<select
										class="form-control mySelectBoxClass hasCustomSelect cpwidth">
										<option value="">时间</option>
										<option value="">国家</option>
										<option value="">日期</option>
									</select>
								</div>
								<div class="right mr20 mt-5">
									<select
										class="form-control mySelectBoxClass hasCustomSelect cpwidth2">
										<option value="">5条/页</option>
										<option value="">15条/页</option>
										<option value="">20条/页</option>
									</select>
								</div>
								<div class="line4"></div>
								<br />
								<c:forEach var="userBookingsLists" items="${userBookingsLists }">
									<div class="col-md-4 offset-0">
										<a href="#"><img alt="" class="left mr20"
											src="resourse/images/smallthumb-1.jpg"> </a> <a
											class="dark" href="#"><b>${userBookingsLists.hotel.hname }</b>
										</a> / <span class="dark size12">${userBookingsLists.hotel.hcity }</span><br>
										<span class="opensans green bold size14">${userBookingsLists.hotel.avgprice }RMB</span>
										<span class="grey">平均每晚</span><br> <span
											class="opensans green bold size14">${userBookingsLists.hotel.grand }星</span><br />
									</div>
									<div class="col-md-7">
										<span class="grey">${userBookingsLists.hotel.summary }</span>
									</div>
									<div class="col-md-1 offset-0">
										<input type="text"
											value="${userBookingsLists.hotel.avgprice }" id="pri"
											name="pri" style="display:none;">
										<button type="" class="btn-search5 right">
											<a
												href="tuiding?oid=${userBookingsLists.oid }&uid=${user.uid}">退订</a>
										</button>
									</div>
									<div class="clearfix"></div>
									<div class="line4"></div>
								</c:forEach>

								<ul class="pagination right paddingbtm20">
									<li class="disabled"><a href="#">«</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">»</a></li>
								</ul>
							</div>
						</div>
						<!-- END OF TAB 2 -->

						<!-- TAB 5 -->
						<div class="tab-pane" id="history">
							<div class="padding40">

								<span class="dark size18">历史记录</span>
								<div class="line4"></div>


								<table class="table table-striped">
									<thead>
										<tr>
											<td>入住时间</td>
											<td>退房时间</td>
											<td>酒店名称</td>
											<td>花费</td>
											<td>操作</td>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="userOlistLists" items="${userOlistLists }">
											<tr>
												<td>${userOlistLists.indate }</td>
												<td>${userOlistLists.outdate }</td>
												<td>${userOlistLists.hotel.hname}</td>
												<td>${userOlistLists.ammount}</td>

												<td><a class="btn btn-default  btn-xs"
													href="deleteUserOrder?oid=${userOlistLists.oid }&uid=${user.uid}">删除</a>&nbsp;

												</td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<!-- END OF TAB 5 -->

						<!-- TAB 6 -->
						<div class="tab-pane" id="password">
							<div class="padding40">
								<span class="dark size18">更改密码</span>
								<div class="line4"></div>
								用户名<br /> <input id="uname" name="uname" type="text"
									class="form-control " placeholder="" value="${user.uname }"
									readonly="readonly"> <br /> 原始密码<br /> <input
									type="password" class="form-control " placeholder=""> <br />
								新密码<br /> <input type="password" class="form-control "
									placeholder=""> <br /> 确认密码<br /> <input
									id="upassword" name="upassword" type="password"
									class="form-control " placeholder=""> <br /> <input
									id="uid" name="uid" type="hidden" value="${user.uid }">
								<button type="button" class="btn-search5"
									onclick="updateInfor()">保存修改</button>
							</div>
						</div>
						<!-- END OF TAB 6 -->



					</div>
					<!-- End of Tab panes from left menu -->
				</div>

				<!-- END OF RIGHT CPNTENT -->
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
						src="resourse/images/icon-facebook.png" alt="" /> </a> <a href="#"
						class="social2b"><img src="resourse/images/icon-twitter.png"
						alt="" /> </a> <a href="#" class="social3b"><img
						src="resourse/images/icon-gplus.png" alt="" /> </a> <a href="#"
						class="social4b"><img src="resourse/images/icon-youtube.png"
						alt="" /> </a> <br /> <br /> <br /> <a href="#"><img
						src="resourse/images/logosmal2.png" alt="" /> </a><br /> <span
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
			<a href="index.jsp">首页</a> | <a href="about.jsp">关于我们</a> | <a
				href="#">预订</a> | <a href="newsPageUI">新闻</a> | <a href="contactUI">联系我们</a>
			<a href="#top" class="gotop scroll"><img
				src="resourse/images/spacer.png" alt="" /> </a>
		</div>
	</div>


	<!-- Javascript  -->
	<script src="resourse/assets/js/js-profile.js"></script>

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
