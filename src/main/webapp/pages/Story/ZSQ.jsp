<%--空中神炮手”鲍寿根“--%>

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
                                <a >拜访张尚启烈士后人</a>
                            </li>
                        </div>
                        <hr>
                        <div class= "layui-row" style="padding: 30px;width: 500px;float: left;background-color: cornsilk"  >
                            曹宅镇白渡村的张尚启同志，生前担任八大队便衣组组长，潜伏在村民之中与当地日军势力斗争。张尚启的小儿子张宝成常被带在他身边，作为伪装，迷惑敌人。抗日战争爆发前，村子周边有土匪出没，日军侵占此地后，土匪转而投日，成为汉奸，继续欺压百姓，张尚启等八大队的新四军们便与这些势力做着斗争。
                            在1945年夏的某天，张尚启的一位熟人敲开了他家的房门，熟人声称潘村有变故，急需张尚启帮助。然而张尚启的妻子察觉情况不对，劝说他不要贸然前往。张尚启不管那么多，救急心切，扛上家中的洋枪便独自一人前往了潘村，谁知这一去，他便再也没有回来。实际上那个熟人早已经叛变，在潘村等待张尚启的只有五花大绑以及
                            日本人和土匪汉奸的严刑逼供。次日，张尚启被押上街游行，他的亲人中，只有张尚启妻子和小儿子张宝成在场，张尚启被敌人从家人面前押送过，随后惨遭枪决，英勇牺牲。
                        </div>
                        <div>
                            <img src="../../img/Stroy/ZSQ.png" style="float:right">
                        </div>

                    </div>
                </div>
                <div class="layui-nav-item" style="float:left;font-size: 15px;margin-top: 118px;">
                    <img src="../../img/tubiao/cold%20off.png" style="width: 23px;height: 23px">
                    <a href="YMH.jsp" style="color: #ea4335">百岁老红军余明洪的故事</a>
                </div>
                <div class="layui-nav-item" style="float:right;font-size: 15px;margin-top: 118px;">
                    <img src="../../img/tubiao/cold%20off.png" style="width: 23px;height: 23px">
                    <a href="BSG.jsp" style="color: #ea4335">空中神炮手”鲍寿根“</a>
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


