<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@include file="/common/taglibs.jsp" %>
		<!DOCTYPE html>
		<html lang="zh-cn">

		<head>
			<meta charset="utf-8" />
			<title>网站后台管理系统</title>
			<meta name="viewport" content="width=device-width, initial-scale=1.0" />
			<link href="${ctx}/resource/assets/css/bootstrap.min.css" rel="stylesheet" />
			<link rel="stylesheet" href="${ctx}/resource/assets/css/font-awesome.min.css" />
			<!--[if IE 7]>
    <link rel="stylesheet" href="${ctx}/resource/assets/css/font-awesome-ie7.min.css"/>
    <![endif]-->
			<link rel="stylesheet" href="${ctx}/resource/assets/css/ace.min.css" />
			<link rel="stylesheet" href="${ctx}/resource/assets/css/ace-rtl.min.css" />
			<link rel="stylesheet" href="${ctx}/resource/assets/css/ace-skins.min.css" />
			<link rel="stylesheet" href="${ctx}/resource/css/style.css" />
			<!--[if lte IE 8]>
    <link rel="stylesheet" href="${ctx}/resource/assets/css/ace-ie.min.css"/>
    <![endif]-->
			<script src="${ctx}/resource/assets/js/ace-extra.min.js"></script>
			<!--[if lt IE 9]>
    <script src="${ctx}/resource/assets/js/html5shiv.js"></script>
    <script src="${ctx}/resource/assets/js/respond.min.js"></script>
    <![endif]-->
			<!--[if !IE]> -->
			<script src="${ctx}/resource/js/jquery-1.9.1.min.js"></script>
			<!-- <![endif]-->
			<!--[if IE]>
    <script type="text/javascript">window.jQuery || document.write("<script src='${ctx}/resource/assets/js/jquery-1.10.2.min.js'>" + "<" + "script>");</script>
    <![endif]-->
			<script type="text/javascript">
				if ("ontouchend" in document) document.write("<script src='${ctx}/resource/assets/js/jquery.mobile.custom.min.js'>" + "<" + "script>");
			</script>
			<script src="${ctx}/resource/assets/js/bootstrap.min.js"></script>
			<script src="${ctx}/resource/assets/js/typeahead-bs2.min.js"></script>
			<!--[if lte IE 8]>
    <script src="${ctx}/resource/assets/js/excanvas.min.js"></script>
    <![endif]-->
			<script src="${ctx}/resource/assets/js/ace-elements.min.js"></script>
			<script src="${ctx}/resource/assets/js/ace.min.js"></script>
			<script src="${ctx}/resource/assets/layer/layer.js" type="text/javascript"></script>
			<script src="${ctx}/resource/assets/laydate/laydate.js" type="text/javascript"></script>
			<script src="${ctx}/resource/js/jquery.nicescroll.js" type="text/javascript"></script>

			<script type="text/javascript">
				$(function () {
					var cid = $('#nav_list> li>.submenu');
					cid.each(function (i) {
						$(this).attr('id', "Sort_link_" + i);

					})
				})
				jQuery(document).ready(function () {
					$.each($(".submenu"), function () {
						var $aobjs = $(this).children("li");
						var rowCount = $aobjs.size();
						var divHeigth = $(this).height();
						$aobjs.height(divHeigth / rowCount);
					});
					//初始化宽度、高度

					$("#main-container").height($(window).height() - 76);
					$("#iframe").height($(window).height() - 140);

					$(".sidebar").height($(window).height() - 99);
					var thisHeight = $("#nav_list").height($(window).outerHeight() - 173);
					$(".submenu").height();
					$("#nav_list").children(".submenu").css("height", thisHeight);

					//当文档窗口发生改变时 触发
					$(window).resize(function () {
						$("#main-container").height($(window).height() - 76);
						$("#iframe").height($(window).height() - 140);
						$(".sidebar").height($(window).height() - 99);

						var thisHeight = $("#nav_list").height($(window).outerHeight() - 173);
						$(".submenu").height();
						$("#nav_list").children(".submenu").css("height", thisHeight);
					});
					$(document).on('click', '.iframeurl', function () {
						var cid = $(this).attr("name");
						var cname = $(this).attr("title");
						$("#iframe").attr("src", cid).ready();
						$("#Bcrumbs").attr("href", cid).ready();
						$(".Current_page a").attr('href', cid).ready();
						$(".Current_page").attr('name', cid);
						$(".Current_page").html(cname).css({ "color": "#333333", "cursor": "default" }).ready();
						$("#parentIframe").html('<span class="parentIframe iframeurl"> </span>').css("display", "none").ready();
						$("#parentIfour").html('').css("display", "none").ready();
					});


				});
				/******/
				$(document).on('click', '.link_cz > li', function () {
					$('.link_cz > li').removeClass('active');
					$(this).addClass('active');
				});
				/*******************/
				//jQuery( document).ready(function(){
				//	  $("#submit").click(function(){
				//	// var num=0;
				//     var str="";
				//     $("input[type$='password']").each(function(n){
				//          if($(this).val()=="")
				//          {
				//              // num++;
				//			   layer.alert(str+=""+$(this).attr("name")+"不能为空！\r\n",{
				//                title: '提示框',
				//				icon:0,
				//          });
				//             // layer.msg(str+=""+$(this).attr("name")+"不能为空！\r\n");
				//             layer.close(index);
				//          }
				//     });
				//})
				//	});

				/*********************点击事件*********************/
				$(document).ready(function () {
					$('#nav_list,.link_cz').find('li.home').on('click', function () {
						$('#nav_list,.link_cz').find('li.home').removeClass('active');
						$(this).addClass('active');
					});
					//时间设置
					function currentTime() {
						var d = new Date(), str = '';
						str += d.getFullYear() + '年';
						str += d.getMonth() + 1 + '月';
						str += d.getDate() + '日';
						str += d.getHours() + '时';
						str += d.getMinutes() + '分';
						str += d.getSeconds() + '秒';
						return str;
					}

					setInterval(function () {
						$('#time').html(currentTime)
					}, 1000);
					//修改密码
					$('.change_Password').on('click', function () {
						layer.open({
							type: 1,
							title: '修改密码',
							area: ['300px', '300px'],
							shadeClose: true,
							content: $('#change_Pass'),
							btn: ['确认修改'],
							yes: function (index, layero) {
								if ($("#password").val() == "") {
									layer.alert('原密码不能为空!', {
										title: '提示框',
										icon: 0,

									});
									return false;
								}
								if ($("#Nes_pas").val() == "") {
									layer.alert('新密码不能为空!', {
										title: '提示框',
										icon: 0,

									});
									return false;
								}

								if ($("#c_mew_pas").val() == "") {
									layer.alert('确认新密码不能为空!', {
										title: '提示框',
										icon: 0,

									});
									return false;
								}
								if (!$("#c_mew_pas").val || $("#c_mew_pas").val() != $("#Nes_pas").val()) {
									layer.alert('密码不一致!', {
										title: '提示框',
										icon: 0,

									});
									return false;
								}
								else {
									layer.alert('修改成功！', {
										title: '提示框',
										icon: 1,
									});
									layer.close(index);
								}
							}
						});
					});
					$('#Exit_system').on('click', function () {
						layer.confirm('是否确定退出系统？', {
							btn: ['是', '否'],//按钮
							icon: 2,
						},
							function () {
								location.href = "login.jsp";

							});
					});
				});
				function link_operating(name, title) {
					var cid = $(this).name;
					var cname = $(this).title;
					$("#iframe").attr("src", cid).ready();
					$("#Bcrumbs").attr("href", cid).ready();
					$(".Current_page a").attr('href', cid).ready();
					$(".Current_page").attr('name', cid);
					$(".Current_page").html(cname).css({ "color": "#333333", "cursor": "default" }).ready();
					$("#parentIframe").html('<span class="parentIframe iframeurl"> </span>').css("display", "none").ready();
					$("#parentIfour").html('').css("display", "none").ready();


				}
			</script>
		</head>

		<body>
			<div class="navbar navbar-default" id="navbar">
				<script type="text/javascript">
					try {
						ace.settings.check('navbar', 'fixed')
					}
				</script>
				<div class="navbar-container" id="navbar-container">
					<div class="navbar-header pull-left">
						<a href="#" class="navbar-brand"> <small>
								<p>
									<img style="display: inline-block; vertical-align: middle; height: 100%; margin: 0 20px;"
										src="${ctx}/resource/images/be76631b89592866c532412c9458699.png" /><b
										style="font-family: '幼圆'; font-size: 38px; color: #337ab7; line-height: 100%; display: inline-block; vertical-align: middle; padding-top: 3px;">
										<span>专业实验室信息管理系统<i
												style="display: block; font-size: 14px;">Professional Laboratory Information Management System</i></span></b>
								</p>
							</small>
						</a>
						<!-- /.brand -->
					</div>
					<!-- /.navbar-header -->
					<div class="navbar-header operating pull-left"></div>
					<div class="navbar-header pull-right" role="navigation">
						<ul class="nav ace-nav">
							<li class="light-blue"><a data-toggle="dropdown" href="#" class="dropdown-toggle"
									style="background: #1D3557; color: #fff; padding: 0;"> <span class="time"
										style="width: auto;padding: 0 20px;background-color: #fff;height: 45px; display: inline-block;"><em
											id="time" style="color: #337ab7;white-space: nowrap;"></em></span><span
										class="user-info"
										style="max-width: 142px; text-align: center; width: 142px; text-overflow: initial; padding: 11px 10px 0 10px;"><small
											style="display: inline;">欢迎光临，</small>${user.realName}</span> <i
										class="icon-caret-down" style="color: #fff"></i>
								</a>
								<ul
									style="min-width: 171px;"
									class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
									<li class="divider"></li>
									<li><a href="login_tuichu.do" id="Exit_system"><i class="icon-off"></i>退出</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="main-container" id="main-container">
				<script type="text/javascript">
        try {
						ace.settings.check('main-container', 'fixed')
					} catch (e) {
					}
				</script>
				<div class="main-container-inner">
					<a class="menu-toggler" id="menu-toggler" href="#"> <span class="menu-text"></span>
					</a>
					<div class="sidebar" id="sidebar">
						<script type="text/javascript">
							try {
								ace.settings.check('sidebar', 'fixed')
							} catch (e) {
							}
						</script>
						<div class="sidebar-shortcuts" id="sidebar-shortcuts">
							<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
								<a class="btn btn-success"
									style="background-color: #1D3557 !important; border-color: #1D3557; disabled:disabled;cursor:default">
									<i class="icon-signal"></i>
								</a> <a class="btn btn-info"
									style="background-color: #1D3557 !important; border-color: #1D3557;disabled:disabled;cursor:default">
									<i class="icon-pencil"></i>
								</a> <a class="btn btn-warning"
									style="background-color: #1D3557 !important; border-color: #1D3557;disabled:disabled;cursor:default">
									<i class="icon-group"></i>
								</a> <a class="btn btn-danger"
									style="background-color: #1D3557 !important; border-color: #1D3557;disabled:disabled;cursor:default">
									<i class="icon-cogs"></i>
								</a>
							</div>

							<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
								<span class="btn btn-success"></span> <span class="btn btn-info"></span>

								<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
							</div>
						</div>
						<!-- #sidebar-shortcuts -->
						<div id="menu_style" class="menu_style">
							<ul class="nav nav-list" id="nav_list">
								<li class="home">
									<a href="javascript:void(0)" name="notice_list.do" class="iframeurl" title=""><i
											class="icon-home">
											<?xml version="1.0" standalone="no"?>
											<!DOCTYPE svg
												PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
											<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="25.600000pt"
												height="25.600000pt" viewBox="0 0 25.600000 25.600000"
												preserveAspectRatio="xMidYMid meet">
												<metadata>
													Created by potrace 1.13, written by Peter Selinger 2001-2015
												</metadata>
												<g transform="translate(0.000000,25.600000) scale(0.080000,-0.080000)"
													fill="#ffffff" stroke="none">
													<path d="M0 160 l0 -160 160 0 160 0 0 160 0 160 -160 0 -160 0 0 -160z m204
    101 c22 -22 51 -41 65 -43 26 -3 26 -4 29 -92 2 -65 -1 -92 -10 -98 -7 -4 -65
    -8 -129 -8 -88 0 -119 3 -128 14 -8 9 -11 45 -9 97 l3 83 35 7 c22 5 46 20 65
    43 17 20 32 36 35 36 3 0 23 -18 44 -39z" />
													<path d="M135 240 c-18 -20 -17 -20 25 -20 42 0 43 0 25 20 -10 11 -21 20 -25
    20 -4 0 -15 -9 -25 -20z" />
													<path d="M40 120 l0 -70 120 0 120 0 0 70 0 70 -120 0 -120 0 0 -70z m198 43
    c3 -10 -17 -13 -77 -13 -75 0 -92 6 -74 24 12 12 146 2 151 -11z m2 -38 c0
    -12 -16 -15 -80 -15 -64 0 -80 3 -80 15 0 12 16 15 80 15 64 0 80 -3 80 -15z
    m-70 -40 c0 -11 -12 -15 -45 -15 -33 0 -45 4 -45 15 0 11 12 15 45 15 33 0 45
    -4 45 -15z" />
												</g>
											</svg>
										</i><span class="menu-text"> 通知管理 </span></a>
								</li>
								<li>
									<a href="#" class="dropdown-toggle"><i class="icon-group">
											<?xml version="1.0" standalone="no"?>
											<!DOCTYPE svg
												PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
											<svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="25.600000pt"
												height="25.600000pt" viewBox="0 0 25.600000 25.600000"
												preserveAspectRatio="xMidYMid meet">
												<metadata>
													Created by potrace 1.13, written by Peter Selinger 2001-2015
												</metadata>
												<g transform="translate(0.000000,25.600000) scale(0.080000,-0.080000)"
													fill="#ffffff" stroke="none">
													<path d="M0 210 c0 -105 1 -109 18 -92 11 11 16 27 14 45 -3 15 1 34 8 42 15
