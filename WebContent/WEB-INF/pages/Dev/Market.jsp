<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>需求市场</title>
	<!-- 包含头部信息用于适应不同设备 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 包含 bootstrap 样式表 -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
</head>
<body>

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
					 <span class="sr-only">Toggle navigation</span>
					 <span class="icon-bar"></span>
					 <span class="icon-bar"></span>
					 <span class="icon-bar"></span>
					 </button> <a class="navbar-brand" href="index.jsp">Brand</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li>
							 <a href="returnDevIndex.action?inputAccount=${inputAccount}">个人主页</a>
						</li>
						<li class="active">
							 <a href="devtoMarket.action?inputAccount=${inputAccount}">需求市场</a>
						</li>
						<li>
							 <a href="returnDevDoing.action?inputAccount=${inputAccount}">当前工作</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">Action</a>
								</li>
								<li>
									 <a href="#">Another action</a>
								</li>
								<li>
									 <a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">Separated link</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">One more separated link</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">Submit</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							 <a href="#">Link</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">${inputAccount}<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">个人主页</a>
								</li>
								<li>
									 <a href="#">Another action</a>
								</li>
								<li>
									 <a href="#">Something else here</a>
								</li>
								<li class="divider">
								</li>
								<li>
									 <a href="#">Separated link</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		<div class="page-header">
			<h1>
				需求市场 <small>Market</small>
			</h1>
		</div>
		<div class="row">
		  <div class="col-lg-10 col-lg-offset-1">
			<div class="well bs-component">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
					  <th>任务ID</th>
				      <th>项目名</th>
				      <th>委托方</th>
				      <th>编程语言</th>
				      <th>平台</th>
				      <th>学历要求</th>
				      <th>经验要求</th>
				      <th>工期</th>
				      <th>报酬</th>
				      <th>人数</th>
				      <th>状态</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="list" id="pro"> 
						<tr>
							<td>${pro.id}</td>
							<td><a href="#">${pro.name}</a></td>
							<td><a href="#">${pro.needer}</a></td>
							<td>${pro.language}</td>
							<td>${pro.platform}</td>
							<td>${pro.education}</td>
							<td>${pro.experience}</td>
							<td>${pro.time}</td>
							<td>${pro.price}</td>
							<td>${pro.num}</td>
							<td>${pro.status}</td>
							<td><a href="#">投标</a></td>
						</tr>
					</s:iterator> 
				</tbody>
			</table>
		</div></div></div>
			<ul class="pagination">
				<li>
					 <a href="#">Prev</a>
				</li>
				<li>
					 <a href="#">1</a>
				</li>
				
				<li>
					 <a href="#">Next</a>
				</li>
			</ul>
			
		<a id="modal-948797" href="#modal-container-948797" role="button" class="btn" data-toggle="modal">触发遮罩窗体</a>
			<div class="modal fade" id="modal-container-948797" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">
								标题
							</h4>
						</div>
						<div class="modal-body">
							内容...
						</div>
						<div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary">保存</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


	<!-- JavaScript 放置在文档最后面可以使页面加载速度更快 -->
    <!-- 可选: 包含 jQuery 库 -->
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <!-- 可选: 合并了 Bootstrap JavaScript 插件 -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
</html>