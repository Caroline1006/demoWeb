<%--
个人中心
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>个人中心</title>
    <link rel="stylesheet" href="../layui-v2.6.8/layui/css/layui1.css">
</head>

<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header ">
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item layui-hide-xs"><a href="index.jsp">首页</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="Course.jsp">课程</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="Resource.jsp">电子教材</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="">认证</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="">消息</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href=""></a></li>
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
            <li class="layui-nav-item layui-hide-xs"><a href=""></a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="">动态</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="Collection.jsp">收藏</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="History.jsp">历史</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="CreationCenter.jsp">创作中心</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="Upload.jsp">投稿</a></li>
        </ul>
    </div>

    <div class="layui-side " style="background-color: #f1f1f1">
    </div>

    <div class="layui-body" style="background-color:#f1f1f1">
        <div class="layui-side-scroll" style="float:left">
            <ul class="layui-nav layui-nav-tree" lay-filter="test"
                style="margin-top: 20px;height:500px;background-color:white">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="PersonalCenter.jsp"><p style="color:black">我的信息</p></a>
                </li>
                <li class="layui-nav-item"><a href="AccountSecurity.jsp" style="color:black">账号安全</a></li>
                <li class="layui-nav-item"><a href="PrivacySet.jsp" style="color:black">隐私设置</a></li>
                <li class="layui-nav-item"><a href="Collection.jsp" style="color:black">我的收藏</a></li>
                <li class="layui-nav-item"><a href="History.jsp" style="color:black">浏览历史</a></li>
            </ul>
        </div>

        <div class="layui-col-md6 " style="float:left ;margin-top:20px;margin-left: 20px ">
            <div class="layui-panel " style="height: 600px;width:880px">
                <div style="padding: 30px;">
                    <p>个人信息</p>
                    <hr>
                    <%--                    enctype="multipart/form-data" 表示提交的数据以多段的形式进行拼接，然后以二进制流的形式发送--%>
                    <form method="post" class="layui-form" action="${pageContext.request.contextPath}/upload.do"
                          enctype="multipart/form-data">
                        <div class="layui-form-item" style="width:300px;margin-top: 10px">
                            <label class="layui-form-label">昵称</label>
                            <div class="layui-input-block">
                                <input type="text" name="nickname" required lay-verify="required" placeholder=""
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div>
                            <label class="layui-form-label">用户名</label>
                            <button type="button" class="layui-btn layui-btn-disabled layui-btn-radius"
                                    style="width:200px">1
                            </button>
                        </div>
                        <div class="layui-form-item" style="width:300px">
                            <label class="layui-form-label">性别</label>
                            <div class="layui-input-block">
                                <input type="radio" name="gender" value="男" title="男">
                                <input type="radio" name="gender" value="女" title="女" checked>
                            </div>
                        </div>
                        <div class="layui-inline">
                            <label class="layui-form-label">出生日期</label>
                            <div class="layui-input-inline">
                                <input type="text" name="birthday" id="date" lay-verify="date" placeholder=""
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text" style="width:760px;margin-top: 10px">
                            <label class="layui-form-label">我的签名</label>
                            <div class="layui-input-block">
                                <textarea name="desc" placeholder="请输入内容" class="layui-textarea"
                                          style="height:207px"></textarea>
                            </div>
                        </div>
                        <p><input type="submit" class="a-upload">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
                                                                                                class="a-upload"></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="../layui-v2.6.8/layui/layui.js"></script>
<script>

    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;


        //我的信息
        layui.use('form', function () {
            var form = layui.form;
            //监听提交
            form.on('submit(formDemo)', function (data) {
                layer.msg(JSON.stringify(data.field));
                return false;
            });
        });

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        layui.use(['element', 'layer', 'util'], function () {
            var element = layui.element
                , layer = layui.layer
                , util = layui.util
                , $ = layui.$;

            // 头部事件
            util.event('lay-header-event', {
                // 左侧菜单事件
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
    });
</script>
</body>
</html>


