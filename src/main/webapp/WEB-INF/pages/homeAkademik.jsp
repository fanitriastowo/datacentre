<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>

<security:authorize access="hasRole('ROLE_AKADEMIK')">
	<h2>Welcome, Akademik</h2>
	<br />
	
	<c:forEach items="${users }" var="users">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-${users.identity and users.atap and users.plafon and users.pondasi and users.ruangan and 
									  users.kelistrikan and users.struktur and users.lantai and users.air ? 'green' : 'yellow' }">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-${users.identity and users.atap and users.plafon and users.pondasi and users.ruangan and 
									  		  users.kelistrikan and users.struktur and users.lantai and users.air ? 'check-circle-o' : 'exclamation' } fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">
								Identitas : ${users.identity eq true ? 'Selesai' : 'Belum'}<br />
								Atap : ${users.atap eq true ? 'Selesai' : 'Belum'} <br />
								Plafon : ${users.plafon eq true ? 'Selesai' : 'Belum'} <br />
								Pondasi : ${users.pondasi eq true ? 'Selesai' : 'Belum'} <br />
								Ruangan : ${users.ruangan eq true ? 'Selesai' : 'Belum'} <br />
								Kelistrikan : ${users.kelistrikan eq true ? 'Selesai' : 'Belum'} <br />
								Struktur : ${users.struktur eq true ? 'Selesai' : 'Belum'} <br />
								Lantai : ${users.lantai eq true ? 'Selesai' : 'Belum'} <br />
								Air : ${users.air eq true ? 'Selesai' : 'Belum'}
							</div>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<span class="pull-left"><c:out value="${users.username }" /> (<c:out value="${users.phone }" />)</span> 
					<span class="pull-right">${users.identity and users.atap and users.plafon and users.pondasi and users.ruangan and 
									  		   users.kelistrikan and users.struktur and users.lantai and users.air ? 'Complete' : 'Incomplete' }</span>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</c:forEach>
</security:authorize>