<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="resourse/css/jqPaginator.css" />
<script type="text/javascript" src="resourse/js/jquery.min.js"></script>
<script type="text/javascript" src="resourse/js/jqPaginator.js"></script>
<!-- <link href="resourse/dist/css/bootstrap.css" rel="stylesheet"
	media="screen"> -->

</head>

<body>

	<div
		style="text-align: center; position:position:fixed;padding-bottom: 23px;">
		<ul class="pagination center" id="pagination"></ul>
	</div>
	<!-- <p id="p1"></p> -->

	<script type="text/javascript">
		function initPagination() {

			$('#pagination')
					.jqPaginator(
							{
								totalCounts : totalCounts,//记录总数totalCounts
								pageSize : 12,//每个页面的记录数设置了totalCounts和pageSize后，会自动计算出totalPages。
								visiblePages : 15,//分页最多显示的索引下标
								currentPage : 1,//当前页
								onPageChange : PageSelect,
								first : '<li class="first"><a href="javascript:void(0);">首页</a></li>',
								/* prev : '<li class="prev"><a href="javascript:void(0);">上一页</a></li>',
								next : '<li class="next"><a href="javascript:void(0);">下一页</a></li>', */
								last : '<li class="last"><a href="javascript:void(0);">尾页</a></li>',
								page : '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',
							});
		}
		
	</script>
</body>
</html>
