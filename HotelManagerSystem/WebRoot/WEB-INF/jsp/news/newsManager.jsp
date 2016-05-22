<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	var url = "findNewsSize.do"
	var urlPage = "ProListNews.do"

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
		var a = "<a href='newsInfor.do?newsid=";
		var a1 = "'>详情</a><a href='javascript:deleteNews(";
		var a3 = ")'>删除</a>";

		for (var i = 0; i < data.length; i++) {

			$("#newsList tr:not(:first)").remove();

			strHtml += strtitle + strtd + data[i].newsid

			+ strtded + strtd + data[i].title

			+ strtded + strtd + data[i].keyword

			+ strtded + strtd + data[i].hid

			+ strtded + strtd + data[i].author

			+ strtded + strtd + data[i].releasetime

			+ strtded + strtd + a + data[i].newsid + a1 + data[i].newsid + a3

			+ strtded + strtitleed;

			$("#newsList").append(strHtml);
		}
	}

	function deleteNews(newsid) {
		$.ajax({
			cache : true,
			type : "POST",
			url : "deleteNews.do",
			data : {
				"newsid" : newsid
			},// 你的formid
			async : false,
			error : function() {

				alert("删除新闻信息失败！");
			},
			success : function(data) {

				alert("删除新闻信息成功！");

				window.location.reload();

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
		<div style="float: left; padding-left: 15px;">
			<select id="HotelID" name="HotelID" style="width: 60px;height: 30px;">
			</select>
			<button class="btn btn-primary btn-sm" onclick="javascript:fresh()">刷新列表</button>
			<a class="btn btn-primary btn-sm" href="addNews.do?hid=">添加新闻信息</a>

		</div>

		<div class="clearfix"></div>
		<div class="col-md-12" style="height: 400px;">
			<table id="newsList" name="newsList"
				class="table table-bordered table-hover table-striped"
				style=" font-size:13px;">
				<caption>新闻信息列表</caption>
				<thead>
					<tr>
						<th style="width: 55px;">序号</th>
						<th align="center">主题</th>
						<th align="center">关键词</th>
						<th align="center">酒店</th>
						<th align="center">作者</th>
						<th align="center">时间</th>
						<th align="center">操作</th>
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
