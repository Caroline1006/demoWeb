<%--
隐私设置
--%>

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>个人中心</title>
    <link rel="stylesheet" href="../layui-v2.6.8/layui/css/layui.css">
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
        <div class="layui-col-md6 " style="float:left ;margin-top:40px;margin-left: 100px ">
            <div class="layui-panel " style="height: 630px;width:880px">
                <div style="padding: 30px;">
                    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                        <ul class="layui-tab-title">
                            <li class="layui-this">课程投稿</li>
                            <li>教材投稿</li>

                        </ul>
                        <div class="layui-tab-content">
                            <div class="layui-tab-item layui-show">
                                <div class="layui-upload-drag" id="test10"
                                     style="width: 600px;height: 200px;margin-left: 80px">
                                    <i class="layui-icon"></i>
                                    <p>点击上传，或将文件拖拽到此处</p>
                                    <div class="layui-hide" id="uploadDemoView">
                                        <hr>
                                        <img src="" alt="上传成功后渲染" style="max-width: 196px">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-tab-item">
                                <div class="layui-upload-drag" id="test11"
                                     style="width: 600px;height: 200px;margin-left: 80px">
                                    <i class="layui-icon"></i>
                                    <p>点击上传，或将文件拖拽到此处</p>
                                    <div class="layui-hide" id="uploadDemoView1">
                                        <hr>
                                        <img src="" alt="上传成功后渲染" style="max-width: 196px">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../layui-v2.6.8/layui/layui.js"></script>
<script>

    //拖拽上传
    upload.render({
        elem: '#test10'
        , url: '' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
        , done: function (res) {
            layer.msg('上传成功');
            layui.$('#uploadDemoView').removeClass('layui-hide').find('img').attr('src', res.files.file);
            console.log(res)
        }
    });

    //拖拽上传
    upload.render({
        elem: '#test11'
        , url: '' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
        , done: function (res) {
            layer.msg('上传成功');
            layui.$('#uploadDemoView1').removeClass('layui-hide').find('img').attr('src', res.files.file);
            console.log(res)
        }
    });
    layui.use('form', function () {
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });


    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;

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