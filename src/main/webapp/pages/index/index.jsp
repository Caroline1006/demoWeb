<%--
主页
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>红色主题</title>
    <link rel="stylesheet" href="../layui-v2.6.8/layui/css/layui.css">
</head>

<body>
<div class="layui-layout layui-layout-admin ">
    <div class="layui-header ">
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
</div>
<div>
    <!-- 内容主体区域 -->
    <div class="layui-card">
        <div class="layui-col-md12 " style="margin-top:20px;color: #f1f1f1 ">
            <div class="layui-panel">
                <div style="padding: 30px;"><h1 style="margin-left:200px;color:black">红色文化在线共享平台</h1></div>
            </div>
        </div>
    </div>

    <div class="layui-carousel" id="test1" style="float:left">
        <div carousel-item>
            <div><img src="../../img/a.png"></div>
            <div><img src="../../img/b.png"></div>
            <div><img src="../../img/c.png"></div>
        </div>
    </div>

    <div class="layui-card layui-row-space200">
        <div class="layui-col-md12 " style="float:left;">
            <div class="layui-panel">
                <div><p>通知</p></div>
            </div>
        </div>
    </div>

    <div>
        <h3 style="color:darkred;font-size:25px;margin-left: 200px">热点精选</h3>
        <div class="layui-col-md6 " style="float:left ;margin-top:20px;margin-left: 200px ">
            <div class="layui-panel " style="height: 150px">
                <div style="padding: 30px;">
                    <a href="../Story/YMH.jsp" style="font-size: 20px"><strong>百岁老红军余明洪的故事</strong>
                    </a>
                </div>
            </div>
            <div class="layui-panel" style="margin-top: 20px;height: 150px">
                <div style="padding: 30px;">
                    <a href="../Story/ZSQ.jsp" style="font-size: 20px"><strong>拜访张尚启烈士后人</strong></a>
                </div>
            </div>
            <div class="layui-panel" style="margin-top: 20px;height: 150px">
                <div style="padding: 30px;">
                    <a href="../Story/BSG.jsp" style="font-size: 20px"><strong>空中神炮手"鲍寿根"</strong></a>
                </div>
            </div>
            <div class="layui-panel" style="margin-top: 20px;height: 150px">
                <div style="padding: 30px;">
                    <a href="../Story/LXN.jsp" style="font-size: 20px"><strong>李先念在生命最后的日子里</strong></a>
                </div>
            </div>

        </div>

        <div class="layui-col-md1 " style="float:left ;margin-top:20px;margin-left: 20px">
            <div class="layui-panel" style="width:350px;height:630px">
                <h1>图片精选</h1>
                <img src="../../img/浙武文物/图片1.png" style="width: 350px;height: 630px">
            </div>
        </div>
        <div class="layui-card">
            <div class="layui-col-md12 " style="margin-top:20px ">
                <div class="layui-panel" style="height: 300px;">
                    <div>
                        <img src="../../img/banner.png" style="width: 1518px;height: 300px">
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>

<script src="../layui-v2.6.8/layui/layui.js"></script>
<script>
    //JS
    //轮播窗
    layui.use('carousel', function () {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            , width: '100%' //
            , height: '325px'
            , arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
    layui.use('carousel', function () {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test2'
            , width: '100%' //
            , arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });

    layui.use(['element', 'layer', 'util'], function () {
        var element = layui.element
            , layer = layui.layer
            , util = layui.util
            , $ = layui.$;


        //头部事件
        util.event('lay-header-event', {
            //左侧菜单事件
            // menuLeft: function(othis){
            //     layer.msg('展开左侧菜单的操作', {icon: 0});
            // }
            //右侧菜单
            menuRight: function () {
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

