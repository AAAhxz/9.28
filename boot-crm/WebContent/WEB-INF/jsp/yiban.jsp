<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息管理-BootCRM</title>
<!-- 引入css样式文件 -->
<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
<!-- DataTables CSS -->
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
<!-- Custom Fonts -->
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
	type="text/css" />
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
</head>
<body>
	<div id="wrapper">
		<!-- 导航栏部分 -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<a class="navbar-brand" href="<%=basePath%>yiban/list.action">易班信息管理系统v1.0</a>
			</div>
			<!-- 导航栏右侧图标部分 -->
			<ul class="nav navbar-top-links navbar-right">
				<!-- 邮件通知 start -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i
						class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-messages">
						<li><a href="#">
								<div>
									<strong>张经理</strong> <span class="pull-right text-muted">
										<em>昨天</em>
									</span>
								</div>
								<div>今天晚上开会，讨论一下下个月工作的事...</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>查看全部消息</strong>
								<i class="fa fa-angle-right"></i>
						</a></li>
					</ul></li>
				<!-- 邮件通知 end -->
				<!-- 任务通知 start -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li><a href="#">
								<div>
									<p>
										<strong>任务 1</strong> <span class="pull-right text-muted">完成40%</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">完成40%</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>任务 2</strong> <span class="pull-right text-muted">完成20%</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
											style="width: 20%">
											<span class="sr-only">完成20%</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>查看所有任务</strong>
								<i class="fa fa-angle-right"></i>
						</a></li>
					</ul></li>
				<!-- 任务通知 end -->
				<!-- 消息通知 start -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> 新回复 <span
										class="pull-right text-muted small">4分钟之前</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-envelope fa-fw"></i> 新消息 <span
										class="pull-right text-muted small">4分钟之前</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-tasks fa-fw"></i> 新任务 <span
										class="pull-right text-muted small">4分钟之前</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-upload fa-fw"></i> 服务器重启 <span
										class="pull-right text-muted small">4分钟之前</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>查看所有提醒</strong>
								<i class="fa fa-angle-right"></i>
						</a></li>
					</ul></li>
				<!-- 消息通知 end -->
				<!-- 用户信息和系统设置 start -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i>
								用户：${USER_SESSION.user_name} </a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
						<li class="divider"></li>
						<li><a
							href="${pageContext.request.contextPath }/logout.action"> <i
								class="fa fa-sign-out fa-fw"></i>退出登录
						</a></li>
					</ul></li>
				<!-- 用户信息和系统设置结束 -->
			</ul>
			<!-- 左侧显示列表部分 start-->
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="查询内容...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
									</button>
								</span>
							</div>
						</li>
						<li><a
							href="${pageContext.request.contextPath }/yiban/list.action"
							class="active"> <i class="fa fa-edit fa-fw"></i> 信息管理
						</a></li>
						<li><a href="#"> <i class="fa fa-dashboard fa-fw"></i>
								成员拜访
						</a></li>
					</ul>
				</div>
			</div>
			<!-- 左侧显示列表部分 end-->
		</nav>
		<!-- 成员列表查询部分  start-->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">信息管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="panel panel-default">
				<div class="panel-body">
					<form class="form-inline" method="get"
						action="${pageContext.request.contextPath }/yiban/list.action">
						<div class="form-group">
							<label for="yibanName">成员名称</label> <input type="text"
								class="form-control" id="username" value="${username }"
								name="username" />
						</div>
						<div class="form-group">
							<label for="yibanFrom">校区</label> <select class="form-control"
								id="campus" name="campus">
								<option value="">--请选择--</option>
								<option value="东">东</option>
								<option value="西">西</option>
							</select>
						</div>
						<div class="form-group">
							<label for="custIndustry">所属部门</label> <select
								class="form-control" id="department" name="department">
								<option value="">--请选择--</option>
								<option value="技术部">技术部</option>
								<option value="站务部">站务部</option>
								<option value="联络部">联络部</option>
								<option value="运维部">运维部</option>
								<option value="宣传活动部">	宣传活动部</option>
								<option value="图文设计中心">图文设计中心</option>
								<option value="影视中心">影视中心</option>
								<option value="采编中心">采编中心</option>
							</select>
						</div>
						<div class="form-group">
							<label for="custLevel">成员职务</label> <select class="form-control"
								id="position" name="position">
								<option value="">--请选择--</option>
								<option value="部长">部长</option>
								<option value="副部长">副部长</option>
								<option value="干事">干事</option>
							</select>
						</div>
						<button type="submit" class="btn btn-primary">查询</button>
					</form>
				</div>
			</div>
			<a href="#" class="btn btn-primary" data-toggle="modal"
				data-target="#newYibanDialog" onclick="clearyiban()">新建成员</a> <a
				href="#" class="btn btn-primary" data-toggle="modal"
				id="deviceExport">导出Excel</a>
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">成员信息列表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped text-center">
							<thead>
								<tr>
									<th>校区</th>
									<th>成员姓名</th>
									<th>部门</th>
									<th>职位</th>
									<th>学院</th>
									<th>专业</th>
									<th>班级</th>
									<th>QQ号</th>
									<th>电话号</th>

									<th>操作</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${data}" var="row">
									<tr>

										<td>${row.campus}</td>
										<td>${row.username}</td>
										<td>${row.department}</td>
										<td>${row.position}</td>
										<td>${row.college}</td>
										<td>${row.major}</td>
										<td>${row.classes}</td>
										<td>${row.qqnumber}</td>
										<td>${row.telnumber}</td>
										<td><a href="#" class="btn btn-primary btn-xs"
											data-toggle="modal" data-target="#yibanEditDialog"
											onclick="edityiban(${row.id})">修改</a> <a
											class="btn btn-danger btn-xs"
											onclick="deleteyiban(${row.id})";>删除</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
	</div>
						<!-- 显示分页信息 -->
						<div class="col-md-12 text-right" style="top=-10px">
								<!-- begin -->
								<nav class="form-inline form-horizontal" role="form"
									id="currentPages">
									<ul class="pagination">
										<li class="page-item form-inline"><a
											href="${pageContext.request.contextPath}/yiban/list.action?currentPage=${pageInfo.pageNum-1}"
											class="page-link" aria-label="Previous"> <span
												aria-hidden="true">«</span>
										</a></li>
										<li class="paginItem form-inline"><a
											href="${pageContext.request.contextPath}/yiban/list.action?currentPage=1">首页</a></li>
											<c:forEach items="${pageInfo.navigatepageNums  }" var = "i"  >
						                        <c:choose>
						                           <c:when test="${i==currentPage}">
						                            	<li  class='active'><a class="page-link" href="/boot-crm/yiban/list.action?currentPage=${i}">${i}</a></li>
						                           </c:when>
						                           <c:otherwise>
						                              <li class=""><a class="page-link" href="${pageContext.request.contextPath}/yiban/list.action?currentPage=${i}"> ${i}</a></li>
						                           </c:otherwise>
						                        </c:choose>
						                   </c:forEach>
										<li class="page-item form-inline"><a class="page-link"
											href="${pageContext.request.contextPath}/yiban/list.action?currentPage=${pageInfo.pages}">末页</a></li>
										<li class="page-item form-inline"><a
											href="${pageContext.request.contextPath}/yiban/list.action?currentPage=${pageInfo.pageNum+1 }"
											class="page-link" aria-label="Next"> <span
												aria-hidden="true">»</span>
										</a></li>
									</ul>
								</nav>
							</div>
						
								<!--分页！！ END -->
										<div class="form-inline form-horizontal text-right" role="form">
									共<i class="blue">${pageInfo.total }</i>条记录，当前显示第&nbsp;<i
										class="blue">${pageInfo.pageNum }&nbsp;</i>页 总<i class=" blue">${pageInfo.pages }</i>页&nbsp;&nbsp;&nbsp;&nbsp;
										<br>(注:上方最多显示8页)&nbsp;&nbsp;&nbsp;&nbsp;
										<br>&nbsp;
								</div></div>
	<!-- 成员列表查询部分  end-->

	<!-- 创建成员模态框 -->
	<div class="modal fade" id="newYibanDialog" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">新建成员信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="new_yiban_form">
						<div class="form-group">
							<label for="new_usernName" class="col-sm-2 control-label">
								姓名 </label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="new_usernName"
									placeholder="姓名" name="username" />
							</div>
						</div>
						<div class="form-group">
							<label for="new_linkMan" class="col-sm-2 control-label">校区</label>
							<div class="col-sm-10">
								<select class="form-control" id="new_campus" name="campus">
									<option value="">--请选择--</option>
									<option value="东">东</option>
									<option value="西">西</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="new_linkMan" class="col-sm-2 control-label">部门</label>
							<div class="col-sm-10">
								<select class="form-control" id="new_department"
									name="department">
									<option value="">--请选择--</option>
									<option value="技术部">技术部</option>
									<option value="站务部">站务部</option>
									<option value="联络部">联络部</option>
									<option value="运维部">运维部</option>
									<option value="宣传活动部">	宣传活动部</option>
									<option value="图文设计中心">图文设计中心</option>
									<option value="影视中心">影视中心</option>
									<option value="采编中心">采编中心</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="new_position" class="col-sm-2 control-label">职位</label>
							<div class="col-sm-10">
								<select class="form-control" id="new_position" name="position">
									<option value="">--请选择--</option>
									<option value="站长">站长</option>
									<option value="副站长">副站长</option>
									<option value="部长">部长</option>
									<option value="副部长">副部长</option>
									<option value="干事">干事</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="new_college" class="col-sm-2 control-label">学院</label>
							<div class="col-sm-10">
								<select class="form-control" id="new_college" name="college">
									<option value="">--请选择--</option>
									<option value="机电工程学院">机电院</option>
									<option value="理学院">理学院</option>
									<option value="信息科学与技术学院">信息院</option>
									<option value="城乡建设学院">城建院</option>
									<option value="现代科技学院">现科院</option>
									<option value="艺术学院">艺术院</option>
									<option value="食品科技学院">食品院</option>
									<option value="经管院">经管院</option>
									<option value="外语院">外语院</option>
									<option value="人文院">人文院</option>
									<option value="林学院">林学院</option>
									<option value="动科院">动科院</option>
									<option value="农学院">农学院</option>
									<option value="农学院">生命院</option>
									<option value="动医院">动医院</option>
									<option value="农学院">商学院</option>
									<option value="农学院">植保院</option>
									<option value="农学院">园艺院</option>
									<option value="农学院">园林院</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="new_major" class="col-sm-2 control-label">专业</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="new_major"
									placeholder="专业" name="major" />
							</div>
						</div>

						<div class="form-group">
							<label for="new_classes" class="col-sm-2 control-label">班级</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="new_classes"
									placeholder="班级" name="classes" />
							</div>
						</div>

						<div class="form-group">
							<label for="new_qqnumber" class="col-sm-2 control-label">Q
								Q</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="new_qqnumber"
									placeholder="Q Q" name="qqnumber" />
							</div>
						</div>
						<div class="form-group" onblur="isPhoneNum(telnumber)";>
							<label for="new_telnumber" class="col-sm-2 control-label">电话</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="new_telnumber"
									type="tel" placeholder="电话" name="telnumber" />
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="createyiban()">创建成员</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 修改成员模态框 -->
	<div class="modal fade" id="yibanEditDialog" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改成员信息</h4>
				</div>

				<div class="modal-body">
					<form class="form-horizontal" id="edit_yiban_form">

						<div class="form-group">
							<label for="edit_yibanName" class="col-sm-2 control-label">成员名称</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_yibanName"
									placeholder="成员名称" name="username" />
							</div>
						</div>

						<!-- 默认不显示 这里是为了方便传参数 后面有个form表单的序列化传参 -->
						<div class="form-group" style="display: none;">
							<label for="id" class="col-sm-2 control-label">id</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_id"
									placeholder="id" name="id" />
							</div>
						</div>
						<!-- 隐藏部分End -->

						<div class="form-group">
							<label for="edit_department" class="col-sm-2 control-label">校区</label>
							<div class="col-sm-10">
								<select class="form-control" id="edit_campus" name="campus">
									<option value="">--请选择--</option>
									<option value="东">东</option>
									<option value="西">西</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_department" class="col-sm-2 control-label">部门</label>
							<div class="col-sm-10">
								<select class="form-control" id="edit_department"
									name="department">
									<option value="">--请选择--</option>
									<option value="技术部">技术部</option>
									<option value="站务部">站务部</option>
									<option value="联络部">联络部</option>
									<option value="运维部">运维部</option>
									<option value="宣传活动部">	宣传活动部</option>
									<option value="图文中心设计">图文中心设计</option>
									<option value="影视中心">影视中心</option>
									<option value="采编中心">采编中心</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_position" class="col-sm-2 control-label">职位</label>
							<div class="col-sm-10">
								<select class="form-control" id="edit_position" name="position">
									<option value="">--请选择--</option>
									<option value="站长">站长</option>
									<option value="副站长">副站长</option>
									<option value="部长">部长</option>
									<option value="副部长">副部长</option>
									<option value="干事">干事</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_college" class="col-sm-2 control-label">学院</label>
							<div class="col-sm-10">
								<select class="form-control" id="edit_college" name="college">
									<option value="">--请选择--</option>
									<option value="机电工程学院">机电院</option>
									<option value="理学院">理学院</option>
									<option value="信息科学与技术学院">信息院</option>
									<option value="城乡建设学院">城建院</option>
									<option value="现代科技学院">现科院</option>
									<option value="艺术学院">艺术院</option>
									<option value="食品科技学院">食品院</option>
									<option value="经管院">经管院</option>
									<option value="外语院">外语院</option>
									<option value="人文院">人文院</option>
									<option value="林学院">林学院</option>
									<option value="动科院">动科院</option>
									<option value="农学院">农学院</option>
									<option value="农学院">生命院</option>
									<option value="动医院">动医院</option>
									<option value="农学院">商学院</option>
									<option value="农学院">植保院</option>
									<option value="农学院">园艺院</option>
									<option value="农学院">园林院</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_major" class="col-sm-2 control-label">专业</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_major"
									placeholder="专业" name="major" />
							</div>
						</div>

						<div class="form-group">
							<label for="edit_classes" class="col-sm-2 control-label">班级</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_classes"
									placeholder="班级" name="classes" />
							</div>
						</div>

						<div class="form-group">
							<label for="edit_qqnumber" class="col-sm-2 control-label">Q
								Q</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_qqnumber"
									placeholder="Q Q" name="qqnumber" />
							</div>
						</div>
						<div class="form-group">
							<label for="edit_telnumber" class="col-sm-2 control-label">电话</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_telnumber"
									type="tel" placeholder="电话" name="telnumber" />
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="updateyiban()">保存修改</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		//清空新建成员窗口中的数据
		function clearyiban() {
			$("#new_yibanName").val("");
			$("#new_yibanFrom").val("")
			$("#new_custIndustry").val("")
			$("#new_custLevel").val("")
			$("#new_linkMan").val("");
			$("#new_phone").val("");
			$("#new_mobile").val("");
			$("#new_zipcode").val("");
			$("#new_address").val("");
		}
		// 导出为Excel
		$("#deviceExport").click(
			function() {
				var url = '<%=basePath%>exportExcel.action';
				location.href = url;
			});
		// 创建成员
		function createyiban() {
			$.post("<%=basePath%>yiban/create.action",
				$("#new_yiban_form").serialize(), function(data) {
					if (data == "OK") {
						alert("成员创建成功！");
						window.location.reload();
					} else {
						alert("成员创建失败！");
						window.location.reload();
					}
				});
		}
		// 通过id获取修改的成员信息
	
		function edityiban(id) {
			$.ajax({
				type : "get",
				url : "<%=basePath%>yiban/getYibanById.action",
				data : {
					"id" : id
				},
				success : function(data) {
					$("#edit_yibanName").val(data.username);
					$("#edit_campus").val(data.campus);
					$("#edit_department").val(data.department);
					$("#edit_position").val(data.position);
					$("#edit_college").val(data.college);
					$("#edit_major").val(data.major);
					$("#edit_id").val(data.id);
					$("#edit_classes").val(data.classes);
					$("#edit_qqnumber").val(data.qqnumber);
					$("#edit_telnumber").val(data.telnumber);
				}
			});
		}
	
		// 执行修改成员操作
		function updateyiban() {
			$.post("<%=basePath%>yiban/update.action", $("#edit_yiban_form").serialize(),
			
			function(data) {
				if (data == "OK") {
					alert("成员信息更新成功！");
					window.location.reload();
				} else {
					alert("成员信息更新失败！");
					window.location.reload();
				}
			});
		}
		// 删除成员
		function deleteyiban(id) {
			if (confirm('确实要删除该成员吗?')) {
				$.post("<%=basePath%>yiban/delete.action", {
					"id" : id
				},
					function(data) {
						if (data == "OK") {
							alert("成员删除成功！");
							window.location.reload();
						} else {
							alert("删除成员失败！");
							window.location.reload();
						}
					});
			}
		}
	</script>
</body>
</html>