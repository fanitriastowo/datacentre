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
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href='<spring:url value="/" />'><strong>Datacentre Gedung</strong></a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">
				<li><a href="#"><i class="fa fa-user fa-fw"></i> Account</a></li>
				<li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
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
						<li><a href='<spring:url value="/" />'><i class="fa fa-dashboard fa-fw"></i> Dashboard</a></li>
						<li><a href="#"><i class="fa fa-cog fa-fw"></i> Operation<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="#"><i class="fa fa-arrow-circle-up fa-fw"></i> Import</a></li>
								<li><a href="#"><i class="fa fa-arrow-circle-down fa-fw"></i> Export</a></li>
							</ul> <!-- /.nav-second-level --></li>
						<li><a href="#"><i class="fa fa-th-list fa-fw"></i> Master<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href='<spring:url value="/master/gedung.html"/>'><i class="fa fa-building fa-fw"></i> Gedung</a></li>
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

	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.map"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/metisMenu.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/custom.js"></script>
</body>
</html>