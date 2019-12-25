<%--
  Created by IntelliJ IDEA.
  User: ls
  Date: 2019/12/10
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin2.0</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./xadmin/css/font.css">
    <link rel="stylesheet" href="./xadmin/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="./xadmin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./xadmin/js/xadmin.js"></script>

</head>
<body class="login-bg">

<div class="login layui-anim layui-anim-up">
    <div class="message">所街后台管理系统登录</div>
    <div id="darkbannerwrap"></div>

    <form method="post" class="layui-form" action="login" >
        <input name="aacount" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
        <hr class="hr15">
        <input name="apass" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
        <hr class="hr15"> <h1>${errorMsg}</h1>
        <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
        <hr class="hr20" >
    </form>
</div>
</body>
</html>