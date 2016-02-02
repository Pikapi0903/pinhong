<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
		<title>管理首页</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style_admin.css">
	</head>

	<script>
function mfk()
{
   if(shang.style.display=='none')
    {
     shang.style.display='';
    }
   else
   {
     shang.style.display='none';
   }
}
</script>
	<body>
		<table width="100%" height="100%" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td id='shang' width="162" height="100%">
					<iframe frameBorder="0" id="left" name="left" src="${pageContext.request.contextPath}/admin/left"
						height="100%" width="162" >
					</iframe>
				</td>
				
				<td align="center" class="unnamed1" onClick="mfk();" height="100%">
					<table width="100%" height="100%" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td bgcolor="#3A5F94">
								<font color="#FFFFFF">点此切换</font>
							</td>
						</tr>
					</table>
				</td>
				<td width="100%" height="100%">
					<iframe frameBorder="0" id="main" name="main" scrolling="no"
						src="${pageContext.request.contextPath}/admin/right" height="100%" width="100%"></iframe>
				</td>
			</tr>
		</table>
	</body>
</html>


