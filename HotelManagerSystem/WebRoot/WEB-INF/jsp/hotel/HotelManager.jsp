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

<title>HotelManager</title>

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
<script>
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
							+ data[i].hname + strtded + strtd + data[i].haddr
							+ strtded + strtd + data[i].htel + strtded + strtd
							+ data[i].hemail + strtded + strtd + a
							+ data[i].hid + a1 + data[i].hid + a2 + data[i].hid
							+ a3 + strtded + strtitleed;
					$("#menuList").append(strHtml);
				}
			},
			error : function() {
				alert("刷新失败！");
			}

		});
	}
</script>

</head>

<body >
	<input id="uID" name="uID" value="${user.uid }" hidden="hidden" />
	<input id="level" name="level" value="${user.level }" hidden="hidden" />
	<div class="tab-content5">

		<!-- TAB 1 -->
		<div class="tab-pane cpadding40 active" id="profile">
			<span class="lato size12 grey">Welcome:&nbsp; <a
				class="orange">${user.uname }</a></span>
			<div class="line2"></div>
			<div class="clearfix"></div>
			<div style="padding-left: 5px;">
				<button type="button" class="btn btn-primary btn-sm"
					onclick="fresh()">刷新列表</button>
				<button class="btn btn-primary btn-sm" data-target="#myModal"
					data-toggle="modal">添加信息</button>

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
				<table id="menuList" name="menuList" class="table table-bordered">
					<caption>酒店信息列表</caption>
					<thead>
						<tr>
							<th>序号</th>
							<th >名称</th>							
							<th >地址</th>
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
