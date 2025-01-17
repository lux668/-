<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>欢迎使用成绩综合测评管理系统</title>
    <link href="css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript">
        function checkLogin() {
            var username = document.myform.username.value;
            var password = document.myform.password.value;
            if (username == '') {
                alert('请输入用户名');
                document.myform.username.focus();
                return false;
            }
            if (password == '') {
                alert('请输入密码');
                document.myform.password.focus();
                return false;
            }
        }
    </script>
</head>
<body class="nobg loginPage">
<img src="images/login-bg.jpg" width=" 1550px" height="760px"/>
<!-- Main content wrapper -->
<div class="loginWrapper">
    <div class="widget">
        <div class="title">
            <img src="images/icons/dark/files.png" alt="" class="titleIcon"/>
            <h6>欢迎使用成绩综合测评管理系统</h6>
            <strong style="color: red">${error}</strong>
        </div>
        <form action="${pageContext.request.contextPath}/fore/login" name="myform" class="form" id="validate"
              method="post"
              onSubmit="return checkLogin()">
            <fieldset>
                <div class="formRow">
                    <label>用户名:</label>
                    <div class="loginInput">
                        <input type="text" name="account" id="account" placeholder="请输入用户名"/>
                    </div>
                    <div class="clear"></div>
                </div>

                <div class="formRow">
                    <label>密码:</label>
                    <div class="loginInput">
                        <input type="password" name="password" id="password" placeholder="请输入密码"/>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="formRow">
                    <label>角色:</label>
                    <div class="loginInput" style="display:inline;">
                        <select name="type" style="display:inline;margin-top: 5px;">
                            <option value="0">管理员</option>
                            <option value="1">老师</option>
                            <option value="2">学生</option>
                        </select>
                        <div class="loginControl" style="display:inline;">
                            <input type="submit" value="登录" class="greenB logMeIn"/>

                        </div>
                    </div>
                </div>


            </fieldset>
        </form>
    </div>
</div>
</body>
</html>