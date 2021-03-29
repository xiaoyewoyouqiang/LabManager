<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="${ctx}/resource/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="${ctx}/resource/css/style.css" />
<link href="${ctx}/resource/assets/css/codemirror.css" rel="stylesheet">
	<link rel="stylesheet" href="${ctx}/resource/assets/css/ace.min.css" />
	<link rel="stylesheet"
		href="${ctx}/resource/assets/css/font-awesome.min.css" />
	<link rel="stylesheet"
		href="${ctx}/resource/assets/css/font-awesome-ie7.min.css" />
	<link rel="stylesheet" href="${ctx}/resource/assets/css/ace-ie.min.css" />
	<link rel="stylesheet" href="${ctx}/resource/css/layer.css" />
	<style>
		li{
			list-style: none;
		}
	</style>
	<script src="${ctx}/resource/assets/js/jquery.min.js"></script>
	<script src="${ctx}/resource/assets/layer/layer.js"
		type="text/javascript"></script>

	<script src="${ctx}/resource/assets/js/bootstrap.min.js"></script>
	<script src="${ctx}/resource/assets/js/typeahead-bs2.min.js"></script>
	<script src="${ctx}/resource/assets/js/jquery.dataTables.min.js"></script>
	<script src="${ctx}/resource/assets/js/jquery.dataTables.bootstrap.js"></script>
	<script type="text/javascript" src="${ctx}/resource/js/H-ui.js"></script>
	<script type="text/javascript" src="${ctx}/resource/js/H-ui.admin.js"></script>
	<script src="${ctx}/resource/assets/laydate/laydate.js"
		type="text/javascript"></script>
	<script src="${ctx}/resource/AJAX.js" type="text/javascript"></script>
	<script src="${ctx}/resource/js/jquery-1.9.1.min.js"></script>
	<script src="${ctx}/resource/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="${ctx}/resource/assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="${ctx}/resource/assets/js/ace-elements.min.js"></script>
	<script src="${ctx}/resource/assets/js/ace.min.js"></script>

	<title>设备列表</title> <script>
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
				<form method="post" action="equipment_dataList2.do">
					<div class="search_style">
						<ul class="search_content clearfix">
							<li><label class="l_f">实验室名称及型号</label><input name="xh"
								type="text" value="${bean.xh}" class="text_add"
								style="width: 200px" /></li>
							<%-- <li><label class="l_f">设备制造商</label><input name="zzs"
								type="text" value="${bean.zzs}" class="text_add"
								style="width: 200px" /></li> --%>
							<!-- <li><label class="l_f">设备序列号</label><input name="sbxlh" type="text" value="${bean.sbxlh}" class="text_add"  style=" width:200px"/></li> -->
							<li style="width: 90px;"><button type="submit"
									class="btn_search">
									<i class="icon-search"></i>查询
								</button></li>
						</ul>
					</div>
				</form>
				<div class="border clearfix">
					<span class="l_f"> <a href="javascript:ovid()"
						id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加实验室设备</a>
					</span>
				</div>
				<div class="table_menu_list">
					<table class="table table-striped table-bordered table-hover"
						id="sample-table">
						<thead>
							<tr>
								<th width="250">实验设备名称及型号</th>
								<th width="130">实验设备单价</th>
								<th width="200">设备数量</th>
								<!-- <th width="120">设备制造商</th> -->
								<th width="200">设备图片信息</th>
								<th width="250">操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pagers.datas}" var="c" varStatus="status">
								<tr>
									<td>${c.xh}</td>
									<td>${c.jg}</td>
									<td>${c.sbxlh}</td>
									<%-- <td>${c.zzs}</td> --%>
									<td><c:if test="${not empty c.photo}">
											<a href="##" data-toggle="modal"
												data-target="#photo${status.index}"
												class="label label-success radius" style="color: white">查看图片</a>
											<div class="modal fade bs-example-modal-lg"
												id="photo${status.index}" tabindex="-1" role="dialog"
												aria-labelledby="myLargeModalLabel" aria-hidden="true">
												<div class="modal-dialog modal-lg">
													<div class="modal-content">
														<img src="${ctx}${c.photo}" alt=""
															style="width: 800px; height: auto; margin-left: -200px" />
													</div>
												</div>
											</div>
										</c:if> <c:if test="${empty c.photo}">
											<span class="label label-defaunt radius">无</span>
										</c:if></td>
									<td class="td-manage"><a title="添加设备图片"
										onclick="cli(${c.id})" href="javascript:;"
										class="btn btn-xs btn-info"> <i
											class="icon-edit bigger-120"></i></a> <a title="删除设备图片"
										href="javascript:;" onclick="cli2(${c.id})"
										class="btn btn-xs btn-success"> <i
											class="icon-check bigger-120"></i>
									</a> <a title="编辑" onclick="edit(${c.id})" href="javascript:;"
										class="btn btn-xs btn-info"><i
											class="icon-edit bigger-120"></i></a> <a title="删除"
										href="javascript:;" onclick="member_del(this,${c.id})"
										class="btn btn-xs btn-warning"><i
											class="icon-trash  bigger-120"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 分页开始 -->
			<div class="pagelist">
				<pg:pager url="${ctx}/equipment_dataList2.do" maxIndexPages="5"
					items="${pagers.total}" maxPageItems="15"
					export="curPage=pageNumber">
					<pg:param name="xh" value="${bean.xh}" />
					<pg:param name="zzs" value="${bean.zzs}" />
					<pg:param name="sbxlh" value="${bean.sbxlh}" />
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
		<form action="equipment_updatePhoto.do" method="post"
			class="form form-horizontal" id="form-user-add"
			enctype="multipart/form-data">
			<div class="add_menber" id="add_photo_style"
				style="display: none; margin-top: 50px; text-align: center;">
				<div class="form-group" style="width: 100%">
					<label class="col-sm-1 control-label no-padding-right"
						for="form-field-1" style="width: 100px;">图片信息： </label>
					<div class="col-sm-9">
						<input type="file" name="file" id="id-input-file-2" class="请选择文件"
							style="width: 300px" /> <input type="hidden" name="id" id="isId"
							value="" />
					</div>
				</div>
				<%--<input type="submit" value="提交"/>--%>
			</div>
		</form>
		<form action="equipment_save.do" method="post"
			class="form form-horizontal" id="form-user-add">
			<div class="add_menber" id="add_equipment_style"
				style="display: none">
				<ul>
					<!-- <li class="adderss"><label class="label_name"
						style="width: 130px">实验课程：</label> <span class="add_name">
							<input name="bz" type="text" id="实验课程" class="text_add"
							style="width: 350px" />
					</span></li> -->
				</ul>
				<li><label class="label_name" style="width: 130px">实验室名称及型号：</label>
					<span class="add_name"> <input value="" name="xh"
						type="text" id="实验室名称及型号" class="text_add" />
				</span></li>
				<li><label class="label_name" style="width: 130px">实验设备单价：</label>
					<span class="add_name"> <input name="jg" type="text"
						id="实验设备单价" class="text_add" />
				</span></li>

				<%-- <li><label class="label_name" style="width: 130px">所属实验室：</label>
					<span class="add_name"> <select name="laboratory.id"
						style="width: 165px; margin-left: 10px" class="text_add">
							<option value="" id="所属实验室">请选择</option>
							<c:forEach items="${pagers2.datas}" var="b" varStatus="l">
								<option value="${b.id}">${b.name}</option>
							</c:forEach>
					</select>
				</span></li> --%>

				<!-- <li><label class="label_name" style="width: 130px">设备制造商：</label>
					<span class="add_name"> <input name="zzs" type="text"
						id="设备制造商" class="text_add" />
				</span>
					<div class="prompt r_f"></div></li> -->
				<li class="adderss"><label class="label_name"
					style="width: 130px">设备数量：</label> <span class="add_name">
						<input name="sbxlh" type="text" id="设备数量" class="text_add"
						style="width: 350px" />
				</span></li>

			</div>
		</form>
