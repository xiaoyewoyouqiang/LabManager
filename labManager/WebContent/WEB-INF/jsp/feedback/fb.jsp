<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link href="${ctx}/resource/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${ctx}/resource/css/style.css"/>
    <link rel="stylesheet" href="${ctx}/resource/assets/css/ace.min.css" />
    <link rel="stylesheet" href="${ctx}/resource/assets/css/font-awesome.min.css" />
    <link href="${ctx}/resource/Widget/icheck/icheck.css" rel="stylesheet" type="text/css" />
    <!--[if IE 7]>
    <link rel="stylesheet" href="${ctx}/resource/assets/css/font-awesome-ie7.min.css" />
    <![endif]-->
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="${ctx}/resource/assets/css/ace-ie.min.css" />
    <![endif]-->
    <script src="${ctx}/resource/js/jquery-1.9.1.min.js"></script>
    <script src="${ctx}/resource/assets/js/bootstrap.min.js"></script>
</head>
<style>
    .form-label{width: 90px}
</style>
<body>
<div class="type_style">
    <div class="type_content">
        <form action="feedback_save.do" method="post" id="form-feedback-add">
	实验室楼层号：<input type="text" class="input-text" value="" placeholder=""   name="floor" id="floor"><br/><br/>
	实验室房间号：<input type="text" class="input-text" value="" placeholder=""   name="room" id="room"><br/><br/>
	故障设备编号：<input type="text" class="input-text" value="" placeholder=""   name="number" id="number"><br/><br/>
	故障说明：<input type="text" class="input-text" value="" placeholder=""   name="description" id="description"><br/><br/>

	<div class="" style=" text-align:center">
	   <input class="btn btn-primary radius" style="background-color: #457B9D!important;border-color: #457B9D;" type="button" value="提交" onclick="sub()" >
	</div>
</form>
    </div>
</div>
</div>
<script type="text/javascript" src="${ctx}/resource/Widget/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="${ctx}/resource/assets/layer/layer.js"></script>
<script type="text/javascript" src="${ctx}/resource/js/H-ui.js"></script>
<script type="text/javascript" src="${ctx}/resource/js/H-ui.admin.js"></script>
<script type="text/javascript">
	sub = function () {
	    var floor = $('#floor').val();
	    var room = $('#room').val();
	    var number = $('#number').val();
	    var description = $('#description').val();
	    if (floor == null || floor == ""){
	        msg("楼层号为空");
	        return false;
	    } else if (room == null || room == ""){
	        msg("房间号为空");
	        return false;
	    } else if (number == null || number == ""){
	        msg("设备编号为空");
	        return false;
	    } else  if (description == null || description == ""){
	        msg("故障说明为空");
	        return false;
	    } else { 
	        $.ajax({
	            cache: false,
	            type: "post",
	            url: "feedback_save.do",
	            data:$('#form-feedback-add').serialize(),// 你的formid
	            async: false,
	            success: function(data){
	                if (data.flag){
	                    layer.msg('提交成功', {
	                        icon: 1,
	                        time: 1000 //1秒关闭（如果不配置，默认是3秒）
	                    }, function(){
	                        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
	                        parent.layer.close(index); //再执行关闭
	                        window.location.href = data.url;
	                    });
	                } else {
	                    layer.msg('反馈失败', {
	                        icon: 1,
	                        time: 2000 //2秒关闭（如果不配置，默认是3秒）
	                    }, function(){
	                    });
	                }
	            }
	        });
	}
	}
</script>
<script>
    function msg(data) {
        layer.msg(data, {
            icon: 1,
            time: 2000 //2秒关闭（如果不配置，默认是3秒）
        }, function(){
        });
    }
</script>
</body>
</html>