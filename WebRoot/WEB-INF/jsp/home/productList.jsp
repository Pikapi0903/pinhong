<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'Right.jsp' starting page</title>
    
	<style type="text/css">
		.border{
			border-left: 1px #CCCCCC dashed; 
			border-top: 1px #CCCCCC dashed;
			border-bottom: 1px #CCCCCC dashed;
		}
	</style>
  </head>
  
  <body>
	<table width="179" height="632" border="0" cellpadding="0" cellspacing="0" class="border">
	  <tr>
		<td height="42"><a href="${pageContext.request.contextPath}/home/showProductList" target="_parent"><img src="${pageContext.request.contextPath}/Img_Proscenium/d_r11_6.jpg" width="179" height="42" border="0" /></a></td>
	  </tr>
	  <c:if test="${not empty pb.beanList}">
	
	  		<tr align="center">
	  			<td>
	  				<div id=a style="overflow:hidden; height: 632px; width: 179px;">
	  				<div id=b>
	  					  	<c:forEach items="${pb.beanList}" var="p">
	  							<img src="${pageContext.request.contextPath}/${p.ppicture }" alt="${p.pname }" width="100%" height="112" align="middle" />
	  						</c:forEach>
	  				</div>
	  				<div id=c></div>
	  				</div>
  					<script type="text/javascript">
						var speed=30;
							c.innerHTML=b.innerHTML;
							a.scrollTop=b.offsetHeight;
						function Marquee(){
							if(a.scrollTop<=0)
								a.scrollTop=b.offsetHeight;
							else{
								a.scrollTop--;
							}
						}
						var MyMar=setInterval(Marquee,speed);
						a.onmouseover=function() {clearInterval(MyMar);};
						a.onmouseout=function() {MyMar=setInterval(Marquee,speed);};
					</script>
				</td>
	  		</tr>
	  </c:if>
	</table>
  </body>
</html>
