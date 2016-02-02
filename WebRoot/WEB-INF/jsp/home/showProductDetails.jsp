<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'ShowProductDetails.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<style type="text/css">
	.red{
		color: #FF0000;
	}
	a{
		text-decoration:none; color:#000000;
	}
	a:hover{
		text-decoration:none; color:#000000;
	}
	.lt{
		border-left:1px solid;
		border-top:1px solid;
	}
	.ltr{
		border-left:1px solid;
		border-top:1px solid;
		border-right:1px solid;
	}
	.ltb{
		border-left:1px solid;
		border-top:1px solid;
		border-bottom:1px solid;
	}
	.ltrb{
		border-left:1px solid;
		border-top:1px solid;
		border-right:1px solid;
		border-bottom:1px solid;
	}
	</style>
  </head>
  
  <body>
	<table>
		<c:if test="${not empty pb.beanList}">
			<c:forEach items="${pb.beanList }" var="p">
				<tr>
					<td>
						<table width="580" border="0" cellspacing="0" cellpadding="0">
						  <tr>
						  	<td colspan="2" height="10">&nbsp;</td>
						  </tr>
						  <tr>
						    <td width="103" height="70"><div align="center">
						    <a href="${pageContext.request.contextPath}/home/mShowProductInfo/${p.pid }" target="_top">
						    <img src="${pageContext.request.contextPath}/${p.ppicture }" width="70" height="70" /></a>
						    </div></td>
						    <td width="510"><table width="510" height="70" style="border:1px solid;" cellpadding="0" cellspacing="0">
						      <tr>
						        <td><div align="center">
						          <table width="500" height="58" cellpadding="0" cellspacing="0" border="0"  style="font-size:12px; color:#999999;">
						            <tr>
						              <td width="100" height="28" class="lt" bgcolor="#EBEBEB" ><div align="center">产品名称</div></td>
						              <td width="150" class="lt"><div align="left"><a href="${pageContext.request.contextPath}/home/mShowProductInfo/${p.pid }" target="_top">&nbsp;${p.pname }</a></div></td>
						              <td width="100" class="lt" bgcolor="#EBEBEB" ><div align="center">产品品牌</div></td>
						              <td width="150" class="ltr"><div align="left" class="red">&nbsp;${p.pbrand }</div></td>
						            </tr>
						            <tr>
						              <td height="28" class="ltb" bgcolor="#EBEBEB" ><div align="center">产品型号</div></td>
						              <td class="ltb"><div align="left">&nbsp;${p.pmodel }</div></td>
						              <td class="ltb" bgcolor="#EBEBEB" ><div align="center">产品价格</div></td>
						              <td class="ltrb"><div align="left"><span class="red">&nbsp;${p.pprice }</span>元</div></td>
						            </tr>
						          </table>
						        </div></td>
						      </tr>
						    </table></td>
						  </tr>  
						  <tr>
						    <td height="20" colspan="2" >&nbsp;</td>
						  </tr>
						</table>
					</td>
				</tr>
			</c:forEach>
		</c:if>
		<tr>
			<td>
				<%@ include file="/WEB-INF/jsp/public/pageViewShort.jspf" %>
			</td>
			<td>&nbsp;</td>
		</tr>
	</table>
  </body>
</html>
