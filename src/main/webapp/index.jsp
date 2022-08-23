<%--登录界面--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">

<head>
    <title>登录界面</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- CSS Stylesheet -->
    <link rel="stylesheet" href="pages/register/css/style.css" type="text/css" media="all"/>
</head>

<body>
<%--主干--%>
<div class="signinform">
    <h1>登录</h1>
    <!-- container -->
    <div class="container">
        <!-- main content -->
        <div class="w3l-form-info">
            <div class="w3_info">
                <h2>登录</h2>
                <form action="${pageContext.request.contextPath}/login" method="post">
                    <div class="input-group">
                        <span><i class="fas fa-user" aria-hidden="true"></i></span>
                        <input type="email" placeholder="邮箱" name="account" required="">
                    </div>
                    <div class="input-group">
                        <span><i class="fas fa-key" aria-hidden="true"></i></span>
                        <input type="Password" placeholder="密码" name="password" required="">
                    </div>
                    <button class="btn btn-primary btn-block" type="submit">登录</button>
                </form>
                <p class="account">没有帐户? <a href="${pageContext.request.contextPath}/pages/register/register.jsp">注册</a>
                </p>
            </div>
        </div>
    </div>
</div>
<!-- fontawesome v5-->
<script src="pages/register/js/fontawesome.js"></script>
</body>

</html>
