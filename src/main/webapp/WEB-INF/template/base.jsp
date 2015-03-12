<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<tilesx:useAttribute name="current" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><tiles:getAsString name="title" /></title>

<link rel="icon" href="${pageContext.request.contextPath }/static/images/favicon.png">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/metisMenu.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/morris.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/custom.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/font-awesome.min.css">
</head>
<body>
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><strong>Datacentre Gedung</strong></a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">
				<li class="active"><a href="#">Account</a></li>
				<li><a href="#">Logout</a></li>
			</ul>

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="Search..."> <span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> <!-- /input-group -->
						</li>
						<li><a href="#"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a></li>
						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Operation<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="#">Import</a></li>
								<li><a href="#">Export</a></li>
							</ul> <!-- /.nav-second-level --></li>
						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Master<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="#">Gedung</a></li>
							</ul> <!-- /.nav-second-level --></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
		</nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<tiles:insertAttribute name="body" />
				</div>
			</div>
		</div>

		<footer class="footer">
			<tiles:insertAttribute name="footer" />
		</footer>
	</div>
	<!-- /#wrapper -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/metisMenu.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/custom.js"></script>
</body>
</html>