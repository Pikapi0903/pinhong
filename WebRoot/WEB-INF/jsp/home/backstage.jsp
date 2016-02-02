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
		#all {
			background-color:#f7cbdb;
			padding-top:20px;
			height:400px;
			width:599px;
		}
		#login {
			margin-left:110px;
		}
		#login td {
			height:40px;
		}
		.errorInfo {
			width:150px;
		}
		#bt {
			margin-left:210px;
		}
		#msg {
			margin-left:200px;
		}
		#msg span {
			color:#ff0000;
			font-size:20px;
			font-weight:bold;
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
				<iframe src="${pageContext.request.contextPath}/home/webSrc_qiyejianzhan" width="799" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>				
			</td>
		</tr>
		<tr>
			<td style="border-right: #E3E3E3 1px solid;width:200;height:420;">
				<iframe src="${pageContext.request.contextPath}/home/showProduct" width="200" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>
			</td>
			<td>
				<div id="all">
					<form action="${pageContext.request.contextPath}/home/managerLogin" method="post">
				    	<table id="login">
				    		<tr>
				    			<th></th>
				    			<th>管&nbsp;理&nbsp;员&nbsp;登&nbsp;录</th>
				    			<th></th>
				    		</tr>
				    		<tr>
				    			<td>您的帐号：</td>
				    			<td>
				    				<input type="text" name="uname" value="${form.uname }" />
				    			</td>
				    			<td class="errorInfo"><span>${error.ur }</span></td>
				    		</tr>
				    		<tr>
				    			<td>您的密码：</td>
				    			<td>
				    				<input type="password" name="upwd" value="${form.upwd }" />
				    			</td>
				    			<td class="errorInfo"><span>${error.pr }</span></td>
				    		</tr>
				    	</table>
				    	<div id="bt"><input type="submit" value="登录" />&nbsp;&nbsp;&nbsp;<input type="reset" value="重置" /></div>
				    </form>
				    <div id="msg"><span>${msg }</span></div>
				</div>
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
