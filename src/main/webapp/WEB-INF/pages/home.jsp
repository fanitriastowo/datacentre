<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>

<security:authorize access="hasRole('ROLE_GEDUNG')">
	<h3>
		Welcome,
		<c:out value="${user.username }" />
	</h3>
	<br />
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.identity == true ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.identity == true ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.identity == true ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Identitas Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/input/identity.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.atap == true ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.atap == true ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.atap == true ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Atap Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/input/atap.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.plafon == true ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.plafon == true ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.plafon == true ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Plafon Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/input/plafon.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.pondasi == true ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.pondasi == true ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.pondasi == true ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Pondasi Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/input/pondasi.html" />'>
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
			<div class="panel panel-${user.ruangan == true ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.ruangan == true ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.ruangan == true ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Ruangan Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/input/ruangan.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.kelistrikan == true ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.kelistrikan == true ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.kelistrikan == true ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Kelistrikan</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/input/kelistrikan.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.struktur == true ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.struktur == true ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.struktur == true ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Struktur Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/input/struktur.html" />'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${user.lantai == true ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.lantai == true ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.lantai == true ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Lantai Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/input/lantai.html" />'>
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
			<div class="panel panel-${user.air == true ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${user.air == true ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">${user.air == true ? 'Complete' : 'Incomplete' }</div>
							<div>
								<strong>Air Gedung</strong>
							</div>
						</div>
					</div>
				</div>
				<a href='<spring:url value="/pages/input/air.html" />'>
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