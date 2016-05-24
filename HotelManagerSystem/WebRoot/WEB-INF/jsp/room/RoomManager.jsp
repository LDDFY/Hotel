<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>RoomManager</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- Bootstrap -->
<link href="resourse/dist/css/bootstrap.css" rel="stylesheet"
	media="screen">
<link href="resourse/assets/css/custom.css" rel="stylesheet"
	media="screen">


<link href="resourse/examples/carousel/carousel.css" rel="stylesheet">

<link
	href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:700,400,300,300italic'
	rel='stylesheet' type='text/css'>
<!-- Font-Awesome -->
<link rel="stylesheet" type="text/css"
	href="resourse/assets/css/font-awesome.css" media="screen" />

<link rel="stylesheet" type="text/css"
	href="resourse/css/fullscreen.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="resourse/rs-plugin/css/settings.css" media="screen" />

<link rel="stylesheet" href="resourse/assets/css/jquery-ui.css" />

<!-- bin/jquery.slider.min.css -->
<link rel="stylesheet" href="resourse/plugins/jslider/css/jslider.css"
	type="text/css">
<link rel="stylesheet"
	href="resourse/plugins/jslider/css/jslider.round-blue.css"
	type="text/css">

<!-- jQuery-->
<script src="resourse/assets/js/jquery.v2.0.3.js"></script>
<script src="resourse/assets/js/jquery-ui.js"></script>

<!-- bin/jquery.slider.min.js -->
<script type="text/javascript"
	src="resourse/plugins/jslider/js/jshashtable-2.1_src.js"></script>
<script type="text/javascript"
	src="resourse/plugins/jslider/js/jquery.numberformatter-1.2.3.js"></script>
<script type="text/javascript" src="resourse/plugins/jslider/js/tmpl.js"></script>
<script type="text/javascript"
	src="resourse/plugins/jslider/js/jquery.dependClass-0.1.js"></script>
<script type="text/javascript"
	src="resourse/plugins/jslider/js/draggable-0.1.js"></script>
<script type="text/javascript"
	src="resourse/plugins/jslider/js/jquery.slider.js"></script>
<!-- end -->
<!-- jQuery -->
<script src="resourse/assets/js/jquery.v2.0.3.js"></script>
<script src="resourse/js/jquery.form.js"></script>
<script src="resourse/javascript/RoomManager.js"></script>
<!-- end -->

<script type="text/javascript">
	// 分页
	var totalCounts = 0;
	var url = "findRoomSize.do"
	var urlPage = "ProListRoom.do"
	$(function() {
		freshHotelRole();

	});

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
				fresh();
			},
			error : function() {
				alert("酒店信息更新失败！");
			}
		}));
	}


	function CheckaddRoom() {
		$('#myModal1').modal('hide');

		$("#hid").val($("#HotelID").val());
		return true;
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
				freshHotelRole();
				alert("删除房间信息成功！");

			}
		});
	}

	function fresh() {

		InitProperties();
	}
	function PageStrConvert(data) {
		var strHtml = "";
		var strtitle = "<tr>";
		var strtitleed = "</tr>";
		var strtd = "<td>";
		var strtded = "</td>";
		var a = "<a href='roomInfor.do?rid=";
		var a1 = "'>详情</a>&nbsp;<a href='modifyRoom.do?rid=";
		var a2 = "'>修改</a>&nbsp;<a href='javascript:deleteRoom(";
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

			+ strtded + strtd + a + data[i].roomid + a1 + data[i].roomid + a2
					+ data[i].roomid + a3

					+ strtded + strtitleed;

			$("#RoomList").append(strHtml);
		}
	}

	function InitProperties() {
		var role = document.getElementById('HotelID').value;
		$.ajax({
			type : "GET",

			url : "findRoomSize.do",
			data : {
				hid : role,
			},

			success : function(data) {
				totalCounts = data;
				initPagination();
			},
			error : function() {
				alert("查询失败！");
			}
		});
	}
	function PageSelect(num, type) {

		ProList(num, 12, urlPage);

	};

	function ProList(pageindexs, pageSize, urlPage) {
		var role = document.getElementById('HotelID').value;
		$.ajax({
			type : "GET",
			url : urlPage,
			data : {

				hid : role,
				pageindexs : pageindexs,
				pageSize : pageSize,
			},
			success : function(data) {
				PageStrConvert(data);
			},
			error : function() {
				alert("加载失败！");
			}
		});

	}
</script>
</head>

<body>
	<input id="uID" name="uID" value="${user.uid }" hidden="hidden" />
	<input id="level" name="level" value="${user.level }" hidden="hidden" />
	<div class="padding40">
		<!--房间信息管理  -->

		<span class="lato size12 grey">Welcome:&nbsp; <a class="orange">${user.uname }</a></span>
		<div class="line2"></div>
		<div class="clearfix"></div>

		<div>
			<div style="float: left; padding-right: 3px;">
				<select id="HotelID" name="HotelID"
					style="width: 60px;height: 30px;">
				</select>
			</div>
			<div style="float: left;">
				<a class="btn btn-primary btn-sm" onclick="javascript:fresh()">刷新列表</a>
				<button class="btn btn-primary btn-sm" data-target="#myModal1"
					data-toggle="modal">添加房间信息</button>
			</div>
		</div>

		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">

				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">添加房间信息</h4>
					</div>

					<c:if test="${not empty result }">
						<div class="alert alert-warning fade in margtop20">
							<button aria-hidden="true" data-dismiss="alert" class="close"
								type="button">×</button>
							<strong>提示!</strong>${result}
						</div>
					</c:if>
					<div class="modal-body">
						<form id="roomInfor" name="roomInfor" method="post"
							enctype="multipart/form-data" role="form" action="addRoom.do"
							onsubmit="return CheckaddRoom()">
							<table class="table table-bordered">
								<tr>
									<td align="right">房间号:</td>
									<td align="left"><input name="rid" type="text" id="rid"
										style="width: 150px;" /> <a class="orange">*</a></td>
									<td align="right">房间类型:</td>
									<td align="left" colspan="3"><input name="rtype"
										type="text" id="rtype" style="width: 150px;" /><a
										class="orange"><a class="orange">*</a></a></td>
								</tr>
								<tr>
									<td align="right">房间大小</td>
									<td align="left"><input name="rarea" type="text"
										id="rarea" style="width: 150px;" /><a class="orange">*</a></td>
									<td align="right">价格:</td>
									<td align="left" colspan="3"><input name="rprice"
										type="text" id="rprice" style="width: 150px;" /><a
										class="orange"><a class="orange">*</a></a></td>
								</tr>
								<tr>
									<td align="right">房间格局:</td>
									<td align="left"><input name="rpattern" type="text"
										id="rpattern" style="width: 150px;" /><a class="orange">*</a></td>
									<td align="right">可住人数:</td>
									<td colspan="3" align="left"><input name="customs"
										type="text" id="customs" style="width: 150px;" /></td>
								</tr>
								<tr>
									<td align="right">是否可住:</td>
									<td align="left"><select name="rstatus">
											<option value="1">可住</option>
											<option value="0">不可住</option>
									</select></td>
									<td align="right">图片:</td>
									<td align="left"><input name="file" type="file" id="file"
										style="width: 200px;" /></td>
								</tr>
								<input name="hid" type="text" id="hid" hidden="hidden" "/>

							</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary">提交更改</button>
					</div>
					</form>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>


		<div class="col-md-15" style="height: 400px;">
			<table id="RoomList" name="RoomList"
				class="table table-bordered table-hover table-striped"
				style=" font-size:13px;">
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

	<jsp:include page="../pagination.jsp" />

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