18 56 20 66 3 4 -7 13 2 23 23 9 19 27 38 43 43 58 20 115 -41 86 -93 -12 -22
-11 -27 14 -52 28 -27 40 -89 18 -89 -5 0 -10 9 -10 19 0 32 -41 72 -75 73
-51 1 -73 -11 -85 -47 -15 -46 -30 -53 -30 -15 0 21 9 41 29 60 16 16 26 31
23 34 -2 3 -13 -6 -24 -19 -11 -14 -29 -25 -42 -25 -27 0 -46 -18 -46 -42 0
-10 -7 -18 -15 -18 -10 0 -15 -10 -15 -30 l0 -30 160 0 160 0 0 160 0 160
-160 0 -160 0 0 -110z" />
													<path d="M160 235 c-7 -8 -10 -25 -6 -39 10 -41 72 -42 82 0 8 30 -11 54 -41
54 -12 0 -28 -7 -35 -15z" />
													<path d="M60 185 c-10 -11 -10 -19 -2 -27 15 -15 44 -2 40 19 -4 23 -22 27
-38 8z" />
												</g>
											</svg>
										</i><span class="menu-text"> 用户管理 </span><b
											class="arrow icon-angle-down"></b></a>
									<ul class="submenu">
										<li class="home"><a href="javascript:void(0)" name="user_list.do" title="用户管理"
												class="iframeurl"> <i class="icon-double-angle-right">
													<?xml version="1.0" standalone="no"?>
													<!DOCTYPE svg
														PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
													<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
														width="28.000000pt" height="25.600000pt"
														viewBox="0 0 28.000000 25.600000"
														preserveAspectRatio="xMidYMid meet">
														<metadata>
															Created by potrace 1.13, written by Peter Selinger 2001-2015
														</metadata>
														<g transform="translate(0.000000,25.600000) scale(0.080000,-0.080000)"
															fill="#ffffff" stroke="none">
															<path d="M0 160 l0 -160 175 0 175 0 0 160 0 160 -175 0 -175 0 0 -160z m298
