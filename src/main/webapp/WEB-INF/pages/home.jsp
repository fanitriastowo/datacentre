<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>

<security:authorize access="hasRole('ROLE_BTS')">
	<h2>Welcome BTS</h2>

</security:authorize>

<security:authorize access="hasRole('ROLE_GEDUNG')">
	<h2>GEDUNG</h2>

	<!-- /.row -->
	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-exclamation fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">Incomplete</div>
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
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-exclamation fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">Incomplete</div>
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
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-exclamation fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">Incomplete</div>
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
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-exclamation fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">Incomplete</div>
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
	</div>
	<!-- /.row -->

	<!-- /.row -->
	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-exclamation fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">Incomplete</div>
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
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-exclamation fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">Incomplete</div>
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
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-exclamation fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">Incomplete</div>
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
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-exclamation fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">Incomplete</div>
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
</security:authorize>

<security:authorize access="hasRole('ROLE_BAU')">
	<h2>BAU</h2>
</security:authorize>