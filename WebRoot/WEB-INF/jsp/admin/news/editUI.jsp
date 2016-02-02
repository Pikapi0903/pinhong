<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<title>updateNews</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_admin.css">

</head>

<body>
	<form name="form1" action="${pageContext.request.contextPath}/admin/news/edit" method="post">
		<table cellspacing="1" cellpadding="4" width="100%" align="left"
			class="tableborder" id="table3">
			<tr>
				<td colspan="2" class="header">更改新闻信息</td>
			</tr>
			<tr>
				<td class="altbg1">新闻编号：</td>
				<td class="altbg2"><input type="text" name="nid" size="30"
					readonly="readonly" value="${news.nid}" />
				</td>
			</tr>
			<tr>
				<td class="altbg1">新闻标题：</td>
				<td class="altbg2"><input type="text" name="ntitle" size="30"
					value="${news.ntitle}" />
				</td>
			</tr>
			<tr>
				<td class="altbg1">新闻内容：</td>
				<td><textarea rows="5" cols="60" name="ncontent">${news.ncontent}</textarea>
				</td>
			</tr>
			<tr>
				<td class="altbg1"></td>
				<td class="altbg2" colspan="11"><input type="submit"
					value="提 交" name="B1" /> &nbsp; <input type="reset" value="重 置"
					name="B2" /></td>
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