108 c16 -16 16 -150 0 -166 -7 -7 -34 -12 -60 -12 -26 0 -48 -4 -48 -10 0 -5
11 -10 25 -10 16 0 25 -6 25 -15 0 -12 -13 -15 -60 -15 -47 0 -60 3 -60 15 0
8 9 15 20 15 11 0 20 4 20 9 0 6 -24 11 -52 13 l-53 3 -3 84 c-2 61 1 87 10
92 21 14 222 11 236 -3z" />
															<path
																d="M80 185 l0 -65 100 0 101 0 -3 63 -3 62 -97 3 -98 3 0 -66z" />
														</g>
													</svg>
												</i>用户列表
											</a>
										</li>
									</ul>
								</li>
								<c:if test="${role == 'js'}">
									<li>
										<a href="#" class="dropdown-toggle"><i class="icon-bookmark">
												<?xml version="1.0" standalone="no"?>
												<!DOCTYPE svg
													PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
												<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
													width="25.600000pt" height="25.600000pt"
													viewBox="0 0 25.600000 25.600000"
													preserveAspectRatio="xMidYMid meet">
													<metadata>
														Created by potrace 1.13, written by Peter Selinger 2001-2015
													</metadata>
													<g transform="translate(0.000000,25.600000) scale(0.080000,-0.080000)"
														fill="#ffffff" stroke="none">
														<path d="M0 160 l0 -160 160 0 160 0 0 160 0 160 -160 0 -160 0 0 -160z m248
