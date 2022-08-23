<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>创作中心</title>
    <link rel="stylesheet" href="../layui-v2.6.8/layui/css/layui.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <ul class="layui-nav layui-layout-left ">
            <li class="layui-nav-item layui-hide-xs"><a href="index.jsp">首页</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="Course.jsp">课程</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="Resource.jsp">电子教材</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="">认证</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="">消息</a></li>
            <input type="search" placeholder="搜索" value="" name="s"/>
            <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                <a href="javascript:;">
                    <img src="https://ts1.cn.mm.bing.net/th/id/R-C.d8011b5d28ee607bfa5e427d0ad03b99?rik=eCm54QsjFJ81gQ&riu=http%3a%2f%2fimg2.woyaogexing.com%2f2018%2f01%2f09%2fa03c1358f5fee520!400x400_big.jpg&ehk=Tchj3Y063MGOw03bLmMHcWVT36v4WTVbUFjWdm%2fmH30%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1"
                         class="layui-nav-img">
                    test
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="PersonalCenter.jsp">个人中心</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/logout.jsp">退出登录</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item layui-hide-xs"><a href="">动态</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="Collection.jsp">收藏</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="History.jsp">历史</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="CreationCenter.jsp">创作中心</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="Upload.jsp">投稿</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item"><a href="">首页</a></li>
                <li class="layui-nav-item"><a href="../../pages/Creation/Content.jsp">内容管理</a></li>
                <li class="layui-nav-item"><a href="../../pages/Creation/Data.jsp">数据中心</a></li>
                <li class="layui-nav-item"><a href="../../pages/Creation/CreateSetting.jsp">创作设置</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">


    </div>

</div>
<script src="../layui-v2.6.8/layui/layui.js"></script>
<script>

    layui.use('upload', function () {
        var upload = layui.upload;

        //执行实例
        var uploadInst = upload.render({
            elem: '#test1' //绑定元素
            , url: '/upload/' //上传接口
            , done: function (res) {
                //上传完毕回调
            }
            , error: function () {
                //请求异常回调
            }
        });
    });
    //JS
    layui.use(['element', 'layer', 'util'], function () {
        var element = layui.element
            , layer = layui.layer
            , util = layui.util
            , $ = layui.$;

        //头部事件
        util.event('lay-header-event', {
            //左侧菜单事件
            menuLeft: function (othis) {
                layer.msg('展开左侧菜单的操作', {icon: 0});
            }
            , menuRight: function () {
                layer.open({
                    type: 1
                    , content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
                    , area: ['260px', '100%']
                    , offset: 'rt' //右上角
                    , anim: 5
                    , shadeClose: true
                });
            }
        });

    });
</script>
</body>
</html>