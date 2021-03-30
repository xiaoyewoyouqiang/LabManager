<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="${ctx}/resource/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${ctx}/resource/css/style.css"/>
    <link href="${ctx}/resource/assets/css/codemirror.css" rel="stylesheet">
    <link rel="stylesheet" href="${ctx}/resource/assets/css/ace.min.css"/>
    <link rel="stylesheet" href="${ctx}/resource/assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${ctx}/resource/assets/css/font-awesome-ie7.min.css"/>
    <link rel="stylesheet" href="${ctx}/resource/assets/css/ace-ie.min.css"/>
    <script src="${ctx}/resource/assets/js/jquery.min.js"></script>

    <script src="${ctx}/resource/assets/js/bootstrap.min.js"></script>
    <script src="${ctx}/resource/assets/js/typeahead-bs2.min.js"></script>
    <script src="${ctx}/resource/assets/js/jquery.dataTables.min.js"></script>
    <script src="${ctx}/resource/assets/js/jquery.dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${ctx}/resource/js/H-ui.js"></script>
    <script type="text/javascript" src="${ctx}/resource/js/H-ui.admin.js"></script>
    <script src="${ctx}/resource/assets/layer/layer.js" type="text/javascript"></script>
    <script src="${ctx}/resource/assets/laydate/laydate.js" type="text/javascript"></script>
    <script src="${ctx}/resource/AJAX.js" type="text/javascript"></script>
    <title>实验室列表</title>
    <script>
        $(function () {
            if (${login} == 1
            )
            {
                top.location = 'login_login.do';
            }
        })
    </script>
</head>

<body>
<div class="page-content clearfix">
    <div id="Member_Ratings">
        <div class="d_Confirm_Order_style">
            <form method="post" action="repair_list.do">
                <div class="search_style">
                    <ul class="search_content clearfix">
                        <li><label class="l_f">实验室名称及型号</label><input name="xh" type="text" value="${bean.xh}"
                                                                  class="text_add" style=" width:200px"/></li>
                        <li style="width:90px;">
                            <button type="submit" class="btn_search"><i class="icon-search"></i>查询</button>
                        </li>
                    </ul>
                </div>
            </form>
            <form  method="post" action="repair_export.do">
                <input name="xh" type="hidden" value="${bean.xh}" class="text_add"  style=" width:200px"/>
                <div class="border clearfix">
       <span class="l_f">
        <button type="submit" id="member_add" class="btn btn-warning"><i class="icon-plus"></i>导出表格</button>
       </span>
                </div>
            </form>
            <div class="table_menu_list">
                <table class="table table-striped table-bordered table-hover" id="sample-table">
                    <thead>
                    <tr>
                        <th>维修时间</th>
                        <th>实验室名称</th>  
                        <th>机器编号</th>
                        <th>检查情况</th>
                        <th width="300">跟进（维修）结果</th>
                        <th>维修人</th>
                        <th>备注</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${pagers.datas}" var="c" varStatus="status">
                        <tr>
                        	<td><fmt:formatDate value="${c.bxTime}" pattern="yyyy-MM-dd" /></td>
                            <td>${c.wz}</td>  
                            <td>${c.number}</td>
                            <td>${c.bz}</td>
                            <td><c:if test="${c.endTime != null }">已解决</c:if>
                            <c:if test="${c.endTime == null }">维修中</c:if></td>
                           <td>${c.title}</td>
                           <td></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- 分页开始 -->
    <div class="pagelist">
        <pg:pager url="${ctx}/repair_list.do" maxIndexPages="5" items="${pagers.total}" maxPageItems="15"
                  export="curPage=pageNumber">
            <pg:param name="equipment.xh" value="${bean.equipment.xh}"/>
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

    function shuaxin2() {
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    }

    laydate({
        elem: '#start',
        event: 'focus'
    });

</script>