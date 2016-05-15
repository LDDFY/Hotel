<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resourse/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
		<p id="p1"></p>
		<ul class="pagination" id="pagination"></ul>

	<script type="text/javascript" src="resourse/js/jquery.min.js"></script>
	<script type="text/javascript" src="resourse/js/jqPaginator.min.js"></script>
	<script type="text/javascript">
		$.jqPaginator('#pagination', {
			totalPages : 100,
			visiblePages : 10,
			currentPage : 3,
			onPageChange : function(num, type) {
				$('#p1').text(type + '：' + num);
			}
		});
	</script>

</body>
</html>
