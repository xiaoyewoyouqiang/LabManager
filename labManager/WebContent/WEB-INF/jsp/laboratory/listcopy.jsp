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
            <form method="post" action="laboratory_listcopy.do">
            <div class="search_style">
                <ul class="search_content clearfix">
                  <p style="font-size:28px;color: black"> 规章制度：
实验室管理规章制度
1.严禁将食品和零食带入实验室,严禁在实验室内吸烟,保持实验室环境整洁
2.进入实验室,按规定位置就坐,保持室内安静严禁喧哗戏闹,不做与实验无关的事情
3.实验时必须认真倾听教师讲解,观看教师示范操作,阅读实验指导书及有关资料。
4.未经实验指导老师允许不得擅自动用实验室内的设备。不得将实验室工具、仪器、仪表、器材等带出室外。
5.实验过程中应细心专研,勤于思考,努力提高实验操作水平。切忌对实验内容一知半解的情况下进行操作,不懂的地方同学之间相互探讨,或向指导老师请教
6.实验结束时,应将所使用的仪器、仪表、工具及测试电缆、连线等归位。非正常损坏或丢失的设备、器材、工具等应照价赔偿
7.实验室下课前,指导老师应安排和督促学生将板凳归位,整理和清扫实验室。督促学生关闭窗户、室内照明,关闭实验室电源总开关。指导老师在检查确认后方能允许学生离开实验室。
8.实验指导老师应认真填写实验室《实验、实训运行记录》本。
9.实验室管理人员负责本实验室的日常管理,确保实验室设备、仪器、仪表的完好。 </p>

                </ul>
            </div>
                </form>
            <!---->
            <div class="border clearfix" style="display: none;">
       <span class="l_f" style="display: none;">
        <a href="javascript:ovid()" id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加实验室</a>
       </span>
            </div>
      
            <div class="table_menu_list" style="display: none;">
                <table class="table table-striped table-bordered table-hover" id="sample-table">
                    <thead>
                    <tr>
                        <th width="100">实验室名称</th>
                        <!-- <th width="80">负责人</th> -->
                        <th width="120">实验室功能</th>
                        <th width="120">地点</th>
                        <th width="120">添加时间</th>
                        <th width="250">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${pagers.datas}" var="c" varStatus="l">
                        <tr>
                        <td><u style="cursor:pointer" class="text-primary" >${c.name}</u></td>
                          <!--<td>${c.fzr}</td>-->
                        <td>${c.fzrDh}</td>
                        <td>${c.address}</td>
                        <td>${c.time}</td>
                        <td class="td-manage">
                            <%--<a onClick="member_stop(this,'10001')"  href="javascript:;" title="停用"  class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></a>--%>
                            <a title="编辑" onclick="edit(${c.id})" href="javascript:;"  class="btn btn-xs btn-info" ><i class="icon-edit bigger-120"></i></a>
                            <a title="删除" href="javascript:;"  onclick="member_del(${c.id})" class="btn btn-xs btn-warning" ><i class="icon-trash  bigger-120"></i></a>
                        </td>
                    </tr>
                          </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--
    <div class="pagelist">
        <pg:pager url="${ctx}/laboratory_listcopy.do" maxIndexPages="5" items="${pagers.total}" maxPageItems="15"
                  export="curPage=pageNumber">
            <pg:param name="name" value="${laboratory.name}"/>
            <pg:param name="fzr" value="${laboratory.fzr}"/>
            <pg:last>
                共${pagers.total}记录,共${pageNumber}页,
            </pg:last>
            当前第${curPage}页
            <pg:first>
                <a href="${pageUrl}">首页</a>
            </pg:first>
            <pg:prev>
                <a href="${pageUrl}">上一页</a>
            </pg:prev>
            <pg:pages>
                <c:choose>
                    <c:when test="${curPage eq pageNumber}">
                        <font color="red"><span class="current">${pageNumber }</span></font>
                    </c:when>
                    <c:otherwise>
                        <a href="${pageUrl}">${pageNumber}</a>
                    </c:otherwise>
                </c:choose>
            </pg:pages>
            <pg:next>
                <a href="${pageUrl}">下一页</a>
            </pg:next>
            <pg:last>
                <c:choose>
                    <c:when test="${curPage eq pageNumber}">
                        <a href="##">尾页</a>
                    </c:when>
                    <c:otherwise>
                        <a href="${pageUrl}">尾页</a>
                    </c:otherwise>
                </c:choose>

            </pg:last>
        </pg:pager>
    </div>
    <!-- 分页结束 -->
   
