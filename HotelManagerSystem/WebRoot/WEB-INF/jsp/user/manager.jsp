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
<base href="<%=basePath%>">

<title>manager</title>

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
<link href="resourse/assets/css/dashboard.css" rel="stylesheet"
	media="screen">

<!-- Carousel -->
<link href="resourse/css/carousel.css" rel="stylesheet">
<link href="resourse/css/css.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="resourse/assets/css/font-awesome.css" media="screen" />

<link rel="stylesheet" type="text/css"
	href="resourse/assets/css/jquery.easy-pie-chart.css">
<link rel="stylesheet" href="resourse/assets/css/jquery-ui.css" />

<!-- jQuery -->
<script src="resourse/assets/js/jquery.v2.0.3.js"></script>
<script src="resourse/js/jquery.form.js"></script>
<script type="text/javascript">
	$(function() {
		fresh();

	});
	function fresh() {
		$.ajax({
			type : "GET",
			url : "findAllHotel.do",

			success : function(data) {
				var strHtml = "";
				var strtitle = "<tr>";
				var strtitleed = "</tr>";
				var strtd = "<td>";
				var strtded = "</td>";
				var a = "<a href='hotelInfor.do?hid=";
				var a1 = "'>详情</a><a href='modifyHotel.do?hid=";
				var a2 = "'>修改</a><a href='deleteHotel.do?hid=";
				var a3 = "'>删除</a>";
				for (var i = 0; i < data.length; i++) {

					$("#menuList tr:not(:first)").remove();
					strHtml += strtitle + strtd + data[i].hid + strtded + strtd
							+ data[i].hname + strtded + strtd + data[i].hcity
							+ strtded + strtd + data[i].haddr + strtded + strtd
							+ data[i].htel + strtded + strtd + data[i].hemail
							+ strtded + strtd + a + data[i].hid + a1
							+ data[i].hid + a2 + data[i].hid + a3 + strtded
							+ strtitleed;
					$("#menuList").append(strHtml);
				}
			},
			error : function() {
				alert("刷新失败！");
			}

		});
	}

	function freshRoom() {

		var role = document.getElementById('HotelID').value;

		$.ajax({
			type : "GET",
			url : "findRoomByHid.do",
			data : {
				"hid" : role
			},
			success : function(data) {
				var strHtml = "";
				var strtitle = "<tr>";
				var strtitleed = "</tr>";
				var strtd = "<td>";
				var strtded = "</td>";
				var a = "<a href='roomInfor.do?rid=";
				var a1 = "'>详情</a><a href='modifyRoom.do?rid=";
				var a2 = "'>修改</a><a href='javascript:deleteRoom(";
				var a3 = ")'>删除</a>";

				for (var i = 0; i < data.length; i++) {

					$("#RoomList tr:not(:first)").remove();
					strHtml += strtitle + strtd + data[i].rid

					+ strtded + strtd + data[i].rtype

					+ strtded + strtd + data[i].rarea

					+ strtded + strtd + data[i].rprice

					+ strtded + strtd + data[i].rpattern

					+ strtded + strtd + data[i].customs

					+ strtded + strtd + data[i].total

					+ strtded + strtd + a + data[i].roomid + a1
							+ data[i].roomid + a2 + data[i].roomid + a3

							+ strtded + strtitleed;

					$("#RoomList").append(strHtml);
				}
			},
			error : function() {
				alert("刷新失败！");
			}

		});
	}

	function freshHotelRole() {

		var level = document.getElementById("level").value;
		var uid = document.getElementById("uID").value;

		$($.ajax({
			type : "GET",

			url : "findHotelBylevel.do",
			data : {
				"level" : level,
				"uid" : uid,
			},
			success : function(Datas) {
				$("#HotelID").empty();
				for (var i = 0; i < Datas.length; i++) {
					$("#HotelID").append(
							"<option value='"+Datas[i].hid+"'>"
									+ Datas[i].hname + "</option>");
				}

			},
			error : function() {
				alert("酒店信息更新失败！");
			}
		}));
	}

	function addRoom() {
		$('#myModal1').modal('hide')
		$("#hid").val($("#HotelID").val());
		$.ajax({
			cache : true,
			type : "POST",
			url : "addRoom.do",
			data : $('#roomInfor').serialize(),// 你的formid
			async : false,
			error : function(request) {
				alert("添加房间信息失败！");

			},
			success : function(data) {
				freshRoom();
				alert("添加房间信息成功！");

			}
		});
	}
	function deleteRoom(rid) {
		$.ajax({
			cache : true,
			type : "POST",
			url : "deleteRoom.do",
			data : {
				"rid" : rid
			},// 你的formid
			async : false,
			error : function(request) {

				alert("删除房间信息失败！");
			},
			success : function(data) {
				freshRoom();
				alert("删除房间信息成功！");

			}
		});
	}
