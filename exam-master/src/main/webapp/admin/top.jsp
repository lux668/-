<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="topNav">
    <div class="wrapper">
        <div class="welcome">

            <a title=""><img src="images/userPic.png"
                             alt=""/></a>
            <c:if test="${sessionScope.session_admin != null}">
                <span>管理员&nbsp;您好，欢迎使用本系统</span>
            </c:if>
            <c:if test="${sessionScope.session_admin == null}">
                <span>${sessionScope.session_teacher.name}${sessionScope.session_student.name}&nbsp;你好，欢迎使用本系统！&nbsp;</span>
            </c:if>
        </div>
        <div class="userNav">
            <ul>
                <li><span id="time"></span>
                    <script>
                        document.getElementById('time').innerHTML = new Date()
                                .toLocaleString()
                            + ' 星期' + '日一二三四五六'.charAt(new Date().getDay());
                        setInterval(
                            "document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
                            1000);
                    </script>
                </li>
                <li><a href="${pageContext.request.contextPath}/fore/exit"
                       onclick="{if(confirm('确定要退出吗?')){return true;}return false;}"
                       title=""><img src="images/icons/topnav/logout.png" alt=""/><span>退出系统</span></a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>