<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>
<script type="text/javascript" src="js/users.js" charset="utf-8"></script>
<script type="text/javascript" src="js/date.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="<%=basePath%>">首页</a>
			<code> &gt; </code>
			用户注册
		</div>
	</div>
	<div class="blank"></div>
	<div class="block">
		<div class="box">
			<div class="box_1">
				<h3>
					<span>用户注册</span>
				</h3>
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr valign="top">
						<td bgcolor="#FFFFFF" align="center">
							<form action="index/register.action" method="post" onsubmit="return check();" name="myform">
								<table width="60%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
									<tr>
										<td width="28%" align="right" bgcolor="#FFFFFF">用户名：</td>
										<td width="76%" align="left" bgcolor="#FFFFFF"><input type="text" name="username" id="username" size="25"
											class="inputBg" id="username" /></td>
									</tr>
									<tr>
										<td width="28%" align="right" bgcolor="#FFFFFF">密码：</td>
										<td width="76%" align="left" bgcolor="#FFFFFF"><input name="password" id="password" type="password" size="25"
											class="inputBg" id="password" /></td>
									</tr>
									<tr>
										<td width="28%" align="right" bgcolor="#FFFFFF">姓名：</td>
										<td width="76%" align="left" bgcolor="#FFFFFF"><input name="realname" type="text" size="25"
											class="inputBg" id="realname" /></td>
									</tr>
									<tr>
										<td width="28%" align="right" bgcolor="#FFFFFF">性别：</td>
										<td width="76%" align="left" bgcolor="#FFFFFF"><select name="sex" id="sex" class="inputBg">
												<option value="男">男</option>
												<option value="女">女</option>
										</select></td>
									</tr>
									<tr>
										<td width="28%" align="right" bgcolor="#FFFFFF">出生日期：</td>
										<td width="76%" align="left" bgcolor="#FFFFFF"><input name="birthday" type="text" size="25"
											class="inputBg" id="birthday" readonly="readonly" onclick="WdatePicker()" /></td>
									</tr>
									<tr>
										<td width="28%" align="right" bgcolor="#FFFFFF">联系手机：</td>
										<td width="76%" align="left" bgcolor="#FFFFFF"><input name="contact" id="contact" type="text" size="25"
											class="inputBg" id="contact" /></td>
									</tr>
									<tr>
										<td colspan="2" align="center" bgcolor="#FFFFFF"><input type="submit" class="bnt_blue_1"
											style="border: none;" value="确认注册" /></td>
									</tr>
								</table>
							</form>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<script>
		function isPhoneNumber(tel) {
		    var reg =/^0?1[3|4|5|6|7|8][0-9]\d{8}$/;
		    return reg.test(tel);
		}
		 function check()
		 {   
			 var username = document.getElementById("username").value;
			 var password = document.getElementById("password").value;
			 var contact = document.getElementById("contact").value;
			 if(username == ""){
				 alert("请输入用户名！");
				 return false;
			 }
			 if(password == ""){
				 alert("请输入密码！");
				 return false;
			 } 
			 if(!isPhoneNumber(contact)){
				 alert("手机格式不对！");
				 return false;
			 }
			 
			 return true;
		 }
		</script>
		<div class="blank5"></div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
