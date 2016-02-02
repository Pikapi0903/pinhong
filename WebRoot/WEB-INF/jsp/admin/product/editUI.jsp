<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员-添加</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_admin.css">
</head>

<body>
	<form name="form1"
		action="${pageContext.request.contextPath}/admin/product/edit"
		method="post" enctype="multipart/form-data">
		<table cellspacing="1" cellpadding="4" width="100%" align="left"
			class="tableborder" id="table3">
			<tr>
				<td colspan="12" class="header">更改商品信息</td>
			</tr>
			<tr>
				<td class="altbg1">商品编号：</td>
				<td class="altbg2"><input type="text" name="pid" size="34"
					readonly="readonly" value="${product.pid}" /></td>
			</tr>
			<tr>
				<td class="altbg1">商品名称：</td>
				<td class="altbg2"><input type="text" name="pname" size="34"
					value="${product.pname}" " /></td>
			</tr>
			<tr>
				<td class="altbg1">商品商标：</td>
				<td class="altbg2"><input type="text" name="pbrand" size="34"
					value="${product.pbrand}" /></td>
			</tr>
			<tr>
				<td class="altbg1">商品型号：</td>
				<td class="altbg2"><input type="text" name="pmodel" size="34"
					value="${product.pmodel}" /></td>
			</tr>
			<tr>
				<td class="altbg1">商品价格：</td>
				<td class="altbg2"><input type="text" name="pprice" size="34"
					value="${product.pprice}" /></td>
			</tr>
			<tr>
				<td class="altbg1">商品图片：</td>
				<td class="altbg2"><img
					src="/pic/${product.ppicture}"
					id="mypic" border="0" height="50" width="80" align="bottom" /> <input
					type="file" size="10" name="product_pic" /> <!-- 保存默认路径 --> <!-- input type="hidden" name="ppicture" value="${prdInf.ppicture }" /-->
				</td>
			</tr>
			<tr>
				<td class="altbg1">商品介绍：</td>
				<td class="altbg2"><textarea rows="5" cols="60" name="pdes">${product.pdes}</textarea>
				</td>
			</tr>


			<tr>
				<td class="altbg1"></td>
				<td class="altbg2"><input type="submit" value="提交" name="B1"
					onclick="return fun_check_form()" /> &nbsp; <input type="reset"
					value="重置" name="B2" /></td>
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
