<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理人员-管理</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style_admin.css">
</head>
<body>
	<table cellspacing="1" cellpadding="4" width="100%" class="tableborder"
		id="table3">
		<tr>
			<td colspan="4" class="header">新闻管理</td>
		</tr>
		<tr>
			<td align="center" class="altbg1"><b>新闻标题</b></td>
			<td align="center" class="altbg1"><b>新闻发布时间</b></td>
			<td align="center" class="altbg1"><b>修改</b></td>
			<td align="center" class="altbg1"><b>删除</b></td>
		</tr>
		<c:forEach items="${pb.beanList }" var="n">

			<tr>
				<td align="center" class="altbg2">${n.ntitle }</td>
				<td class="altbg2" align="center"><fmt:formatDate
						value='${n.ndate }' pattern='yyyy-MM-dd' /></td>
				<td class="altbg2" align="center"><a
					href="${pageContext.request.contextPath}/admin/news/editUI/${n.nid}">修改</a>
				</td>
				<td class="altbg2" align="center"><a
					href="${pageContext.request.contextPath}/admin/news/delete/${n.nid}"
					onclick="return window.confirm('确认删除该条新闻吗？')">删除</a></td>
			</tr>
		</c:forEach>
	</table>
	<%@ include file="/WEB-INF/jsp/public/pageViewLong.jspf" %>
</body>
</html>