114 c12 -8 27 -24 33 -36 9 -17 6 -25 -17 -49 -33 -35 -50 -36 -81 -7 -30 28
-29 46 4 80 31 33 32 33 61 12z m-100 -48 c2 -32 -1 -52 -10 -57 -20 -13 -82
-11 -96 3 -13 13 -17 90 -5 102 4 4 30 6 58 4 l50 -3 3 -49z m0 -130 c2 -32
-1 -52 -10 -57 -20 -13 -82 -11 -96 3 -13 13 -17 90 -5 102 4 4 30 6 58 4 l50
-3 3 -49z m127 -6 l0 -55 -43 -3 c-53 -4 -72 10 -72 53 0 59 7 66 64 63 l51
-3 0 -55z" />
														<path d="M205 240 c-18 -19 -18 -22 -2 -37 16 -16 18 -16 37 3 20 20 20 21 2
37 -18 16 -20 16 -37 -3z" />
														<path d="M60 226 c0 -35 1 -36 36 -36 34 0 35 1 32 33 -3 28 -7 32 -35 35 -32
3 -33 2 -33 -32z" />
														<path d="M60 96 c0 -35 1 -36 36 -36 34 0 35 1 32 33 -3 28 -7 32 -35 35 -32
3 -33 2 -33 -32z" />
														<path d="M190 95 c0 -33 2 -35 35 -35 33 0 35 2 35 35 0 33 -2 35 -35 35 -33
0 -35 -2 -35 -35z" />
													</g>
												</svg>
											</i><span class="menu-text">
												设备借用管理 </span><b class="arrow icon-angle-down"></b></a>
										<ul class="submenu">
											<li class="home"><a href="javascript:void(0)" name="equipment_dataList3.do"
													title="设备借用管理" class="iframeurl"><i
														class="icon-double-angle-right"></i>设备借用管理</a>
											</li>

										</ul>
									</li>
								</c:if>
								<%-- <c:if test="${role != 'xs'}"> --%>
									<li><a href="#" class="dropdown-toggle"><i class="icon-desktop">
												<?xml version="1.0" standalone="no"?>
												<!DOCTYPE svg
													PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
												<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
													width="28.000000pt" height="25.600000pt"
													viewBox="0 0 28.000000 25.600000"
													preserveAspectRatio="xMidYMid meet">
													<metadata>
														Created by potrace 1.13, written by Peter Selinger 2001-2015
													</metadata>
													<g transform="translate(0.000000,25.600000) scale(0.080000,-0.080000)"
														fill="#ffffff" stroke="none">
														<path d="M0 160 l0 -160 175 0 175 0 0 160 0 160 -175 0 -175 0 0 -160z m298
