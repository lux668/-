<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>欢迎使用成绩综合测评管理系统</title>
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/spinner/ui.spinner.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/spinner/jquery.mousewheel.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/charts/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/forms/uniform.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/autogrowtextarea.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/forms/chosen.jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/wizard/jquery.form.wizard.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/uploader/jquery.plupload.queue.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/datatable.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/tables/resizable.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/ui/jquery.sourcerer.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/calendar.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/elfinder.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/selimage.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div id="rightSide">
    <jsp:include page="top.jsp"></jsp:include>
    <div class="line"></div>
    <div class="line"></div>
    <div class="line"></div>
    <div class="line"></div>
    <div class="wrapper">
        <form action="${pageContext.request.contextPath}/apply/add" name="myform" method="post" onsubmit="return true;"
              class="form">
            <div class="widget" style="width: 40%">
                <div class="title">
                    <img src="images/icons/dark/list.png" alt="" class="titleIcon"/>
                    <h6>第二课堂加分申请</h6>
                </div>

                <div class="formRow">
                    <label>学生编号</label>
                    <div class="formRight">
                        <input type="text" readonly name="studentId" class="mws-textinput" id="id1"
                               value="${student.id}"/>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="formRow">
                    <label>学生账号</label>
                    <div class="formRight">
                        <input type="text" readonly name="studentAccount" class="mws-textinput" id="id"
                               value="${student.account}"/>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="formRow">
                    <label>学生姓名</label>
                    <div class="formRight">
                        <input type="text" readonly name="studentName" class="mws-textinput" id="account"
                               value="${student.name}"/>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="formRow">
                    <label>申请理由</label>
                    <div class="formRight">
                        <input type="text" name="reason" class="mws-textinput" id="password" placeholder="比赛、志愿者、学生会等"/>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="formRow">
                    <label>申请加分</label>
                    <div class="formRight">
                        <input type="text" name="grade" class="mws-textinput" id="name"/>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="formSubmit">
                    <input type="submit" id="sub" value="确认提交" class="redB"> &nbsp;&nbsp;&nbsp;&nbsp; <input
                        type="reset"
                        id="res" value="取消重置" class="redB">
                </div>
            </div>
        </form>
    </div>
</div>
<div class="clear"></div>
</body>
</html>

