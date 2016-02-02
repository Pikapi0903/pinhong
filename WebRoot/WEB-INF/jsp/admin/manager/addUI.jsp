<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>管理员-添加</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_admin.css">
	</head>

	<body>
		<form action="${pageContext.request.contextPath}/admin/manager/add" method="post">
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">
				<tr>
					<td colspan="12" class="header">
						管理员-添加
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						管理员名称：
					</td>
					<td class="altbg2" colspan="11">
						<input type="text" name="uname" value="${managerCustom.uname}" size="34">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						密&nbsp; 码：
					</td>
					<td class="altbg2" colspan="11">
						<input type="password" name="upwd" value="${managerCustom.upwd}" size="34">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						确认密码：
					</td>
					<td class="altbg2" colspan="11">
						<input name="confirmpassword" value="${managerCustom.confirmpassword}" size="34" type="password">
					</td>
				</tr>


				<tr>
					<td class="altbg1">
					</td>
					<td class="altbg2" colspan="11">
						<input type="submit" value="提交">
						&nbsp;
						<input type="reset" value="重置">
					</td>
				</tr>

			</table>
		</form>
		
		<c:if test="${errors != null}">
			<c:forEach items="${errors.allErrors}" var="error">
				<p>${error.defaultMessage}</p>
			</c:forEach>
		</c:if>
	</body>

</html>