108 c16 -16 16 -150 0 -166 -7 -7 -34 -12 -60 -12 -26 0 -48 -4 -48 -10 0 -5
11 -10 25 -10 16 0 25 -6 25 -15 0 -12 -13 -15 -60 -15 -47 0 -60 3 -60 15 0
8 9 15 20 15 11 0 20 4 20 9 0 6 -24 11 -52 13 l-53 3 -3 84 c-2 61 1 87 10
92 21 14 222 11 236 -3z" />
														<path
															d="M80 185 l0 -65 100 0 101 0 -3 63 -3 62 -97 3 -98 3 0 -66z" />
													</g>
												</svg>
											</i><span class="menu-text"> 实验室管理 </span><b
												class="arrow icon-angle-down"></b></a>
										<ul class="submenu">
											<c:if test="${role == 'admin'}">
												<li class="home"><a href="javascript:void(0)" name="laboratory_list.do"
														title="实验室列表" class="iframeurl">
														<i class="icon-double-angle-right"></i>实验室基本信息
													</a></li>
												<!-- <li class="home"><a href="javascript:void(0)"
														name="equipment_dataList.do" title="实验室大纲" class="iframeurl">
														<i class="icon-double-angle-right"></i>实验室大纲
													</a></li> -->
											</c:if>
											
											<li class="home"><a href="javascript:void(0)" name="laboratory_list2.do"
													title="实验室列表" class="iframeurl">
													<i class="icon-double-angle-right"></i>实验室预约
												</a></li>
											
											<li class="home"><a href="javascript:void(0)" name="laboratory_listcopy.do"
													title="规章制度" class="iframeurl">
													<i class="icon-double-angle-right"></i>规章制度
												</a></li>
										</ul>
									</li>
								<%-- </c:if> --%>
								<c:if test="${role == 'admin'}">
									<li><a href="#" class="dropdown-toggle"><i class="icon-cogs">
												<?xml version="1.0" standalone="no"?>
												<!DOCTYPE svg
													PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
												<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
													width="25.600000pt" height="25.600000pt"
													viewBox="0 0 25.600000 25.600000"
													preserveAspectRatio="xMidYMid meet">
													<metadata>
														Created by potrace 1.13, written by Peter Selinger 2001-2015
													</metadata>
													<g transform="translate(0.000000,25.600000) scale(0.080000,-0.080000)"
														fill="#ffffff" stroke="none">
														<path d="M0 160 l0 -160 160 0 160 0 0 160 0 160 -160 0 -160 0 0 -160z m308
	-8 l3 -122 -151 0 -150 0 0 118 c0 65 3 122 7 126 4 3 70 5 147 4 l141 -3 3
	-123z" />
														<path
															d="M40 225 l0 -25 120 0 120 0 0 25 0 25 -120 0 -120 0 0 -25z" />
														<path d="M40 155 l0 -25 120 0 120 0 0 25 0 25 -120 0 -120 0 0 -25z m228 -2
	c2 -8 -6 -13 -22 -13 -25 0 -33 10 -19 24 10 10 36 3 41 -11z" />
														<path d="M40 75 l0 -25 120 0 120 0 0 25 0 25 -120 0 -120 0 0 -25z m228 3
	c-6 -17 -40 -17 -45 0 -3 7 5 12 22 12 17 0 25 -5 23 -12z" />
													</g>
												</svg>
											</i><span class="menu-text"> 实验设备管理 </span><b
												class="arrow icon-angle-down"></b></a>
										<ul class="submenu">
										<c:if test="${role != 'xs'}">
											<li class="home"><a href="javascript:void(0)" name="equipment_list.do"
													title="实验设备详情管理" class="iframeurl"><i
														class="icon-double-angle-right"></i>实验设备详情管理</a></li>
											</c:if><c:if test="${role == 'xs'}">
												<li class="home"><a href="javascript:void(0)"
														name="laboratory_list2copy.do" title="实验室列表" class="iframeurl">
														<i class="icon-double-angle-right"></i>实验室预约
													</a></li>
											</c:if>
											<c:if test="${role == 'admin'}">
												<li class="home"><a href="javascript:void(0)"
														name="equipment_dataList2.do" title="实验设备的图片管理"
														class="iframeurl"><i
															class="icon-double-angle-right"></i>实验设备图片管理</a></li>
											</c:if>
										</ul>
									</li>
								</c:if>
								<c:if test="${role == 'admin'||role == 'xs'}">
									<li><a href="#" class="dropdown-toggle"><i class="icon-bookmark">
												<?xml version="1.0" standalone="no"?>
												<!DOCTYPE svg
													PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
												<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
													width="25.600000pt" height="25.600000pt"
													viewBox="0 0 25.600000 25.600000"
													preserveAspectRatio="xMidYMid meet">
													<metadata>
														Created by potrace 1.13, written by Peter Selinger 2001-2015
													</metadata>
													<g transform="translate(0.000000,25.600000) scale(0.080000,-0.080000)"
														fill="#ffffff" stroke="none">
														<path d="M0 160 l0 -160 160 0 160 0 0 160 0 160 -160 0 -160 0 0 -160z m248
