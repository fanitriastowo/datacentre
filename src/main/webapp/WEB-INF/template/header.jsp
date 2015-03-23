<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>
<div class="navbar-header">
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" aria-expanded="false" aria-controls="navbar">
		<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
	</button>
	<a class="navbar-brand" href='<spring:url value="/" />'><strong>Datacentre Gedung</strong></a>
</div>
<!-- /.navbar-header -->
<ul class="nav navbar-top-links navbar-right">
	<li class="active"><a href='<spring:url value="/account.html" />'><i class="fa fa-user fa-fw"></i> Account</a></li>
	<li><a href='<spring:url value="/logout.html" />'><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
</ul>