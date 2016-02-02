<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>品红公司-站内消息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
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
		<tr>
			<td colspan="2" style="border-bottom: #E3E3E3 1px solid;" height="30">
				<iframe src="${pageContext.request.contextPath}/home/webSrc2" width="799" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>				
			</td>
		</tr>
		<tr>
			<td style="border-right: #E3E3E3 1px solid;" height="420">
				<iframe src="${pageContext.request.contextPath}/home/showProduct" width="200" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>
			</td>
			<td>
				<iframe src="${pageContext.request.contextPath}/home/detailsNews/${nid}" width="613" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>
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
