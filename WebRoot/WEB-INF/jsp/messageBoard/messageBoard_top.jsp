<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'MessageBoard_top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

  </head>
  
  <body background="${pageContext.request.contextPath}/Img_Background/bookbg.gif">
	<table align="center" width="750">
		<tr>
			<td colspan="4" align="center" height="30">
				<iframe src="${pageContext.request.contextPath}/messageBoard/navigator" width="750" marginheight="0" scrolling="no" frameborder="0" height="100%"></iframe>
			</td>
		</tr>
  	  <tr>
	    <td colspan="4"><img src="${pageContext.request.contextPath}/Img_Background/welcome.jpg" width="750" height="135" /></td>
	  </tr>
	  <tr>
	    <td height="20" colspan="4">
			<marquee onMouseOut=start(); onMouseOver=stop(); scrollamount=3>
				<b><font color=#000099 size="3">欢迎您使用&nbsp;留言本&nbsp;</font> </b>
			</marquee>
		</td>
	  </tr>
	</table>
  </body>
</html>
