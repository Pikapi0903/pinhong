<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品-添加</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style_admin.css">
</head>

<body>
	<form name="form1"
		action="${pageContext.request.contextPath}/admin/product/add"
		method="post" enctype="multipart/form-data">
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">

			<tr>
				<td colspan="12" class="header">添加商品信息</td>
			</tr>
			<tr>
				<td class="altbg1">商品名称：</td>
				<td class="altbg2" colspan="11"><input type="text" name="pname"
					value="${product.pname}" size="34"></td>
			</tr>
			<tr>
				<td class="altbg1">商品商标：</td>
				<td class="altbg2" colspan="11"><input type="text"
					name="pbrand" value="${product.pbrand}" size="34"></td>
			</tr>
			<tr>
				<td class="altbg1">商品型号：</td>
				<td class="altbg2" colspan="11"><input type="text"
					name="pmodel" value="${product.pmodel}" size="34"></td>
			</tr>
			<tr>
				<td class="altbg1">商品价格：</td>
				<td class="altbg2" colspan="11"><input type="text"
					name="pprice" value="${product.pprice}" size="34" /></td>
			</tr>
			<tr>
				<td class="altbg1">商品图片：</td>
				<td class="altbg2" colspan="11"><input type="file"
					name="product_pic" size="34"></td>
			</tr>
			<tr>
				<td class="altbg1">商品介绍：</td>
				<td class="altbg2" colspan="11"><textarea rows="5" cols="60"
						name="pdes">${product.pdes}</textarea></td>
			</tr>
			<tr>
				<td class="altbg1"></td>
				<td class="altbg2" colspan="11"><input type="submit" value="提交"
					name="B1" /> &nbsp; <input type="reset" value="重置" name="B2" /></td>
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
