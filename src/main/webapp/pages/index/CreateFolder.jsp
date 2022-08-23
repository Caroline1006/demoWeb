<%--
  Created by IntelliJ IDEA.
  User: 小拼音胖木木
  Date: 2022/8/22
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>修改密码</title>
    <link rel="stylesheet" href="../layui-v2.6.8/layui/css/layui.css">

</head>

<body>
<form class="layui-form" action="">

    <div class="layui-form-item">
        <label class="layui-form-label">标题</label>
        <div class="layui-input-inline">
            <input type="password" name="password" required lay-verify="required" placeholder="请填写收藏夹名称"
                   autocomplete="off" class="layui-input">
        </div>

    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">描述（选填）</label>
        <div class="layui-input-block" style="width: 350px">
            <textarea name="desc" placeholder="请输入描述内容" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
</body>

<script src="../layui-v2.6.8/layui/layui.js"></script>
<script type="text/javascript">
    //Demo
    layui.use('form', function () {
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>

</html>
