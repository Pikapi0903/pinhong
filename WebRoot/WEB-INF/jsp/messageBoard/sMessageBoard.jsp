<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'S_MessageBoard.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    

  </head>
  
  <body  background="${pageContext.request.contextPath}/Img_Background/bookbg.gif">
    <table align="center" width="770">
    	<tr>
    		<td><iframe src="${pageContext.request.contextPath}/messageBoard/messageBoard_top" width="100%" marginheight="0" scrolling="no" frameborder="0" height="200"></iframe></td>
    	</tr>
    	<tr>
    		<td><iframe src="${pageContext.request.contextPath}/messageBoard/messageBoard_main" width="100%" marginheight="0" scrolling="no" frameborder="0" height="450"></iframe></td>
    	</tr>
    </table>
  </body>
</html>
