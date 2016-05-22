var url = "findHotelSize.do"
var urlPage = "ProListHotel.do"
$(function() {
	fresh();

});
function fresh() {
	InitProperties(url);
}
function PageStrConvert(data) {
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
				+ data[i].hname + strtded + strtd + data[i].haddr + strtded
				+ strtd + data[i].htel + strtded + strtd + data[i].hemail
				+ strtded + strtd + a + data[i].hid + a1 + data[i].hid + a2
				+ data[i].hid + a3 + strtded + strtitleed;
		$("#menuList").append(strHtml);
	}
}
function PageSelect(num, type) {
	/* $('#p1').text(type + '：' + num); */
	ProList(num, 12, urlPage);

};

function ProList(pageindexs, pageSize, urlPage) {
	$.ajax({
		type : "GET",
		url : urlPage,
		data : {
			/* totalCounts : totalCounts, */
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
var totalCounts = 0;//记录总数
function InitProperties(url) {
	$.ajax({
		type : "GET",
		contentType : "application/json",
		url : url,
		dataType : "json",
		success : function(data) {
			totalCounts = data;
			initPagination();
		},
		error : function() {
			alert("查询失败！");
		}
	});
}
