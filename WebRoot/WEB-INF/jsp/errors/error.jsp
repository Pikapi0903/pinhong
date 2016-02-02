<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>错误页面</title>
</head>

<body>
	<c:if test="${message != null}">
		<p style="font-size:26px;font-weight:bold;">${message}</p>
	</c:if>
</body>

</html>