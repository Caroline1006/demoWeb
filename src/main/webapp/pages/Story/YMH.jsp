<%--百岁老红军余明洪的故事--%>

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>课程</title>
    <link rel="stylesheet" href="../layui-v2.6.8/layui/css/layui.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <%--    <div class="layui-header">--%>
    <div class="layui-header " ><ul class="layui-nav layui-layout-left">
        <li class="layui-nav-item layui-hide-xs"><a href="../index/index.jsp">首页</a></li>
        <li class="layui-nav-item layui-hide-xs"><a href="../index/Course.jsp">课程</a></li>
        <li class="layui-nav-item layui-hide-xs"><a href="../index/Resource.jsp">电子教材</a></li>
        <li class="layui-nav-item layui-hide-xs"><a href="">认证</a></li>
        <li class="layui-nav-item layui-hide-xs"><a href="">消息</a></li>
        <li class="layui-nav-item layui-hide-xs"><a href=""></a></li>
        <input type="search"  placeholder="搜索" value="" name="s" />
        <li class="layui-nav-item layui-hide layui-show-md-inline-block">
            <a href="javascript:;">
                <img src="https://ts1.cn.mm.bing.net/th/id/R-C.d8011b5d28ee607bfa5e427d0ad03b99?rik=eCm54QsjFJ81gQ&riu=http%3a%2f%2fimg2.woyaogexing.com%2f2018%2f01%2f09%2fa03c1358f5fee520!400x400_big.jpg&ehk=Tchj3Y063MGOw03bLmMHcWVT36v4WTVbUFjWdm%2fmH30%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1" class="layui-nav-img">
                test
            </a>
            <dl class="layui-nav-child">
                <dd><a href="../index/PersonalCenter.jsp">个人中心</a></dd>
                <dd><a href="../../logout.jsp">退出登录</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item layui-hide-xs"><a href=""></a></li>
        <li class="layui-nav-item layui-hide-xs"><a href="">动态</a></li>
        <li class="layui-nav-item layui-hide-xs"><a href="">收藏</a></li>
        <li class="layui-nav-item layui-hide-xs"><a href="">历史</a></li>
        <li class="layui-nav-item layui-hide-xs"><a href="">创作中心</a></li>
        <li class="layui-nav-item layui-hide-xs"><a href="">投稿</a></li>
    </ul>
    </div>

    <div class="layui-side " style="background-color: #f1f1f1" >
    </div>

    <div class="layui-body" style="background-color:#f1f1f1">
        <div class="layui-col-md6 "style="margin-top:20px;margin-left: 20px "  >
            <div class="layui-panel "style="height: 600px;width:1070px"  >
                <div style="padding: 30px;">
                    <div class="layui-row" >
                        <div class="layui-col" style="height:40px;margin-top: 0;">
                           <li class="layui-nav-item" style="float:left;font-size: 17px">
                               <a >百岁老红军余明洪的故事</a>
                           </li>
                        </div>
                        <hr>
                        <div class= "layui-row" style="padding: 30px;width: 500px;float: left;background-color: cornsilk"  >
                                余明洪1933年1月在四川通江参加中国工农红军第四方面军，任独立营战士。“红小鬼”，很多人对这个词并不陌生。12岁参加红军的余明洪当年便是一位“红小鬼”。不过，虽然年岁小，但也在战斗中立下了不少战功。同时，在长征途中，余明洪曾经右耳被炸弹震出血，从此右耳失聪；也曾小腿中弹，被战友抬出险境；最危险的一次，子弹击中余明洪的头部
                                余明洪前辈的一生是革命的一生、战斗的一生。他离休后，以宣讲红军传统为本色，深受广大人民群众的爱戴。余明洪辈是永远的红军！他己听到老战友们的召唤，听见了集结号前去归队了！但人民英雄永垂不朽！
                        </div>
                        <div>
                                <img src="../../img/Stroy/YMH.png" style="float:right">
                        </div>
                    </div>
                </div>
                <div class="layui-col" >

                    <li class="layui-nav-item" style="float:right;font-size: 15px;margin-top: 50px">
                        <img src="../../img/tubiao/cold%20off.png" style="width: 23px;height: 23px;margin-left: 800px">
                        <a href="ZSQ.jsp" style="color: #ea4335">拜访张尚启烈士后人</a>
                    </li>
                </div>
            </div>

        </div>

    </div>
</div>

<script src="../layui-v2.6.8/layui/layui.js"></script>
<script>

    layui.use(['form', 'layedit', 'laydate'], function() {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;


        //我的信息
        layui.use('form', function(){
            var form = layui.form;
            //监听提交
            form.on('submit(formDemo)', function(data){
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


