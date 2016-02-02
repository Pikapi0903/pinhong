<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'NewsList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<style type="text/css">
	.newsList {
		font-size: 18px;
		font-weight: bold;
	}
	a{text-decoration:none; color:#777777; font-size:13px;}
	a:hover{text-decoration:none; color:#FF0000; font-size:13px;}
	td {
		border-bottom:1px dashed #cccccc;
		height:33px;
	}
	</style>
  </head>
  
  <body>
	<table width="613" border="0" cellpadding="0" cellspacing="0" style="font-size:13px; color:#000000;">
	  <tr>
	    <td width="10">&nbsp;</td>
	    <td colspan="4"><span class="newsList">新闻列表</span></td>
	  </tr>
	  <c:if test="${not empty pb.beanList}">
	  	<c:forEach items="${pb.beanList}" var="n" varStatus="vs">
		  <tr>
		    <td width="10">&nbsp;</td>
		    <td width="70">&nbsp;${vs.index+1 }</td>
		    <td colspan="3"><a href="${pageContext.request.contextPath}/home/showNewsDetails/${n.nid}" target="_parent">${n.ntitle }&nbsp;&nbsp;&nbsp;[<fmt:formatDate value="${n.ndate}" pattern="yyyy-MM-dd"/>]</a></td>
		  </tr>
	  	</c:forEach>
	  </c:if>
	</table>
	<%@ include file="/WEB-INF/jsp/public/pageViewShort.jspf" %>
  </body>
</html>
