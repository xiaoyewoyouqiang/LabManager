<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>高校实验室管理平台</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/loginStyle/css/style2.0.css">
    <script src="${pageContext.request.contextPath}/resource/js/jquery-1.9.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/assets/layer/layer.js" type="text/javascript"></script>
<style type="text/css">
	ul li{font-size: 30px;color:#2ec0f6;}
	.tyg-div{z-index:-1000;float:left;position:absolute;left:5%;top:20%;}
	.tyg-p{
		font-size: 14px;
	    font-family: 'microsoft yahei';
	    position: absolute;
	    top: 135px;
	    left: 60px;
	}
	.tyg-div-denglv{
		z-index:1000;float:right;position:absolute;right:3%;top:10%;
	}
	.tyg-div-form{
		background-color: #23305a;
		width:300px;
		height:auto;
		margin:120px auto 0 auto;
		color:#2ec0f6;
	}
	.tyg-div-form form {padding:10px;}
	.tyg-div-form form input[type="text"]{
		width: 270px;
	    height: 30px;
	    margin: 25px 10px 0px 0px;
	}
	.tyg-div-form form button {
	    cursor: pointer;
	    width: 270px;
	    height: 44px;
	    margin-top: 25px;
	    padding: 0;
	    background: #2ec0f6;
	    -moz-border-radius: 6px;
	    -webkit-border-radius: 6px;
	    border-radius: 6px;
	    border: 1px solid #2ec0f6;
	    -moz-box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    -webkit-box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    font-family: 'PT Sans', Helvetica, Arial, sans-serif;
	    font-size: 14px;
	    font-weight: 700;
	    color: #fff;
	    text-shadow: 0 1px 2px rgba(0,0,0,.1);
	    -o-transition: all .2s;
	    -moz-transition: all .2s;
	    -webkit-transition: all .2s;
	    -ms-transition: all .2s;
}
</style>

<body>
<div class="tyg-div">
	<ul>
    	<li>让</li>
    	<li><div style="margin-left:20px;">数</div></li>
    	<li><div style="margin-left:40px;">据</div></li>
    	<li><div style="margin-left:60px;">改</div></li>
    	<li><div style="margin-left:80px;">变</div></li>
    	<li><div style="margin-left:100px;">生</div></li>
    	<li><div style="margin-left:120px;">活</div></li>
    </ul>
</div> 
<div id="contPar" class="contPar">
	<div id="page1"  style="z-index:1;">
		<div class="title0">实验室智能管理系统</div>
		<div class="imgGroug">
			<ul>
				<img alt="" class="img0 png" src="${pageContext.request.contextPath}/loginStyle/img/page1_0.png">
				<img alt="" class="img1 png" src="${pageContext.request.contextPath}/loginStyle/img/page1_1.png">
				<img alt="" class="img2 png" src="${pageContext.request.contextPath}/loginStyle/img/page1_2.png">
			</ul>
		</div>
		<img alt="" class="img3 png" src="${pageContext.request.contextPath}/loginStyle/img/page1_3.jpg">
	</div>
</div>
<div class="tyg-div-denglv">
	<div class="tyg-div-form">
		<form  id="login" action="${pageContext.request.contextPath}/login_index.do">
			<h2>注册</h2><p class="tyg-p"><a href="javascript:add()">尚未注册  点击注册</a></p>
			<div style="margin:5px 0px;">
				<input type="text" name="user.name" value="admin" style="height:30px" placeholder="请输入账号..." id="用户名"/>
			</div>
			<div style="margin:5px 0px;">
				<input type="password" name="user.pass" value="123456" style="height:30px" placeholder="请输入密码..." id="密码"/>
			</div>
			
			<button type="button" id="login_btn">登录</button>
		</form>
	</div>
</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/loginStyle/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/loginStyle/js/com.js"></script>
<!--[if IE 6]>
<script language="javascript" type="text/javascript" src="./script/ie6_png.js"></script>
<script language="javascript" type="text/javascript">
DD_belatedPNG.fix(".png");
</script>
<![endif]-->
<div style="text-align:center;">
</div>


</body>
</html>

<script>
    $('#login_btn').on('click', function () {
        var num = 0;
        var str = "";
        $("input[type$='text'],input[type$='password']").each(function (n) {
            if ($(this).val() == "") {

                layer.alert(str += "" + $(this).attr("id") + "不能为空！\r\n", {
                    title: '提示框',
                    icon: 0,
                });
                num++;
                return false;
            }
        });
        if (num > 0) {
            return false;
        } else {
            $.ajax({
                cache: false,
                type: "post",
                url: "login_index.do",
                data: $('#login').serialize(),// 你的formid
                async: false,
                success: function (data) {
                    if (data.flag == 1) {
                        layer.msg('登陆成功', {
                            icon: 1,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function () {
                            window.location.href = data.url;
                        });
                    }
                    if (data.flag == 2) {
                        layer.msg('帐号未审核', {
                            icon: 0,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function () {
                        });
                    }
                    if (data.flag == 3) {
                        layer.msg('用户名或密码错误', {
                            icon: 0,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function () {
                        });
                    }

                }
            });
        }
    });

    function add() {
        layer.open({
            type: 2,
            area: ['700px', '600px'],
            content: 'user_add.do' //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
        });

    }

    
</script>