</script>

</head>

<body id="top">
	<input id="uID" name="uID" value="${user.uid }" />
	<input id="level" name="level" value="${user.level }" hidden="hidden" />
	<!-- CONTENT -->
	<div class="container2">
		<div class="container2 offset-0">
			<!-- CONTENT -->
			<div class="col-md-12  offset-0">
				<!-- LEFT MENU -->
				<div class="dashboard-left offset-0 textcenter">
					<br /> <br /> <a><img src="resourse/images/dash/logo.png" /></a><br />
					<br /> <a><img src="resourse/images/dash/avatar.jpg"
						class="dash-avatar" alt="" /></a><br /> <span class="size12 dark">管理员：${user.uname }</span><br />
					<a href="loginOut.do"><img
						src="resourse/images/dash/logout.png" alt="" /></a><br /> <br /> <br />

					<!-- Nav tabs -->
					<ul class="nav dashboard-tabs">

						<li><a href="#">
								<div class="dash-ct">
									<span class="dashboard-icon left"></span> <span class="dtxt">首页
									</span>
								</div>
						</a></li>
						<c:if test="${user.level ==2}">
							<li class=“margbottom10" ><a href="#profile"
								data-toggle="tab">

									<div class="dash-ct">
										<span class="posts-icon left"></span><span class="dtxt">酒店信息管理
										</span>
									</div>

							</a></li>
						</c:if>
						<li><a href="#room" data-toggle="tab"
							onclick="javascript:freshHotelRole()">
								<div class="dash-ct">
									<span class="topics-icon left"></span> <span class="dtxt">房间信息管理
									</span>
								</div>
						</a></li>

						<li><a href="#pages" data-toggle="tab">
								<div class="dash-ct">
									<span class="pages-icon left"></span> <span class="dtxt">订单管理</span>
								</div>
						</a></li>
						<li><a href="#comments" data-toggle="tab">
								<div class="dash-ct">
									<span class="comments-icon left"></span> <span class="dtxt">评价信息管理</span>
								</div>
						</a></li>

						<li><a href="#forums" data-toggle="tab">
								<div class="dash-ct">
									<span class="forums-icon left"></span> <span class="dtxt">邮件</span>
								</div>
						</a></li>

						<li><a href="#replies" data-toggle="tab">
								<div class="dash-ct">
									<span class="replies-icon left"></span> <span class="dtxt">新闻信息管理</span>
								</div>
						</a></li>
						<li><a href="#appearance" data-toggle="tab">
								<div class="dash-ct">
									<span class="appearance-icon left"></span> <span class="dtxt">用户信息管理</span>
								</div>
						</a></li>
						<c:if test="${user.level ==2}">
							<li><a href="#users" data-toggle="tab">
									<div class="dash-ct">
										<span class="profile-icon left"></span> <span class="dtxt">管理员信息管理</span>
									</div>
							</a></li>
						</c:if>
					</ul>
					<br /> <span class="dtxt"> <span class="size12 grey">
							Copyright &copy; 2013.<br /> XXXXXXXXX.com
					</span> <br /> <br /> <br />
					</span>
					<div class="clearfix"></div>
				</div>
				<!-- LEFT MENU -->


				<!-- RIGHT CPNTENT -->
				<div class="dashboard-right  offset-0">
					<!-- Tab panes from left menu -->
					<div class="tab-content5">

						<!-- TAB 1 -->
						<div class="tab-pane cpadding40 active" id="profile">
							<span class="lato size12 grey">Welcome:&nbsp; <a
								class="orange">${user.uname }</a></span>
							<div class="line2"></div>
							<div class="clearfix"></div>
							<div>
								<button type="button" class="btn btn-primary btn-sm"
									onclick="fresh()">刷新列表</button>
								<button class="btn btn-primary btn-sm" id="modal-9735581"
									data-target="#myModal" data-toggle="modal">添加信息</button>

							</div>

							<c:if test="${not empty result }">
								<div class="alert alert-warning fade in margtop20">
									<button aria-hidden="true" data-dismiss="alert" class="close"
										type="button">×</button>
									<strong>提示!</strong>${result}
								</div>
							</c:if>
							<div class="modal  fade" id="myModal" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<h5 class="modal-title" id="myModalLabel">添加酒店信息</h5>
										</div>
										<div class="modal-body">

											<form action="addHotel" method="post">
												<table class="table table-bordered">
													<tbody>

														<tr>
															<td align="right">名称:</td>
															<td align="left"><input name="hname" type="text"
																id="hname" class="span1-1" /> *</td>
															<td align="right">省份:</td>
															<td align="left" colspan="3"><input name="hprovince"
																type="text" id="hprovince" class="span1-1" />*</td>
														</tr>
														<tr>
															<td align="right">城市</td>
															<td align="left"><input name="hcity" type="text"
																id="hcity" class="span1-1" />*</td>
															<td align="right">地址:</td>
															<td align="left" colspan="3"><input name="haddr"
																type="text" id="haddr" class="span1-1" />*</td>
														</tr>
														<tr>
															<td align="right">电话:</td>
															<td align="left"><input name="hetl" type="text"
																id="hetl" class="span1-1" />*</td>
															<td align="right">email:</td>
															<td colspan="3" align="left"><input name="hemail"
																type="text" id="hemail" class="span1-1" /></td>
														</tr>

														<tr>
															<td align="right">星级:</td>
															<td align="left"><input name="grand" type="text"
																id="grand" class="span1-1" />*</td>
															<td align="right">环境:</td>
															<td colspan="3" align="left"><input name="summary"
																type="text" id="summary" class="span1-1" /></td>
														</tr>

													</tbody>
												</table>
										</div>

										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
											<button type="submit" class="btn btn-primary">提交更改</button>
										</div>
										</form>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal -->
							</div>



							<div class="col-md-15">
								<table id="menuList" name="menuList" class="table table-striped">
									<caption>酒店信息列表</caption>
									<thead>
										<tr>
											<th>序号</th>
											<th>名称</th>
											<th>城市</th>
											<th>地址</th>
											<th>电话</th>
											<th>email</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>

							</div>

						</div>
						<!-- End of Tab 1 -->


						<!--  TAB 2 -->
						<div class="tab-pane" id="pages">
							<div class="padding40">Pages - comingsoon</div>
						</div>
						<!-- END OF TAB 2 -->

						<!-- TAB 3 -->
						<div class="tab-pane" id="comments">
							<div class="padding40">Comments - comingsoon</div>
						</div>
						<!-- END OF TAB 3 -->

						<!-- TAB 4 -->
						<div class="tab-pane" id="forums">
							<div class="padding40">Forums - comingsoon</div>
						</div>
						<!-- END OF TAB 4 -->

						<!--  TAB 5 -->
						<div class="tab-pane" id="replies">
							<div class="padding40">Replies - comingsoon</div>
						</div>
						<!-- END OF TAB 5 -->

						<!-- TAB 6 -->
						<div class="tab-pane" id="appearance">
							<div class="padding40">Appearance - comingsoon</div>
						</div>
						<!-- END OF TAB 6 -->
						<!--  TAB 7 -->
						<div class="tab-pane" id="room">
							<div class="padding40">
								<!--房间信息管理  -->

								<span class="lato size12 grey">Welcome:&nbsp; <a
									class="orange">${user.uname }</a></span>
								<div class="line2"></div>
								<div class="clearfix"></div>

								<div>


									<div style="float: left; padding-right: 3px;">

										<select id="HotelID" name="HotelID"
											style="width: 60px;height: 30px;">

										</select>
									</div>


									<div style="float: left;">

										<a class="btn btn-primary btn-sm"
											onclick="javascript:freshRoom()">刷新列表</a>
										<button class="btn btn-primary btn-sm" data-target="#myModal1"
											data-toggle="modal">添加房间信息</button>
									</div>

								</div>


								<div class="modal  fade" id="myModal1" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h5 class="modal-title" id="myModalLabel">添加房间信息</h5>

											</div>

											<div class="modal-body">

												<form action="javascript:addRoom()" method="post"
													name="roomInfor" id="roomInfor">
													<table class="table table-bordered">

														<tr>

															<td align="right">房间号:</td>
															<td align="left"><input name="rid" type="text"
																id="rid" class="span1-1" /> *</td>
															<td align="right">房间类型:</td>
															<td align="left" colspan="3"><input name="rtype"
																type="text" id="rtype" class="span1-1" />*</td>
														</tr>
														<tr>
															<td align="right">房间大小</td>
															<td align="left"><input name="rarea" type="text"
																id="rarea" class="span1-1" />*</td>
															<td align="right">价格:</td>
															<td align="left" colspan="3"><input name="rprice"
																type="text" id="rprice" class="span1-1" />*</td>
														</tr>
														<tr>
															<td align="right">房间格局:</td>
															<td align="left"><input name="rpattern" type="text"
																id="rpattern" class="span1-1" />*</td>
															<td align="right">可住人数:</td>
															<td colspan="3" align="left"><input name="customs"
																type="text" id="customs" class="span1-1" /></td>
														</tr>
														<tr>
															<td align="right">是否可住:</td>
															<td align="left"><select name="rstatus">
																	<option value="1">可住</option>
																	<option value="0">不可住</option>

															</select></td>

														</tr>
														<input name="hid" type="text" id="hid" hidden="hidden" />
														</tbody>
													</table>
											</div>

											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
												<button type="submit" class="btn btn-primary">提交更改</button>
											</div>
											</form>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div>



								<div class="col-md-15">
									<table id="RoomList" name="RoomList"
										class="table table-striped">
										<caption>房间信息列表</caption>
										<thead>
											<tr>
												<th>房间号</th>
												<th>房间类型</th>
												<th>大小</th>
												<th>价格</th>
												<th>格局</th>
												<th>可住人数</th>
												<th>总数</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
								</div>


							</div>
						</div>
						<!-- END OF TAB 7 -->
						<!-- TAB 8  -->
						<div class="tab-pane" id="users">
							<div class="padding40">Users - comingsoon</div>

						</div>
						<!-- END OF TAB 8 -->

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
	<div class="masternotice none">
		<button type="button" class="close" data-dismiss="alert"
			aria-hidden="true">&times;</button>
		Message from TitanicThemes
	</div>
	<!-- This page JS -->
	<script src="resourse/assets/js/js-index.js"></script>
	<script src="resourse/assets/js/js-dashboard.js"></script>

	<!-- Sparkline -->
	<script src="resourse/assets/js/jquery.sparkline.js"></script>

	<!-- Custom functions -->
	<script src="resourse/assets/js/functions.js"></script>

	<!-- Counter -->
	<script src="resourse/assets/js/counter.js"></script>

	<!-- Picker UI-->
	<script src="resourse/assets/js/jquery-ui.js"></script>

	<!-- Easing -->
	<script src="resourse/assets/js/jquery.easing.js"></script>

	<!-- Nicescroll  -->
	<script src="resourse/assets/js/jquery.nicescroll.min.js"></script>

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

	<!-- Custom Select -->
	<script type='text/javascript'
		src='resourse/assets/js/jquery.customSelect.js'></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resourse/dist/js/bootstrap.min.js"></script>

</body>
</html>
