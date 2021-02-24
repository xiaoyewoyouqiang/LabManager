<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="${ctx}/resource/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${ctx}/resource/css/style.css"/>
    <link href="${ctx}/resource/assets/css/codemirror.css" rel="stylesheet">
    <link rel="stylesheet" href="${ctx}/resource/assets/css/ace.min.css" />
    <link rel="stylesheet" href="${ctx}/resource/assets/css/font-awesome.min.css" />
    <!--[if IE 7]>
    <link rel="stylesheet" href="${ctx}/resource/assets/css/font-awesome-ie7.min.css" />
    <![endif]-->
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="${ctx}/resource/assets/css/ace-ie.min.css" />
    <![endif]-->
    <script src="${ctx}/resource/assets/js/jquery.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <![endif]-->

    <!--[if !IE]> -->

    <script type="text/javascript">
        window.jQuery || document.write("<script src='${ctx}/resource/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
    </script>

    <!-- <![endif]-->

    <!--[if IE]>
    <script type="text/javascript">
        window.jQuery || document.write("<script src='${ctx}/resource/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
    </script>
    <![endif]-->

    <script src="${ctx}/resource/assets/js/bootstrap.min.js"></script>
    <script src="${ctx}/resource/assets/js/typeahead-bs2.min.js"></script>
    <!-- page specific plugin scripts -->
    <script src="${ctx}/resource/assets/js/jquery.dataTables.min.js"></script>
    <script src="${ctx}/resource/assets/js/jquery.dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${ctx}/resource/js/H-ui.js"></script>
    <script type="text/javascript" src="${ctx}/resource/js/H-ui.admin.js"></script>
    <script src="${ctx}/resource/assets/layer/layer.js" type="text/javascript" ></script>
    <script src="${ctx}/resource/assets/laydate/laydate.js" type="text/javascript"></script>
    <title>实验室列表</title>
    <script>
        $(function () {
            if (${login} == 1){
                top.location = 'login_login.do';
            }
        })
    </script>
</head>

<body>
<div class="page-content clearfix">
    <div id="Member_Ratings">
        <div class="d_Confirm_Order_style">
            <div class="search_style">
            	<h2 style="text-align: center; margin: 20px; 0">实验指导教师须知</h2>
                <ul>
                 <li>一、提前了解实验室的情况，根据实验室一次可容纳的学生人数，对学生进行分组实验安排，提前通知学生实验课时间、要求，安排布置预习实验内容，要求学生填写预习报告、设计实验数据表格、回答预习思考题等。</li>
                 <li>二、学生进入实验室时，要求其穿戴鞋套，以保持实验室卫生。</li>
                 <li>三、提醒学生认真阅读学生实验（上机）守则、实验室安全制度，了解实验室有关的规章管理制度，强调与实验有关的注意事项。</li>
                 <li>四、认真填写实验登记表；实验完成后，要求学生对使用的设备、仪器及用具归位，检查设备完整无损、签字后让学生离去。</li>
                 <li>五、在课堂上说明对实验报告的要求，实验结束后学生按要求撰写实验报告，批改实验报告并记录成绩。</li>
                 <li>六、为了规范实验管理，必须要求学生以电子或纸质版文稿方式使用统一规范的格式填写完成实验报告。</li>
                </ul>
            </div>
            <div class="search_style">
            	<h2 style="text-align: center; margin: 20px; 0">学生上机守则</h2>
                <ul>
                 <li>一、遵守大学生守则，文明上机。</li>
                 <li>二、进入机房前必须在大门外穿戴好鞋套，在机房内不得将其脱下。</li>
                 <li>三、进入机房前必须将书包等物品放入储物箱内，自己带锁将其锁好，因没上锁而造成物品丢失，机房不负责任。除指定的笔、书等物品可以带入机房外，其他如手提电脑、各种仪器、手机、塑料袋、水、食物等物品不得带入机房。</li>
                 <li>四、进入机房后按学号与座位号对应入座，不得擅自串位。如在工作时间内发生设备损坏及丢失现象，责任由该位置对应学号的同学承担。</li>
                 <li>五、上机时要按老师安排的内容操作，上机过程中不得擅动机器。如设备出现异常应立即报告教师或机房管理员，不得自行处理。</li>
                 <li>六、上级结束后，应在下课铃声响后5分钟内按操作规定关机，依次走出机房，走出机房大门后方可脱掉鞋套。</li>
                 <li>七、违反上述规定，按《学生违纪处分办法》处理。</li>
                </ul>
            </div>
        </div>
    </div>
</div>


</body>
</html>