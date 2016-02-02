<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'addMessage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<style type="text/css">
	.title {font-size: 12px}
	.r {
		font-size: 12px;
		font-weight: bold;
		margin-top:3px;
	}
	.lrb{
		border-left: #6699FF 1px solid;
		border-right: #6699FF 1px solid;
		border-bottom: #6699FF 1px solid;
	}
	.minbold {
		font-size: 12px;
		font-weight: bold;
	}
	.ltrbbb{
		border-left: #6699FF 1px solid;
		border-top: #6699FF 1px solid;
		border-right: #6699FF 1px solid;
		border-bottom: #999999 1px solid;
	}
	.l{
		border-left: #6699FF 1px solid;
	}
	.right{
		border-right: #6699FF 1px solid;
	}
	.lb{
		border-left: #6699FF 1px solid;
		border-bottom: #6699FF 1px solid;
	}
	.b{
		border-bottom: #6699FF 1px solid;
	}
	.rb{
		border-right: #6699FF 1px solid;
		border-bottom: #6699FF 1px solid;
	}
	</style>
  </head>
  
  <body background="${pageContext.request.contextPath}/Img_Background/bookbg.gif">
	<table width="750" border="0" cellspacing="0" cellpadding="0" align="center">
	  <tr>
	    <td height="25" colspan="4"><form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/messageBoard/messageAdd" target="_parent">
	      <table width="750" border="0" cellpadding="0" cellspacing="0">
	        <tr>
	          <td>
	          <table width="750" border="0" cellpadding="0" cellspacing="0">
	            <tr>
	              <td height="10" colspan="3">&nbsp;</td>
	            </tr>
	            <tr>
	              <td height="23" colspan="3" class="ltrbbb"><div align="center" class="minbold">添 加 留 言</div></td>
	            </tr>
	            <tr>
	            	<td width="71" height="25" class="l">&nbsp;</td>
	              	<td width="37"><span class="title">作者：</span></td>
	              	<td width="642" class="right"><label>
	                	<input type="text" name="mname" size="10"/>
	                </label></td>
	            </tr>
	            <tr>
	              <td width="71" height="25" class="l">&nbsp;</td>
	              <td width="37"><span class="title">标题：</span></td>
	              <td width="642" class="right"><label>
	                <input type="text" name="mtitle" size="30"/>
	                </label></td>
	            </tr>
	            <tr>
	              <td class="l">&nbsp;</td>
	              <td><span class="title">内容：</span></td>
	              <td class="right"><label>
	                <textarea name="mcontent" cols="78" rows="6"></textarea>
	              </label></td>
	            </tr>
	            <tr>
	              <td height="28" class="lb">&nbsp;</td>
	              <td class="b">&nbsp;</td>
	              <td class="rb"><label>
	                <input type="image" src="${pageContext.request.contextPath}/Img_Background/post.gif">
	              </label></td>
	            </tr>
	            <tr>
	              <td colspan="3">&nbsp;</td>
	              </tr>
	          </table></td>
	        </tr>
	      </table>
	        </form>
	    </td>
	  </tr>
	</table>
	</body>
</html>
