<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'Navigator.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<style type="text/css">
	#nv {
		width:700px;
		height:16px;
		margin:0;
		padding:0;
	}
	a {
		font-weight:bold;
		text-decoration:none;
	}
	a:hover {
		color:#fb9e24;
	}
	#lg {
		float:right;
	}
	#logout {
		font-size:14px;
	}
	#hpic {
		width:25px;
		height:25px;
	}
	</style>
  </head>
  
  <body>
    <div id="nv"><a href="${pageContext.request.contextPath}/home/home" target="_top"><button>主页</button></a>
    <span id="lg">
    <%-- <c:choose>
    	<c:when test="${not empty sessionScope.user}">
    	<c:choose>
    		<c:when test="${not empty sessionScope.user.upic }">
    			<img id="hpic" src="${pageContext.request.contextPath}/${sessionScope.user.upic }" />
    		</c:when>
    		<c:otherwise><img id="hpic" alt="no" src="${pageContext.request.contextPath}/img/default_head.bmp"/></c:otherwise>
    	</c:choose>
    	[欢迎，${sessionScope.user.uname }]&nbsp;<span id="logout"><a href="${pageContext.request.contextPath}/" target="_top">退出</a></span></c:when>
    	<c:otherwise><a href="${pageContext.request.contextPath}/Jsp_Proscenium/userLogin.jsp' />" target="_top">[请登录]</a></c:otherwise>
    </c:choose> --%>
    </span>
    </div>
  </body>
</html>
