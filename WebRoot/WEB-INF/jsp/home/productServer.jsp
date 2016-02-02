<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'ProductServer.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

</head>

<body>
	<table width="620" height="250" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="3" background="${pageContext.request.contextPath}/Img_Proscenium/d_r11_8.jpg"><img
				src="${pageContext.request.contextPath}/Img_Proscenium/d_r13_c1.jpg" width="160" height="27" />
			</td>
			<td background="${pageContext.request.contextPath}/Img_Proscenium/d_r11_8.jpg"><div align="right">
					<a href="${pageContext.request.contextPath}/home/showProductList" target="_parent"><img
						src="${pageContext.request.contextPath}/Img_Proscenium/d_r13_c21.jpg" width="66" height="27" border="0" /> </a>
				</div>
			</td>
		</tr>

		<c:if test="${not empty pb.beanList }">
			<c:forEach items="${pb.beanList }" var="p" varStatus="s">
				<c:if test="${s.index%4 eq 0 }"><tr></c:if>
				<td>
					<div align="center"><a href="${pageContext.request.contextPath}/home/mShowProductInfo/${p.pid}" target="_parent"><img src="${pageContext.request.contextPath}/${p.ppicture}" width="143" height="112" border="0" /></a></div>
				</td>
				<c:if test="${(s.index+1)%4 eq 0}"></tr></c:if>
			</c:forEach>
		</c:if>
	</table>
</body>
</html>