114 c12 -8 27 -24 33 -36 9 -17 6 -25 -17 -49 -33 -35 -50 -36 -81 -7 -30 28
-29 46 4 80 31 33 32 33 61 12z m-100 -48 c2 -32 -1 -52 -10 -57 -20 -13 -82
-11 -96 3 -13 13 -17 90 -5 102 4 4 30 6 58 4 l50 -3 3 -49z m0 -130 c2 -32
-1 -52 -10 -57 -20 -13 -82 -11 -96 3 -13 13 -17 90 -5 102 4 4 30 6 58 4 l50
-3 3 -49z m127 -6 l0 -55 -43 -3 c-53 -4 -72 10 -72 53 0 59 7 66 64 63 l51
-3 0 -55z" />
														<path d="M205 240 c-18 -19 -18 -22 -2 -37 16 -16 18 -16 37 3 20 20 20 21 2
37 -18 16 -20 16 -37 -3z" />
														<path d="M60 226 c0 -35 1 -36 36 -36 34 0 35 1 32 33 -3 28 -7 32 -35 35 -32
3 -33 2 -33 -32z" />
														<path d="M60 96 c0 -35 1 -36 36 -36 34 0 35 1 32 33 -3 28 -7 32 -35 35 -32
3 -33 2 -33 -32z" />
														<path d="M190 95 c0 -33 2 -35 35 -35 33 0 35 2 35 35 0 33 -2 35 -35 35 -33
0 -35 -2 -35 -35z" />
													</g>
												</svg>
											</i><span class="menu-text"> 设备借用管理 </span><b
												class="arrow icon-angle-down"></b></a>
										<ul class="submenu">
											<li class="home"><a href="javascript:void(0)" name="equipment_dataList3.do"
													title="设备借用管理" class="iframeurl"><i
														class="icon-double-angle-right"></i>设备借用管理</a></li>
										</ul>
									</li>
								</c:if>
								<c:if test="${role == 'admin'}">
									<li><a href="#" class="dropdown-toggle"><i class="icon-list">
												<?xml version="1.0" standalone="no"?>
												<!DOCTYPE svg
													PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
												<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
													width="25.600000pt" height="25.600000pt"
													viewBox="0 0 25.600000 25.600000"
													preserveAspectRatio="xMidYMid meet">
													<metadata>
														Created by potrace 1.13, written by Peter Selinger 2001-2015
													</metadata>
													<g transform="translate(0.000000,25.600000) scale(0.080000,-0.080000)"
														fill="#ffffff" stroke="none">
														<path d="M0 160 l0 -160 160 0 160 0 0 160 0 160 -160 0 -160 0 0 -160z m210
110 c28 -30 47 -81 36 -98 -3 -5 8 -22 24 -37 32 -31 41 -80 18 -103 -20 -20
-60 -13 -90 15 -22 21 -39 27 -74 28 -39 0 -51 6 -75 33 -23 26 -29 42 -29 77
0 58 20 68 60 30 37 -36 50 -15 15 26 -33 40 -20 59 42 59 37 0 50 -5 73 -30z" />
														<path d="M138 247 c12 -13 22 -28 22 -33 0 -12 -43 -54 -55 -54 -5 0 -19 10
-32 22 l-23 21 0 -20 c0 -12 3 -29 6 -38 10 -24 62 -48 92 -40 19 5 32 -1 58
-26 20 -20 39 -29 48 -26 24 9 19 30 -14 62 -25 24 -29 34 -24 60 7 41 -35 95
-74 95 l-25 0 21 -23z" />
													</g>
												</svg>
											</i><span class="menu-text"> 设备维修管理 </span><b
												class="arrow icon-angle-down"></b></a>
										<ul class="submenu">
											<li class="home"><a href="javascript:void(0)" name="repair_repairlist.do"
													title="设备维修管理" class="iframeurl"><i
														class="icon-double-angle-right"></i>设备维修管理</a></li>
										</ul>
									</li>
								</c:if>
								<c:if test="${role == 'admin'}">
									<li><a href="#" class="dropdown-toggle"><i class="icon-list">
												<?xml version="1.0" standalone="no"?>
												<!DOCTYPE svg
													PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
												<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
													width="25.600000pt" height="25.600000pt"
													viewBox="0 0 25.600000 25.600000"
													preserveAspectRatio="xMidYMid meet">
													<metadata>
														Created by potrace 1.13, written by Peter Selinger 2001-2015
													</metadata>
													<g transform="translate(0.000000,25.600000) scale(0.080000,-0.080000)"
														fill="#ffffff" stroke="none">
														<path d="M0 160 l0 -160 35 0 c19 0 35 2 35 5 0 2 -12 15 -26 28 -25 23 -25
