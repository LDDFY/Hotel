<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
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

<title>addNews</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="resourse/umeditor/themes/default/css/umeditor.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript"
	src="resourse/umeditor/third-party/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="resourse/umeditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="resourse/umeditor/umeditor.min.js"></script>
<script type="text/javascript"
	src="resourse/umeditor/lang/zh-cn/zh-cn.js"></script>
<link href="resourse/dist/css/bootstrap.css" rel="stylesheet"
	media="screen">

<script type="text/javascript" src="resourse/js/jquery1.9.0.min.js"></script>
<script src="resourse/dist/js/bootstrap.min.js"></script>
<script src="resourse/js/jquery.min.js"></script>
<style type="text/css">
h1 {
	font-family: "微软雅黑";
	font-weight: normal;
}

.btn {
	display: inline-block;
	*display: inline;
	padding: 4px 12px;
	margin-bottom: 0;
	*margin-left: .3em;
	font-size: 14px;
	line-height: 20px;
	color: #333333;
	text-align: center;
	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
	vertical-align: middle;
	cursor: pointer;
	background-color: #f5f5f5;
	*background-color: #e6e6e6;
	background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff),
		to(#e6e6e6));
	background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
	background-repeat: repeat-x;
	border: 1px solid #cccccc;
	*border: 0;
	border-color: #e6e6e6 #e6e6e6 #bfbfbf;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	border-bottom-color: #b3b3b3;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff',
		endColorstr='#ffe6e6e6', GradientType=0);
	filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
	*zoom: 1;
	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
}

.btn:hover, .btn:focus, .btn:active, .btn.active, .btn.disabled, .btn[disabled]
	{
	color: #333333;
	background-color: #e6e6e6;
	*background-color: #d9d9d9;
}

.btn:active, .btn.active {
	background-color: #cccccc \9;
}

.btn:first-child {
	*margin-left: 0;
}

.btn:hover, .btn:focus {
	color: #333333;
	text-decoration: none;
	background-position: 0 -15px;
	-webkit-transition: background-position 0.1s linear;
	-moz-transition: background-position 0.1s linear;
	-o-transition: background-position 0.1s linear;
	transition: background-position 0.1s linear;
}

.btn:focus {
	outline: thin dotted #333;
	outline: 5px auto -webkit-focus-ring-color;
	outline-offset: -2px;
}

.btn.active, .btn:active {
	background-image: none;
	outline: 0;
	-webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px
		rgba(0, 0, 0, 0.05);
}

.btn.disabled, .btn[disabled] {
	cursor: default;
	background-image: none;
	opacity: 0.65;
	filter: alpha(opacity = 65);
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
}
</style>
<script type="text/javascript">
	$(function freshHotelRole() {
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
	});

	function chkForm(obj) {
		var arr = [];
		arr.push(UM.getEditor('myEditor').getPlainTxt());
		$("#content").val(arr);
		return true;
	}
</script>
</head>
<body>
	<input id="uID" name="uID" value="${user.uid }" hidden="hidden" />
	<input id="level" name="level" value="${user.level }" hidden="hidden" />
	<h1 align="center">添加新闻信息</h1>
	
	<div class="clearfix">
		<c:if test="${not empty result }">
			<div class="alert alert-warning fade in margtop20">
				<button aria-hidden="true" data-dismiss="alert" class="close"
					type="button">×</button>
				<strong>提示!</strong>${result}
			</div>
		</c:if>
	</div>
	<form action="addNewsContent.do" onsubmit="chkForm()" method="post">
		<table align="center" class="table table-bordered">
			<tr>
				<td>酒店</td>
				<td><select id="HotelID" name="HotelID"
					style="width: 170px;height: 30px;">
				</select></td>
				<td>标题</td>
				<td><input type="text" id="title" name="title"></td>
				<td>关键词</td>
				<td><input type="text" id="keyword" name="keyword"></td>
			</tr>
			<tr>
				<td>作者</td>
				<td><input type="text" id="author" name="author"
					value="${user.uname }" readonly="readonly"></td>
				<td colspan="4"><input type="submit" value="提交">&nbsp;
					<input type="reset" value="重置"></td>
			</tr>

		</table>
		<input id="content" name="content" type="text" hidden="hidden" />
		<!--style给定宽度可以影响编辑器的最终宽度-->

	</form>

	<script type="text/plain" id="myEditor"
		style="width:1080px;height:340px;">
              <p>请输入内容(暂时不能上传图片) </p>
  </script>

	<script type="text/javascript">
		//实例化编辑器
		var um = UM.getEditor('myEditor');
		um.addListener('blur', function() {
			$('#focush2').html('编辑器失去焦点了')
		});
		um.addListener('focus', function() {
			$('#focush2').html('')
		});
		//按钮的操作
		function insertHtml() {
			var value = prompt('插入html代码', '');
			um.execCommand('insertHtml', value)
		}
		function isFocus() {
			alert(um.isFocus())
		}
		function doBlur() {
			um.blur()
		}
		function createEditor() {
			enableBtn();
			um = UM.getEditor('myEditor');
		}
		function getAllHtml() {
			alert(UM.getEditor('myEditor').getAllHtml())
		}
		function getContent() {
			var arr = [];
			arr.push("使用editor.getContent()方法可以获得编辑器的内容");
			arr.push("内容为：");
			arr.push(UM.getEditor('myEditor').getContent());
			alert(arr.join("\n"));
		}
		function getPlainTxt() {
			var arr = [];

			arr.push(UM.getEditor('myEditor').getPlainTxt());

		}
		function setContent(isAppendTo) {
			var arr = [];
			arr.push("使用editor.setContent('欢迎使用umeditor')方法可以设置编辑器的内容");
			UM.getEditor('myEditor').setContent('欢迎使用umeditor', isAppendTo);
			alert(arr.join("\n"));
		}
		function setDisabled() {
			UM.getEditor('myEditor').setDisabled('fullscreen');
			disableBtn("enable");
		}

		function setEnabled() {
			UM.getEditor('myEditor').setEnabled();
			enableBtn();
		}

		function getText() {
			//当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
			var range = UM.getEditor('myEditor').selection.getRange();
			range.select();
			var txt = UM.getEditor('myEditor').selection.getText();
			alert(txt)
		}

		function getContentTxt() {
			var arr = [];
			arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
			arr.push("编辑器的纯文本内容为：");
			arr.push(UM.getEditor('myEditor').getContentTxt());
			alert(arr.join("\n"));
		}
		function hasContent() {
			var arr = [];
			arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
			arr.push("判断结果为：");
			arr.push(UM.getEditor('myEditor').hasContents());
			alert(arr.join("\n"));
		}
		function setFocus() {
			UM.getEditor('myEditor').focus();
		}
		function deleteEditor() {
			disableBtn();
			UM.getEditor('myEditor').destroy();
		}
		function disableBtn(str) {
			var div = document.getElementById('btns');
			var btns = domUtils.getElementsByTagName(div, "button");
			for (var i = 0, btn; btn = btns[i++];) {
				if (btn.id == str) {
					domUtils.removeAttributes(btn, [ "disabled" ]);
				} else {
					btn.setAttribute("disabled", "true");
				}
			}
		}
		function enableBtn() {
			var div = document.getElementById('btns');
			var btns = domUtils.getElementsByTagName(div, "button");
			for (var i = 0, btn; btn = btns[i++];) {
				domUtils.removeAttributes(btn, [ "disabled" ]);
			}
		}
	</script>

</body>
</html>
