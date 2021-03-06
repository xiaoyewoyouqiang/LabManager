<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD nameTML 1.0 Transitional//EN" "http://www.w3.org/TR/nametml1/DTD/nametml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/nametml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="${ctx}/resource/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${ctx}/resource/css/style.css"/>
    <link href="${ctx}/resource/assets/css/codemirror.css" rel="stylesheet">
    <link rel="stylesheet" href="${ctx}/resource/assets/css/ace.min.css" />
    <link rel="stylesheet" href="${ctx}/resource/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="${ctx}/resource/assets/css/font-awesome-ie7.min.css" />
    <link rel="stylesheet" href="${ctx}/resource/assets/css/ace-ie.min.css" />
    <link rel="stylesheet" href="${ctx}/resource/css/layer.css" />
    <link rel="stylesheet" href="${ctx}/resource/font/css/font-awesome.min.css"/>
    <script src="${ctx}/resource/assets/js/jquery.min.js"></script>
    <script src="${ctx}/resource/assets/layer/layer.js" type="text/javascript" ></script>
    <script src="${ctx}/resource/assets/js/bootstrap.min.js"></script>
    <script src="${ctx}/resource/assets/js/typeahead-bs2.min.js"></script>
    <script src="${ctx}/resource/assets/js/jquery.dataTables.min.js"></script>
    <script src="${ctx}/resource/assets/js/jquery.dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${ctx}/resource/js/H-ui.js"></script>
    <script type="text/javascript" src="${ctx}/resource/js/H-ui.admin.js"></script>
    <script src="${ctx}/resource/assets/laydate/laydate.js" type="text/javascript"></script>
    <script src="${ctx}/resource/AJAX.js" type="text/javascript"></script>
    <script src="${ctx}/resource/js/jquery-1.9.1.min.js"></script>
    <script src="${ctx}/resource/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="${ctx}/resource/assets/js/jquery.ui.touch-punch.min.js"></script>
    <script src="${ctx}/resource/assets/js/ace-elements.min.js"></script>
    <script src="${ctx}/resource/assets/js/ace.min.js"></script>

    <title>设备列表</title>
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
            <form method="post" action="equipment_dataList3.do">
            <div class="search_style">
                <ul class="search_content clearfix">
                    <li><label class="l_f">实验室名称及型号</label><input name="name" type="text" value="${bean.name}" class="text_add"  style=" width:200px"/></li>
                    <li><label class="l_f">设备制造商</label><input name="zzs" type="text" value="${bean.zzs}" class="text_add"  style=" width:200px"/></li>
                    <li style="width:90px;"><button type="submit" class="btn_search"><i class="icon-search"></i>查询</button></li>
                </ul>
            </div>
                </form>

            <div class="table_menu_list">
                <table class="table table-striped table-bordered table-hover" id="sample-table">
                    <thead>
                    <tr>
                        <th width="250">实验设备名称及型号</th>
                        <th width="200">地点</th>
                        <th width="200">实验图片信息</th>
                        <th width="200">状态</th>
                        <th width="250">操作</th>
                        <c:if test="${user.role.id == 1}">
                        	<th>是否审核</th>
                        	<th>操作</th>
                        </c:if> 
                    </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${pagers.datas}" var="c" varStatus="status">
                        <tr>
                        <td>${c.name}</td>
                        <td>${c.zzs}</td>
                            <td>
                                <c:if test="${not empty c.photo}">
                                    <a href="##" data-toggle="modal" data-target="#photo${status.index}" class="label label-success radius" style="color: white">查看图片</a>
                                    <div class="modal fade bs-example-modal-lg" id="photo${status.index}" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                            <img src="${ctx}${c.photo}" alt="" style="width: 800px; height: auto; margin-left: -200px"/>
                                        </div>
                                    </div>
                                </div>
                                </c:if>
                            </td>
                            <td>
                                <c:if test="${c.state == 0}">
                                    <span class="label label-success radius">可借用</span>
                                </c:if>
                                <c:if test="${c.state == 1}">
                                    <span class="label label-defaunt radius">已借用</span>
                                </c:if>
                                <c:if test="${c.state == 2 || c.state == 3}">
                                    <span class="label label-info radius">待审核</span>
                                </c:if>
                            </td>
                            <td class="td-manage">
                            <c:if test="${c.state == 0}">
                                <a onClick="yy(${c.id})"  href="javascript:;" title="借用"  class="btn btn-xs btn-success">借用</a>
                            </c:if>
                                <c:if test="${c.state == 1}">
                                <a onClick="qx(${c.id})"  href="javascript:;" title="归还"  class="btn btn-xs btn-success">归还</a>
                                </c:if>
                        	</td>
                        	<c:if test="${user.role.id == 1}">
                        		<td>
                        			<c:if test="${c.state == 2 || c.state == 3}"><span style="color: red">未审核</span></c:if>
                            		<c:if test="${c.state == 1 || c.state == 0}"><span style="color: blue">已审核</span></c:if>
                        		</td>
                        		<td>
		                            <c:if test="${c.state == 2 || c.state == 3}">
		                                <a title="审核" onclick="sh(${c.id},${c.state})" href="javascript:;"
		                                   class="btn btn-xs btn-info" style="background-color: #00B83F"><i
		                                        class="fa fa-book"></i></a>
		                            </c:if>
		                        </td>
                        	</c:if>
                    </tr>
                          </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    <!-- 分页开始 -->
    <div class="pagelist">
        <pg:pager url="${ctx}/equipment_dataList3.do" maxIndexPages="5" items="${pagers.total}" maxPageItems="15"
                  export="curPage=pageNumber">
            <pg:param name="name" value="${bean.name}"/>
            <pg:param name="zzs" value="${bean.zzs}"/>
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
</body>
</html>
<script>
    function yy(id) {
        $.ajax({
            cache: false,
            type: "post",
            url: "equipment_yy.do",
            data:{id: id},// 你的formid
            async: false,
            success: function(data){
                if (data.flag){
                    layer.msg("待管理员审核", {
                        icon: 1,
                        time: 2000 //2秒关闭（如果不配置，默认是3秒）
                    }, function(){
                        shuaxin2();
                        window.location.href = data.url;
                    });
                } else {
                    layer.msg("已经被借用", {
                        icon: 1,
                        time: 2000 //2秒关闭（如果不配置，默认是3秒）
                    }, function(){
                        shuaxin2();
                        window.location.href = data.url;
                    });
                }
            }
        });
    }
    
    function sh(id,state) {
        $.ajax({
            cache: false,
            type: "post",
            url: "equipment_updateSh.do",
            data: {id: id,state: state},// 你的formid
            async: false,
            success: function (data) {
                if (data.flag) {
                    layer.msg('审核成功', {
                        icon: 1,
                        time: 2000 //2秒关闭（如果不配置，默认是3秒）
                    }, function () {
                        var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                        parent.layer.close(index); //再执行关闭
                        window.location.href = data.url;
                    });
                }
            }
        });
    }

    function qx(id) {
        $.ajax({
            cache: false,
            type: "post",
            url: "equipment_qx.do",
            data:{id: id},// 你的formid
            async: false,
            success: function(data){
                if (data.flag){
                    layer.msg("待管理员审核", {
                        icon: 1,
                        time: 2000 //2秒关闭（如果不配置，默认是3秒）
                    }, function(){
                        shuaxin2();
                        window.location.href = data.url;
                    });
                } else {
                    layer.msg("请借用人归还操作", {
                        icon: 1,
                        time: 2000 //2秒关闭（如果不配置，默认是3秒）
                    }, function(){
                        shuaxin2();
                        window.location.href = data.url;
                    });
                }
            }
        });
    }
    laydate({
        elem: '#start',
        event: 'focus'
    });

</script>