</body>
</html>
<script>
	/*设备-添加*/
	$('#member_add').on('click', function(){
	    layer.open({
	        type: 1,
	        title: '添加实验课程与设备',
	        maxmin: true,
	        shadeClose: true, //点击遮罩关闭层
	        area : ['800px' , '400px'],
	        content:$('#add_equipment_style'),
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
	                AJAX("equipment_save.do", "添加成功", "form-user-add", 2);
	            }
	        }
	    });
	});
    $('#id-input-file-2').ace_file_input({
        no_file:'选择图片 ...',
        btn_choose:'选择',
        btn_change:'更改',
        droppable:false,
        onchange:null,
        scrollbar: false,
        thumbnail:false, //| true | large
        whitelist:'doc'
        //blacklist:'exe|php'
        //onchange:''
        //
    });

    function  cli(id) {
        $('#isId').val(id);
        layer.open({
            type: 1,
            title: '添加图片',
            maxmin: true,
            scrollbar: false,
            shadeClose: true, //点击遮罩关闭层
            area : ['900px' , '300px'],
            content:$('#add_photo_style'),
            btn:['提交','取消'],
            yes:function(index,layero){
                var num=0;
                var str="";
                $(".add_menber input[type$='file']").each(function(n){
                    if($(this).val()==""){
                        layer.alert(str+=""+$(this).attr("class"),{
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
                    $('#form-user-add').submit();
                }
            }
        });

    }

    function  cli2(id) {
        updateId("equipment_deleteDocAndPhoto.do", "删除成功", id)
    }

    function edit(id) {
    	layer.open({
            type: 2,
            area: ['910px', '500px'],
            content: ['equipment_edit.do?id=' + id, 'no']  //这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
        });
    }
    

    function sh(id) {
        updateId("equipment_updateSh.do", "使用成功", id);
    }

    /*图片-删除*/
    function member_del(obj,id){
    	layer.confirm('确认要删除吗？',function(index){
            updateId("equipment_delete.do", "删除成功", id)
         });
    }
    laydate({
        elem: '#start',
        event: 'focus'
    });

</script>