<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>
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
					<li><a href='<spring:url value="/master/users.html"/>'><i class="fa fa-user fa-fw"></i> User</a></li>
				</ul> <!-- /.nav-second-level --></li>
		</ul>
	</div>
	<!-- /.sidebar-collapse -->
</div>