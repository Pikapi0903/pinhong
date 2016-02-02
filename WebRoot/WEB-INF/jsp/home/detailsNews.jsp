<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'DetailsNews.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<style type="text/css">
	.title {
		font-size: 16px;
		font-weight: bold;
	}
	#Layer1 {
		position:absolute;
		width:523px;
		height:200px;
		z-index:1;
		left: 50px;
		top: 87px;
	}
	.date {
		color: #999999;
		font-size: 12px;
	}
	#Layer2 {
		position:absolute;
		width:100px;
		height:12px;
		z-index:2;
		left: 480px;
		top: 380px;
	}
	</style>
  </head>
  
  <body>
	<table width="613" border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <td height="50" colspan="2" background="${pageContext.request.contextPath}/Img_Proscenium/cg2.jpg"><div align="center"><span class="title">${news.ntitle }</span></div></td>
	  </tr>
	  <tr>
	    <td height="259" colspan="2"><div id="Layer1">${news.ncontent }</div></td>
	  </tr>
	  <tr>
	    <td width="463" height="72">&nbsp;</td>
	    <td width="150"><div align="center"><img src="${pageContext.request.contextPath}/Img_Proscenium/n10.jpg" width="165" height="72" /></div></td>
	  </tr>
	  <tr>
	    <td height="50" colspan="2"><div id="Layer2">
	      <div align="right"><span class="date">${news.ndate }</span></div>
	    </div></td>
	  </tr>
	</table>
  </body>
</html>