</div>

<!--添加用户图层-->
<!--  
<form action="laboratory_save.do" method="post" class="form form-horizontal" id="form-user-add" >
<div class="add_menber" id="add_menber_style" style="display:none">
    <ul>
        <li><label class="label_name" style="width: 130px">实验室名称：</label>
            <span class="add_name">
                <input value="" name="name" type="text" id="实验室名称" class="text_add"/>
            </span>
        </li>
        <!-- <li>
            <label class="label_name"style="width: 130px">负责人：</label>
            <span class="add_name">
            <input name="fzr" type="text" id="负责人" class="text_add"/>
        </span>
        </li> 
        <li><label class="label_name" style="width: 130px">实验室功能：</label>
            <span class="add_name">
                <input name="fzrDh" type="text" id="实验室功能" class="text_add"/>
            </span>
            <div class="prompt r_f"></div></li>
        <li class="adderss"><label class="label_name" style="width: 130px">具体地点：</label>
            <span class="add_name">
                <input name="address" type="text" id="具体地点" class="text_add" style=" width:350px"/>
            </span>
        </li>
        <li class="adderss"><label class="label_name" style="width: 130px">实验室备注：</label>
            <span class="add_name">
                <input name="bz" type="text" id="实验室备注" class="text_add" style=" width:350px"/>
            </span>
        </li>
    </ul>
</div>
    </form>
    -->
</body>
</html>
<script>
    /*用户-添加*/
    $('#member_add').on('click', function(){
        layer.open({
            type: 1,
            title: '添加用户',
            maxmin: true,
            shadeClose: true, //点击遮罩关闭层
            area : ['800px' , '400px'],
            content:$('#add_menber_style'),
            btn:['提交','取消'],
            yes:function(index,layero){
                var num=0;
                var str="";
                $(".add_menber input[type$='text']").each(function(n){
                    if($(this).val()==""){
                        layer.alert(str+=""+$(this).attr("id")+"不能为空！\r\n",{
                            title: '提示框',
                            icon:0,
                        });
                        num++;
                        return false;
                    }
                });
                if(num>0){
                    return false;
                }else{
                    $.ajax({
                        cache: true,
                        type: "post",
                        url: "laboratory_save.do",
                        data:$('#form-user-add').serialize(),// 你的formid
                        async: false,
                        success: function(data){
                            if (data.flag){
                                layer.msg('添加成功', {
                                    icon: 1,
                                    time: 2000 //2秒关闭（如果不配置，默认是3秒）
                                }, function(){
                                    var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
//                                    parent.layer.close(index); //再执行关闭
                                    layer.close(index);
                                    window.location.href = data.url;
                                });
                            }
                        }
                    });
                }
            }
        });
    });
    function edit(id) {
        layer.open({
            type: 2,
            area: ['910px', '500px'],
            content: ['laboratory_edit.do?laboratoryId=' + id, 'no']  //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
        });
    }

    /*用户-删除*/
    function member_del(id){
        alert(1111)
        layer.confirm('确认要删除吗？',function(index){
            $.ajax({
                cache: false,
                type: "post",
                url: "laboratory_delete.do",
                data:{id: id},// 你的formid
                async: false,
                success: function(data){
                    if (data.flag){
                        layer.msg("删除成功", {
                            icon: 1,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                            window.location.href = data.url;
                        });
                    }
                }
            });
        });
    }
    laydate({
        elem: '#start',
        event: 'focus'
    });

</script>