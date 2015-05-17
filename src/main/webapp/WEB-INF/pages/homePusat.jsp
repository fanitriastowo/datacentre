<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>

<security:authorize access="hasRole('ROLE_PUSAT')">
	<h2>Welcome, Pusat</h2>
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
								Identitas : <c:out value="${users.identity }" /><br />
								Atap : <c:out value="${users.atap }" /> <br />
								Plafon : <c:out value="${users.plafon }" /> <br />
								Pondasi : <c:out value="${users.pondasi }" /> <br />
								Ruangan : <c:out value="${users.ruangan }" /> <br />
								Kelistrikan : <c:out value="${users.kelistrikan }" /> <br />
								Struktur : <c:out value="${users.struktur }" /> <br />
								Lantai : <c:out value="${users.lantai }" /> <br />
								Air : <c:out value="${users.air }" />
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