<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>品红公司-首页</title>
    
	<style type="text/css">
		.border{
			border-left:1px #CCCCCC dashed;
			border-right:1px #CCCCCC dashed;
			border-top:1px #CCCCCC dashed;
			border-bottom:1px #CCCCCC dashed;
		}
	</style>
  </head>
  
  <body>
	<table class="border" width="799" align="center" style="margin:0 auto;" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="2" align="center" height="217">
				<iframe src="${pageContext.request.contextPath}/home/top" width="799" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>
			</td>
		</tr>
		<tr height="247">
			<td align="center">
				<iframe src="${pageContext.request.contextPath}/home/newsAndProduct" width="620" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>
			</td>
			<td rowspan="3" height="632">
				<iframe src="${pageContext.request.contextPath}/home/productList" width="188" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>
			</td>
		</tr>
		<tr height="260">
			<td align="left">
				<iframe src="${pageContext.request.contextPath}/home/productServer" width="620" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>
			</td>
		</tr>
		<tr height="125">
			<td align="left">
				<iframe src="${pageContext.request.contextPath}/home/telAndCopartner" width="620" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>
			</td>			
		</tr>
		<tr height="30">
			<td colspan="2" align="center">
				<iframe src="${pageContext.request.contextPath}/home/bottom" width="799" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>
			</td>
		</tr>
	</table>
  </body>
</html>
