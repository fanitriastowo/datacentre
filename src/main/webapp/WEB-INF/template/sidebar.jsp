<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>

<div class="navbar-default sidebar" role="navigation">
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			<li><a href='<spring:url value="/" />'><i class="fa fa-dashboard fa-fw"></i> Dashboard</a></li>
			
			<security:authorize access="hasRole('ROLE_PUSAT')">
				<li><a href="#"><i class="fa fa-th-list fa-fw"></i> Master<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href='<spring:url value="/pages/admin.html"/>'><i class="fa fa-building fa-fw"></i> Gedung</a></li>
						<li><a href='<spring:url value="/pages/admin/users.html"/>'><i class="fa fa-user fa-fw"></i> User</a></li>
					</ul>
				</li>
			</security:authorize>
			
			<security:authorize access="hasRole('ROLE_AKADEMIK')">
				<li><a href="#"><i class="fa fa-th-list fa-fw"></i> Master<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href='<spring:url value="/pages/akademik.html" />'><i class="fa fa-building fa-fw"></i> Gedung</a></li>
					</ul>
				</li>
			</security:authorize>
			
			<security:authorize access="hasRole('ROLE_GEDUNG')">
				<li><a href="#"><i class="fa fa-cog fa-fw"></i> Input Data</a>
					<ul class="nav nav-second-level">
						<li><a href='<spring:url value="/pages/gedung/identity.html" />'><i class="fa fa-building fa-fw"></i> Identitas</a></li>
						<li><a href='<spring:url value="/pages/gedung/atap.html" />'><i class="fa fa-bars fa-fw"></i> Atap</a></li>
						<li><a href='<spring:url value="/pages/gedung/plafon.html" />'><i class="fa fa-building-o fa-fw"></i> Plafon</a></li>
						<li><a href='<spring:url value="/pages/gedung/pondasi.html" />'><i class="fa fa-archive fa-fw"></i> Pondasi</a></li>
						<li><a href='<spring:url value="/pages/gedung/ruangan.html" />'><i class="fa fa-university fa-fw"></i> Ruangan</a></li>
						<li><a href='<spring:url value="/pages/gedung/kelistrikan.html" />'><i class="fa fa-bolt fa-fw"></i> Kelistrikan</a></li>
						<li><a href='<spring:url value="/pages/gedung/struktur.html" />'><i class="fa fa-university fa-fw"></i> Struktur</a></li>
						<li><a href='<spring:url value="/pages/gedung/lantai.html" />'><i class="fa fa-bookmark fa-fw"></i> Lantai</a></li>
						<li><a href='<spring:url value="/pages/gedung/air.html" />'><i class="fa fa-anchor fa-fw"></i> Air</a></li>
					</ul>
				</li>
			</security:authorize>
		</ul>
	</div>
</div>
