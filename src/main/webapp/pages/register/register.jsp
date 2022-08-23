<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/7/22
  Time: 8:52
  To change this template use File | Settings | File Templates.
  注册界面
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>注册界面</title>
    <!-- Meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- CSS Stylesheet -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</head>

<body>
<div class="signinform">
    <h1>注册</h1>
    <!-- container -->
    <div class="container">
        <!-- main content -->
        <div class="w3l-form-info">
            <div class="w3_info">
                <h2>注册</h2>
                <form action="${pageContext.request.contextPath}/register" method="post">
                    <div class="input-group">
                        <span><i class="fas fa-user" aria-hidden="true"></i></span>
                        <input type="email" placeholder="邮箱" name="account" required="">
                    </div>
                    <div class="input-group">
                        <span><i class="fas fa-key" aria-hidden="true"></i></span>
                        <input type="Password" placeholder="密码" name="password" required="">
                    </div>
                    <button class="btn btn-primary btn-block" type="submit">注册</button>
                </form>
                <p class="account">已有帐户? <a href="../../index.jsp">登录</a></p>
            </div>
        </div>
        <!-- //main content -->
    </div>
</div>
    <script src="js/fontawesome.js"></script>
</body>
</html>

