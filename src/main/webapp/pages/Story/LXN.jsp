<%--李先念在生命最后的日子里--%>
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
    <div class="layui-header " >
        <ul class="layui-nav layui-layout-left">
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
                            <ul>
                                <li class="layui-nav-item" style="float:left;font-size: 17px">
                                    <a >李先念在生命最后的日子里</a>
                                </li>
                            </ul>
                        </div>
                        <hr>
                        <div class= "layui-row" style="padding: 30px;width: 500px;float: left;background-color: cornsilk"  >
                            李先念，9岁读私塾。12岁起先后在家乡和汉口学木工。1926年10月参加农民运动，任乡农民协会执行委员。1927年11月率领家乡农民参加黄（安）麻（城）起义，12月加入中国共产党。 [3]
                            全国抗日战争爆发后到达延安。1938年任中共河南省委军事部部长。1939年起历任新四军豫鄂独立游击支队司令员、豫鄂挺进纵队司令员，率部开展敌后游击战争，开辟豫鄂边抗日根据地。
                            1941年皖南事变后，任新四军第5师师长兼政治委员，率部多次挫败日伪军的“扫荡”、“蚕食”和国民党顽固派的军事进攻。1942年兼任中共豫鄂边区委书记，领导军民多次挫败日伪军的进攻，巩固和扩大了抗日根据地。
                        </div>
                        <div>
                            <img src="../../img/Stroy/LXN.png" style="float:right;width: 300px;height: 300px">
                        </div>

                    </div>
                </div>
                <div class="layui-nav-item" style="float:left;font-size: 15px;margin-top: 118px;">
                    <img src="../../img/tubiao/cold%20off.png" style="width: 23px;height: 23px">
                    <a href="ZSQ.jsp" style="color: #ea4335">空中神炮手”鲍寿根“</a>
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


