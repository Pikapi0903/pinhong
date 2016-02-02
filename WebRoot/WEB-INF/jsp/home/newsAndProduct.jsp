<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'NewsAndCommandProduct.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<style type="text/css">
		a{
			font-size:13px;
			color:#000000;
			text-decoration:none;
		}
		a:hover{
			font-size:14px;
			color:#FF0000;
			text-decoration:underline;
		}
	</style>
  </head>
  
  <body>
	<table align="center" width="620" height="230" border="0" cellpadding="0" cellspacing="0">
	  <tr height="35">
		<td width="352"><img src="${pageContext.request.contextPath}/Img_Proscenium/d_r7_c1.jpg" width="101" height="35" /><img src="${pageContext.request.contextPath}/Img_Proscenium/d02.jpg" width="157" height="35" /><img src="${pageContext.request.contextPath}/Img_Proscenium/d_r7_c14.jpg" width="94" height="35" /></td>
		<td rowspan="16">
			<table width="268" height="236" border="0" cellpadding="0" cellspacing="0">
			  <tr>
				<td><a href="${pageContext.request.contextPath}/home/showProductList" target="_parent"><img src="${pageContext.request.contextPath}/Img_Proscenium/d_r11_5_r1_c1.jpg" width="268" height="60" border="0" /></a></td>
			  </tr>
			  <tr>
				<td><a href="${pageContext.request.contextPath}/home/showProductList" target="_parent"><img src="${pageContext.request.contextPath}/Img_Proscenium/d_r11_5_r3_c1.jpg" width="268" height="60" border="0" /></a></td>
			  </tr>
			  <tr>
				<td><a href="${pageContext.request.contextPath}/home/showProductList" target="_parent"><img src="${pageContext.request.contextPath}/Img_Proscenium/d_r11_5_r4_c1.jpg" width="268" height="60" border="0" /></a></td>
			  </tr>
			  <tr>
				<td><a href="${pageContext.request.contextPath}/home/showProductList" target="_parent"><img src="${pageContext.request.contextPath}/Img_Proscenium/d_r11_5_r5_c1.jpg" width="268" height="60" border="0" /></a></td>
			  </tr>
			</table>
		</td>
	  </tr>
		<%-- <c:if test="${not empty pb.beanList}">
			<c:forEach items="${pb.beanList}" var="n">
				<tr>
					<td height="22">&nbsp;<a target="_parent" href="${pageContext.request.contextPath}/home/showNewsDetails/${n.nid }">${n.ntitle }<span style="color: red;float:right;">[<fmt:formatDate value="${n.ndate}" pattern="yyyy-MM-dd"/>]</span></a></td>
				</tr>
			  	<tr>
					<td><img src="${pageContext.request.contextPath}/Img_Proscenium/d03.jpg" width="352" height="1" /></td>
	  		 	</tr>
			</c:forEach>
		</c:if> --%>
		<c:if test="${not empty newsList}">
			<c:forEach items="${newsList}" var="n">
				<tr>
					<td height="22">&nbsp;<a target="_parent" href="${pageContext.request.contextPath}/home/showNewsDetails/${n.nid }">${n.ntitle }<span style="color: red;float:right;">[<fmt:formatDate value="${n.ndate}" pattern="yyyy-MM-dd"/>]</span></a></td>
				</tr>
			  	<tr>
					<td><img src="${pageContext.request.contextPath}/Img_Proscenium/d03.jpg" width="352" height="1" /></td>
	  		 	</tr>
			</c:forEach>
		</c:if>
	  <tr>
		<td><div align="right"><a href="${pageContext.request.contextPath}/home/showNews" target="_parent"><img src="${pageContext.request.contextPath}/Img_Proscenium/d_r11_c15.jpg" width="50" height="33" border="0" /></a></div></td>
	  </tr>
	</table>
  </body>
</html>