25 -22 155 2 101 0 132 -9 132 -10 0 -13 -39 -13 -160z" />
														<path d="M260 307 c0 -7 9 -18 21 -25 19 -12 20 -21 17 -147 -2 -103 0 -135
10 -135 9 0 12 39 12 160 l0 160 -30 0 c-17 0 -30 -5 -30 -13z" />
														<path d="M40 181 c0 -69 4 -122 10 -126 6 -4 10 33 10 103 0 78 4 113 13 120
7 6 49 13 92 15 77 3 76 3 -22 5 l-103 2 0 -119z" />
														<path d="M84 257 c-2 -7 -3 -62 -2 -123 l3 -109 98 -3 98 -3 -3 123 -3 123
-93 3 c-70 2 -94 0 -98 -11z m156 -56 c0 -19 -35 -36 -77 -36 -23 0 -43 3 -43
7 0 11 38 20 59 13 10 -3 24 1 31 10 14 17 30 20 30 6z m0 -91 c0 -6 -27 -10
-60 -10 -33 0 -60 4 -60 10 0 6 27 10 60 10 33 0 60 -4 60 -10z" />
													</g>
												</svg>
											</i><span class="menu-text">系统报表统计中心 </span><b
												class="arrow icon-angle-down"></b></a>
										<ul class="submenu">
											<li class="home"><a href="javascript:void(0)" name="laboratorylog_list.do"
													title="实验室预约人统计表" class="iframeurl"> <i
														class="icon-double-angle-right"></i>实验室预约人统计表
												</a>
											</li>
											<li class="home"><a href="javascript:void(0)" name="equipmentlog_list.do"
													title="设备借用统计表" class="iframeurl"><i
														class="icon-double-angle-right"></i>设备借用统计表</a></li>
											<li class="home"><a href="javascript:void(0)" name="repair_list.do" title=""
													class="iframeurl"><i class="icon-double-angle-right"></i>设备维修统计表</a>
											</li>
											<li class="home"><a href="javascript:void(0)" name="user_listcopy.do"
													title="用户统计报表" class="iframeurl"> <i
														class="icon-double-angle-right"></i>用户统计报表
												</a></li>
											<li class="home"><a href="javascript:void(0)" name="laboratory_list2copy.do"
													title="实验室预约情况统计表" class="iframeurl"> <i
														class="icon-double-angle-right"></i>实验室预约情况统计表
												</a></li>
										</ul>
									</li>
								</c:if>
								<c:if test="${role != 'admin'}">
									<li><a href="#" class="dropdown-toggle"><i class="icon-list">
												<?xml version="1.0" standalone="no"?>
												<!DOCTYPE svg
													PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
												<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
													width="25.600000pt" height="25.600000pt"
													viewBox="0 0 25.600000 25.600000"
													preserveAspectRatio="xMidYMid meet">
													<metadata>
														Created by potrace 1.16, written by Peter Selinger 2001-2019
													</metadata>
													<g transform="translate(0.000000,25.600000) scale(0.040000,-0.040000)"
														fill="#ffffff" stroke="none">
														<path class="path-color" fill="#f9f9f9" stroke="none" d="M0 320 l0 -320 320 0 320 0 0 320 0
										320 -320 0 -320 0 0 -320z" />
														<path class="path-color2" fill="#585858" stroke="none" d="M477 337 c113 -196 125 -221 115 -243
										l-12 -24 -260 0 -260 0 -11 24 c-13 27 -22 8 163 329 77 133 81 138 110 135
										28 -3 39 -19 155 -221z" />
														<path class="path-color3" fill="#ffffff" stroke="none" d="M221 303 l-91 -158 95 -3 c52 -1 138
										-1 190 0 l95 3 -91 158 c-50 86 -94 157 -99 157 -5 0 -49 -71 -99 -157z" />
														<path class="path-color2" fill="#585858" stroke="none" d="M350 325 l0 -75 -30 0 -30 0 0 75 0 75
										30 0 30 0 0 -75z" />
														<path class="path-color2" fill="#585858" stroke="none" d="M345 200 c0 -18 -6 -26 -23 -28 -24 -4
										-38 18 -28 44 3 9 15 14 28 12 17 -2 23 -10 23 -28z" />
													</g>
												</svg>


											</i><span class="menu-text">设备故障反馈</span><b
												class="arrow icon-angle-down"></b></a>
										<ul class="submenu">
											<li class="home"><a href="javascript:void(0)" name="feedback_fb.do"
													title="设备故障反馈" class="iframeurl"> <i
														class="icon-double-angle-right"></i>设备故障反馈
												</a></li>
										</ul>
									</li>
								</c:if>
								<c:if test="${role == 'admin'}">
									<li><a href="#" class="dropdown-toggle"><i class="icon-list">
												<?xml version="1.0" standalone="no"?>
												<!DOCTYPE svg
													PUBLIC "-//W3C//DTD SVG 20010904//EN" "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
												<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
													width="25.600000pt" height="25.600000pt"
													viewBox="0 0 25.600000 25.600000"
													preserveAspectRatio="xMidYMid meet">
													<metadata>
														Created by potrace 1.16, written by Peter Selinger 2001-2019
													</metadata>
													<g transform="translate(0.000000,25.600000) scale(0.040000,-0.040000)"
														fill="#ffffff" stroke="none">
														<path class="path-color" fill="#f9f9f9" stroke="none" d="M0 320 l0 -320 320 0 320 0 0 320 0
	320 -320 0 -320 0 0 -320z" />
														<path class="path-color2" fill="#585858" stroke="none" d="M477 337 c113 -196 125 -221 115 -243
	l-12 -24 -260 0 -260 0 -11 24 c-13 27 -22 8 163 329 77 133 81 138 110 135
	28 -3 39 -19 155 -221z" />
														<path class="path-color3" fill="#ffffff" stroke="none" d="M221 303 l-91 -158 95 -3 c52 -1 138
	-1 190 0 l95 3 -91 158 c-50 86 -94 157 -99 157 -5 0 -49 -71 -99 -157z" />
														<path class="path-color2" fill="#585858" stroke="none" d="M350 325 l0 -75 -30 0 -30 0 0 75 0 75
	30 0 30 0 0 -75z" />
														<path class="path-color2" fill="#585858" stroke="none" d="M345 200 c0 -18 -6 -26 -23 -28 -24 -4
	-38 18 -28 44 3 9 15 14 28 12 17 -2 23 -10 23 -28z" />
													</g>
												</svg>

											</i><span class="menu-text">设备故障反馈</span><b
												class="arrow icon-angle-down"></b></a>
										<ul class="submenu">
											<li class="home"><a href="javascript:void(0)" name="feedback_fblist.do"
													title="设备故障反馈" class="iframeurl">
													<i class="icon-double-angle-right"></i>设备故障反馈列表
												</a></li>
										</ul>
									</li>
								</c:if>
							</ul>
						</div>
						<script type="text/javascript">
							$("#menu_style").niceScroll({
								cursorcolor: "#888888",
								cursoropacitymax: 1,
								touchbehavior: false,
								cursorwidth: "5px",
								cursorborder: "0",
								cursorborderradius: "5px"
							});
						</script>
						<div class="sidebar-collapse" id="sidebar-collapse">
							<i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
								data-icon2="icon-double-angle-right"></i>
						</div>
						<script type="text/javascript">
							try {
								ace.settings.check('sidebar', 'collapsed')
							} catch (e) {
							}
						</script>
					</div>

					<div class="main-content">
						<script type="text/javascript">
							try {
								ace.settings.check('breadcrumbs', 'fixed')
							} catch (e) {
							}
						</script>
						<div class="breadcrumbs" id="breadcrumbs">
							<ul class="breadcrumb">
								<li><i class="icon-home home-icon"></i> <span>首页</span>
								</li>
								<li class="active"><span class="Current_page iframeurl"></span></li>
								<li class="active" id="parentIframe"><span class="parentIframe iframeurl"></span></li>
								<li class="active" id="parentIfour"><span class="parentIfour iframeurl"></span></li>
							</ul>
						</div>

						<iframe id="iframe" style="border: 0; width: 100%; background-color: #FFF;" name="iframe"
							frameborder="0" src="user_list.do"></iframe>


						<!-- /.page-content -->
					</div>
					<!-- /.main-content -->

					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
							<i class="icon-cog bigger-150"></i>
						</div>

						<div class="ace-settings-box" id="ace-settings-box">
							<div>
								<div class="pull-left" style="border: 1px solid #c8c8c8;">
									<select id="skin-colorpicker" class="hide">
										<option data-skin="default" value="#fff">#fff</option>
										<option data-skin="skin-1" value="#222A2D">#222A2D</option>
										<!-- <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                            <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option> -->
									</select>
								</div>
								<span>&nbsp; 选择皮肤</span>
							</div>

							<div>
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" /> <label
									class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
							</div>

							<div>
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" /> <label
									class="lbl" for="ace-settings-rtl">切换到左边</label>
							</div>

							<div>
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
								<label class="lbl" for="ace-settings-add-container"> 切换窄屏 <b></b>
								</label>
							</div>
						</div>
					</div>
					<!-- /#ace-settings-container -->
				</div>
				<!-- /.main-container-inner -->

			</div>
			<!--底部样式-->

			<div class="footer_style" id="footerstyle">
				<script type="text/javascript">try {
						ace.settings.check('footerstyle', 'fixed')
					} catch (e) {
					}</script>
			</div>
			<!--修改密码样式-->
			<div class="change_Pass_style" id="change_Pass">
				<ul class="xg_style">
					<li><label class="label_name">原&nbsp;&nbsp;密&nbsp;码</label><input name="原密码" type="password"
							class="" id="password"></li>
					<li><label class="label_name">新&nbsp;&nbsp;密&nbsp;码</label><input name="新密码" type="password"
							class="" id="Nes_pas"></li>
					<li><label class="label_name">确认密码</label><input name="再次确认密码" type="password" class=""
							id="c_mew_pas"></li>
				</ul>
			</div>
			<!-- /.main-container -->
			<!-- basic scripts -->
		</body>

		</html>