<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>
<h1>Daftar Pengguna</h1>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModalForm">Tambah User</button>
<br />
<br />

<!-- Add Modal -->
<form:form commandName="user" action="${pageContext.request.contextPath }/master/users/save.html" method="post" cssClass="form-horizontal addModalForm">
	<div class="modal fade" id="addModalForm" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="modalLabel">Tambah Data User</h4>
				</div>
				<div class="modal-body">

					<div class="form-group">
						<label for="username" class="col-sm-2 control-label">Username:</label>
						<div class="col-sm-10">
							<form:input path="username" cssClass="form-control" />
							<form:errors path="username" />
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="col-sm-2 control-label">Password:</label>
						<div class="col-sm-10">
							<form:password path="password" cssClass="form-control" />
							<form:errors path="password" />
						</div>
					</div>

					<div class="form-group">
						<label for="phone" class="col-sm-2 control-label">Phone:</label>
						<div class="col-sm-10">
							<form:input path="phone" cssClass="form-control" />
							<form:errors path="phone" />
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
					<button type="submit" class="btn btn-primary">Simpan</button>
				</div>
			</div>
		</div>
	</div>
</form:form>

<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>Username</th>
				<th>Phone</th>
				<th>Operation</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users }" var="user">
				<tr>
					<td><c:out value="${user.username }" /></td>
					<td><c:out value="${user.phone }" /></td>
					<td><a href="#" class="btn btn-info">Detail</a> <a href="#" class="btn btn-danger">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('.addModalForm').validate({
			rules : {
				username : {
					required : true,
					minlength : 2
				},
				password : {
					required : true,
				},
				phone : {
					required : true,
					number : true,
					minlength : 2
				}
			},
			messages : {
				username : {
					required : "Username Harap Diisi",
					minlength : "Minimal 2 karakter"
				},
				password : {
					required : "Password Harap Diisi"
				},
				phone : {
					required : "Telephon Harap Diisi",
					number : "Input Tidak Valid, Hanya Boleh Berupa Angka",
					minlength : "Minimal 2 Karakter"
				}
			},
			highlight : function(element) {
				$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
			},
			unhighlight : function(element) {
				$(element).closest('.form-group').removeClass('has-error').addClass('has-success');
			}
		});
	});
</script>