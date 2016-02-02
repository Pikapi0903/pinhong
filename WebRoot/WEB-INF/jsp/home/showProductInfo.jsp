<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'ShowProductInfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<style type="text/css">
#pic {
	width:150px;
	height:150px;
	margin-left:10px;
}
#info {
	border:1px solid #cccccc;
	border-collapse:collapse;
	position:absolute;
	margin-left:180px;
	margin-top:-150px;
	height:200px;
	width:380px;
}
#info td {
	border:1px solid #cccccc;
}
.rt {
	width:200px;
}
#all {
	margin-top:20px;
	margin-left:10px;
}
.lft {
	background-color:#dddddd;
	width:50px;
	text-align:center;
}
.rt {
	text-indent:5px;
}
</style>
</head>

<body>
	<div id="all">
	<div id="pic">
		<img src="${pageContext.request.contextPath }/${product.ppicture }" alt="此商品暂时无图片" width="143" height="112" />
	</div>
	<table id="info">
		<tr>
			<td class="lft">产品编号</td>
			<td class="rt">${product.pid }</td>
		</tr>
		<tr>
			<td class="lft">产品名称</td>
			<td class="rt">${product.pname }</td>
		</tr>
		<tr>
			<td class="lft">产品品牌</td>
			<td class="rt">${product.pbrand }</td>
		</tr>
		<tr>
			<td class="lft">产品型号</td>
			<td class="rt">${product.pmodel }</td>
		</tr>
		<tr>
			<td class="lft">产品价格</td>
			<td class="rt">${product.pprice }</td>
		</tr>
		<tr>
			<td class="lft">产品介绍</td>
			<td class="rt">${product.pdes }</td>
		</tr>
	</table>
	</div>
</body>
</html>
