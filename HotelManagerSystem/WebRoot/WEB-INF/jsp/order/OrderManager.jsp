<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<!-- end -->
<script type="text/javascript">
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
	// 分页
	var totalCounts = 0;
	var url = "findOrderSize.do"
	var urlPage = "ProListOrder.do"

	function fresh() {

		InitProperties();
	}

	function InitProperties() {
		var role = document.getElementById('HotelID').value;
		$.ajax({
			type : "GET",

			url : url,
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
	

	function PageStrConvert(data) {

		var strHtml = "";
		var strtitle = "<tr>";
		var strtitleed = "</tr>";
		var strtd = "<td>";
		var strtded = "</td>";

		var a = "<a href='deleteOrder.do?oid=";
		var a1 = "'>删除</a>";
		for (var i = 0; i < data.length; i++) {

			$("#menuList tr:not(:first)").remove();
			strHtml += strtitle + strtd + (i + 1) + strtded + strtd
					+ data[i].uid + strtded + strtd + data[i].hid + strtded
					+ strtd + data[i].rid + strtded + strtd + data[i].innumber
					+ strtded + strtd + data[i].indete + strtded + strtd
					+ data[i].outdate + strtded + strtd + a + data[i].oid + a1
					+ strtded + strtitleed;
			$("#menuList").append(strHtml);

		}
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
		<div style="float: left; padding-right: 3px;">
			<select id="HotelID" name="HotelID" style="width: 60px;height: 30px;">
			</select>
		</div>
		<div>
			<a class="btn btn-primary btn-sm" onclick="javascript:fresh()">刷新订单</a>
		</div>

		<c:if test="${not empty result }">
			<div class="alert alert-warning fade in margtop20">
				<button aria-hidden="true" data-dismiss="alert" class="close"
					type="button">×</button>
				<strong>提示!</strong>${result}
			</div>
		</c:if>
		<div class="col-md-15" style="height: 400px;">
			<table id="menuList" name="menuList" class="table table-bordered table-hover table-striped"
			style=" font-size:13px;">
				<caption>订单信息列表</caption>
				<thead>
					<tr>
						<th>订单号</th>
						<th>用户</th>
						<th>酒店</th>
						<th>房间</th>
						<th>入住人数</th>
						<th>入住时间</th>
						<th>离开时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>

		</div>

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
