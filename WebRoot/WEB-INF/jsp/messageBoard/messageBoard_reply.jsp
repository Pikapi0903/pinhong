<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'MessageBoard_replay.jsp' starting page</title>
    
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
	.contentsty {
		font-size: 14px;
	}
	.gray{
		font-size: 14px; color: #000000; 
	}
	.ltr{
		border-left: #6699FF 1px solid;
		border-top: #6699FF 1px solid;
		border-right: #6699FF 1px solid;
	}
	.lr{
		border-left: #6699FF 1px solid;
		border-right: #6699FF 1px solid;
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
	.red {color: #FF0000}
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
	    <td height="25" colspan="4"><span class="title">主题: ${message.mtitle }</span></td>
	  </tr>
	  <tr>
	    <td width="12"><img src="${pageContext.request.contextPath}/Img_Background/titlemu_1.gif" width="12" height="25" /></td>
	    <td width="42" background="${pageContext.request.contextPath}/Img_Background/titlemu_2.gif"><div align="center" class="r">留言</div></td>
	    <td width="12"><img src="${pageContext.request.contextPath}/Img_Background/titlemu_3.gif" width="12" height="25" /></td>
	    <td width="684">&nbsp;</td>
	  </tr>
	  <tr>
	    <td colspan="4"><img src="${pageContext.request.contextPath}/Img_Background/T_left.gif" width="140" height="21" /><img src="${pageContext.request.contextPath}/Img_Background/Tt_bg.gif" width="554" height="21" /><img src="${pageContext.request.contextPath}/Img_Background/T_right.gif" width="56" height="21" /></td>
	  </tr>
	  <tr>
	    <td colspan="4"><table width="750" height="148" border="0" cellpadding="0" cellspacing="0">
	      <tr>
	        <td><table width="750" height="54" border="0" cellpadding="0" cellspacing="0">
	          <tr>
	            <td height="22" background="${pageContext.request.contextPath}/Img_Background/title.gif" class="ltr"><font style="font-size: 12px; font-weight: bold;">&nbsp;&nbsp;※&nbsp;&nbsp;${message.mtitle }</font></td>
	          </tr>
	          <tr>
	            <td height="20" class="lr" ><p class="content">&nbsp;${message.mcontent }</p></td>
	          </tr>
	          <tr>
	            <td height="100" class="lrb">&nbsp;</td>
	          </tr>
	          <tr>
	            <td height="20" class="lrb"><span class="gray">&nbsp;${message.mname }&nbsp;写于&nbsp;<fmt:formatDate value="${message.mdate }" pattern="yyyy-MM-dd HH:mm:ss"/></span><span class="gray" style="float:right;">楼主&nbsp;&nbsp;&nbsp;</span></td>
	          </tr>
	        </table></td>
	      </tr>
	    </table></td>
	  </tr>
	  <tr>
	    <td colspan="4"><img src="${pageContext.request.contextPath}/Img_Background/T_bottomleft.gif" width="145" height="17" /><img src="${pageContext.request.contextPath}/Img_Background/T_bottombg.gif" width="460" height="17" /><img src="${pageContext.request.contextPath}/Img_Background/T_bottomright.gif" width="145" height="17" /></td>
	  </tr>
	  <tr>
	    <td height="25" colspan="4">&nbsp;</td>
	  </tr>
	  <tr>
	    <td height="18" colspan="4"><table width="750" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="12"><img src="${pageContext.request.contextPath}/Img_Background/titlemu_1.gif" width="12" height="25" /></td>
	        <td width="60" background="${pageContext.request.contextPath}/Img_Background/titlemu_2.gif"><div align="center" class="r">回复内容</div></td>
	        <td width="12"><img src="${pageContext.request.contextPath}/Img_Background/titlemu_3.gif" width="12" height="25" /></td>
	        <td width="666">&nbsp;</td>
	      </tr>
	      <c:if test="${not empty pb.beanList}">
	      <c:forEach items="${pb.beanList}" var="re" varStatus="s">
	      <tr>
	        <td colspan="4"><table width="750" border="0" cellspacing="0" cellpadding="0">
	            <tr>
	              <td><table width="750" height="100" border="0" cellpadding="0" cellspacing="0">
	                <tr>
	                  <td><table width="750" border="0" cellspacing="0" cellpadding="0">
	                    <tr>
	                      <td><img src="${pageContext.request.contextPath}/Img_Background/T_left.gif" width="140" height="21" /><img src="${pageContext.request.contextPath}/Img_Background/Tt_bg.gif" width="554" height="21" /><img src="${pageContext.request.contextPath}/Img_Background/T_right.gif" width="56" height="21" /></td>
	                    </tr>
	                    <tr>
	                      <td><table width="750" height="54" border="0" cellpadding="0" cellspacing="0">
	                        <tr>
	                          <td height="22" class="ltr"><p class="content">&nbsp;${re.rcontent }</p></td>
	                        </tr>
	                        <tr>
	                          <td height="100" class="lrb" ><p class="content">&nbsp;</p></td>
	                        </tr>
	                        <tr>
	                          <td height="20" class="lrb"><span class="gray">&nbsp;${re.rname }&nbsp;写于&nbsp;<fmt:formatDate value="${re.rdate }" pattern="yyyy-MM-dd HH:mm:ss" /></span><span class="gray" style="float:right;">${(pb.pageNum-1)*pb.pageSize+s.index+2}楼&nbsp;&nbsp;&nbsp;</span></td>
	                        </tr>
	                      </table></td>
	                    </tr>
	                    <tr>
	                      <td><img src="${pageContext.request.contextPath}/Img_Background/T_bottomleft.gif" width="145" height="17" /><img src="${pageContext.request.contextPath}/Img_Background/T_bottombg.gif" width="460" height="17" /><img src="${pageContext.request.contextPath}/Img_Background/T_bottomright.gif" width="145" height="17" /></td>
	                    </tr>
	                    <tr>
	                      <td>&nbsp;</td>
	                    </tr>
	                  </table></td>
	                </tr>
	              </table></td>
	            </tr>
	          </table>
	         </td>
	        </tr>
	       </c:forEach>
	      </c:if>
	    </table></td>
	  </tr>
	  
	  <tr>
	  <td colspan="4">
	  	<div align="right">
		    <c:choose>
				<c:when test="${pb.totalPages eq 0 }">
					<div style="width:750px; height:60px;border:1px solid #999999;">
						<p style="text-align:left;text-indent:20px;font-size:22px;font-weight:bold;color:#893322">暂无回复，快来抢沙发吧~~~</p>
					</div>
				</c:when>
				<c:otherwise>
			    	[第${pb.pageNum }页]/[共${pb.totalPages }页]
			    </c:otherwise>
		    </c:choose>
		    <c:if test="${pb.pageNum>1 }">
		    <a href="${pb.url }?mid=${message.mid }&pageNum=${pb.pageNum-1 }" target="_self" style="text-decoration:none; color:#999999; font-size:13px;"><button>上一页</button></a>
		    </c:if>
		    <c:if test="${pb.pageNum>1 and pb.pageNum<pb.totalPages }">|</c:if>
		    <c:if test="${pb.pageNum<pb.totalPages }">
		    <a href="${pb.url }?mid=${message.mid }&pageNum=${pb.pageNum+1 }" target="_self" style="text-decoration:none; color:#999999; font-size:13px;"><button>下一页</button></a>
		    </c:if>
		</div>
		</td>
	  </tr>
	  
	  <tr>
	    <td height="25" colspan="4"><form id="form1" name="form1" method="post" action="${pageContext.request.contextPath}/messageBoard/fastRevert" target="_parent">
	      <table width="750" border="0" cellpadding="0" cellspacing="0">
	        <tr>
	          <td>
	          <table width="750" border="0" cellpadding="0" cellspacing="0">
	            <tr>
	              <td height="10" colspan="3">&nbsp;</td>
	            </tr>
	            <tr>
	              <td height="23" colspan="3" class="ltrbbb"><div align="center" class="minbold">快 速 回 复</div></td>
	            </tr>
	            <tr>
	              <td width="71" height="25" class="l">&nbsp;</td>
	              <td width="60"><span class="title">用户名：</span></td>
	              <td width="642" class="right"><label>
	                <input type="text" name="rname" size="15"/>
	                <input name="mid" type="hidden" value="${message.mid }"/>
	                </label></td>
	            </tr>
	            <tr>
	              <td class="l">&nbsp;</td>
	              <td><span class="title">内容：</span></td>
	              <td class="right"><label>
	                <textarea name="rcontent" cols="78" rows="6"></textarea>
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
