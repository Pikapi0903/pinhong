<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理人员-管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_admin.css">
</head>
<body>
	<table cellspacing="1" cellpadding="4" width="100%" class="tableborder"
		id="table3">
		<tr>
			<td colspan="7" class="header">商品管理</td>
		</tr>
		<tr>
			<td align="center" class="altbg1"><b>商品编号</b></td>
			<td align="center" class="altbg1"><b>商品名称</b></td>
			<td align="center" class="altbg1"><b>商品商标</b></td>
			<td align="center" class="altbg1"><b>商品型号</b></td>
			<td align="center" class="altbg1"><b>商品价格</b></td>
			<td align="center" class="altbg1"><b>修改</b></td>
			<td align="center" class="altbg1"><b>删除</b></td>
		</tr>

		<c:forEach items="${pb.beanList }" var="p" varStatus="s">
			<tr>
				<td align="center" class="altbg2">${s.index+1 }</td>
				<td class="altbg2" align="center">${p.pname }</td>
				<td class="altbg2" align="center">${p.pbrand }</td>
				<td class="altbg2" align="center">${p.pmodel }</td>
				<td class="altbg2" align="center">&nbsp; 
				<fmt:formatNumber value='${p.pprice }' type='currency' pattern='.00' /></td>
				<td class="altbg2" align="center"><a href="${pageContext.request.contextPath}/admin/product/editUI/${p.pid }">修改</a></td>
				<td class="altbg2" align="center"><a href="${pageContext.request.contextPath}/admin/product/delete/${p.pid }" onclick="return window.confirm('确认删除该商品吗？');">删除</a></td>
			</tr>
		</c:forEach>
	</table>
	<%@ include file="/WEB-INF/jsp/public/pageViewLong.jspf" %>
</body>
</html>