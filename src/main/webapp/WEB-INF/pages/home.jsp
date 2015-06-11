<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>
<%@ include file="akademik/homeAkademik.jsp" %>
<%@ include file="admin/homePusat.jsp" %>


<security:authorize access="hasRole('ROLE_GEDUNG')">
	<h3>
		Welcome,
		<c:out value="${user.username }" />
	</h3>
	<br />
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.identity ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.identity ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.identity ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Identitas Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/gedung/identity.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.atap ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.atap ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.atap ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Atap Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/gedung/atap.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.plafon ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.plafon ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.plafon ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Plafon Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/gedung/plafon.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.pondasi ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.pondasi ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.pondasi ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Pondasi Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/gedung/pondasi.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<!-- /.row -->

	<!-- /.row -->
	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.ruangan ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.ruangan ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.ruangan ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Ruangan Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/gedung/ruangan.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.kelistrikan ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.kelistrikan ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.kelistrikan ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Kelistrikan</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/gedung/kelistrikan.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.struktur ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.struktur ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.struktur ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Struktur Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/gedung/struktur.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.lantai ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.lantai ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.lantai ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Lantai Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/gedung/lantai.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
	</div>

	<!-- .row -->
	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.air ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.air ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.air ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Air Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/gedung/air.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<!-- .row -->
</security:authorize>