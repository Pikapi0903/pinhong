<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理人员-管理</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_admin.css">
</head>
<body>
	<table cellspacing="1" cellpadding="4" width="100%" class="tableborder"
		id="table3" align="center">
		<tr>
			<td colspan="3" class="header">&nbsp; 用户管理</td>
		</tr>
		<tr>
			<td align="center" class="altbg1"><b>用户名</b></td>
			<td align="center" class="altbg1"><b>身份代码</b></td>
			<td align="center" class="altbg1"><b>操作</b></td>
		</tr>
		<c:forEach items="${pb.beanList}" var="u">
			<tr>
				<td align="center" class="altbg2">${u.uname }</td>
				<td class="altbg2" align="center">${u.ustatus }</td>
				<td class="altbg2" align="center"><a href="${pageContext.request.contextPath}/admin/user/delete/${u.uid}"
					onclick="return window.confirm('确定要删除该用户吗？')">删除</a></td>
			</tr>

		</c:forEach>
	</table>
	<%@ include file="/WEB-INF/jsp/public/pageViewLong.jspf" %>
</body>
</html>