<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>

<h1>Account</h1>

<form:form commandName="user" action="${pageContext.request.contextPath }/account/save.html" cssClass="form-horizontal settingForm" method="POST">

	<form:hidden path="id" />
	<div class="form-group">
		<label for="username" class="col-sm-2 control-label">Username:</label>
		<div class="col-sm-9">
			<form:input path="username" cssClass="form-control" placeholder="Username" />
			<form:errors path="username" />
		</div>
	</div>
	<div class="form-group">
		<label for="phone" class="col-sm-2 control-label">Phone:</label>
		<div class="col-sm-9">
			<form:input path="phone" cssClass="form-control" placeholder="Phone" />
			<form:errors path="phone" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">New Password:</label>
		<div class="col-sm-9">
			<form:password path="password" cssClass="form-control" placeholder="New Password" />
			<form:errors path="password" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Confirm Password:</label>
		<div class="col-sm-9">
			<input type="password" class="form-control" name="confirm_password" id="confirm_password" placeholder="Confirm Password" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">Simpan</button>
		</div>
	</div>
</form:form>

<script type="text/javascript">
	$(document).ready(function() {
		$(".settingForm").validate({
			rules : {
				username : {
					required : true,
					minlength : 3
				},
				phone : {
					number : true
				},
				password : {
					required : true,
					minlength : 3
				},
				confirm_password : {
					required : true,
					minlength : 3,
					equalTo : "#password"
				}
			},
			messages : {
				username : {
					required : "Username harap diisi",
					minlength : "Minimal 3 Karakter"
				},
				phone : {
					number : "Input harus berupa angka"
				},
				password : {
					required : "Password harap diisi",
					minlength : "Minimal 3 Karakter"
				},
				confirm_password : {
					required : "Konfirmasi Password Harus diisi",
					minlength : "Minimal 3 Karakter",
					equalTo : "Password tidak sama"
				}
			},
			highlight : function(element) {
				$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
			},
			unhighlight : function(element) {
				$(element).closest('.form-group').removeClass('has-error').addClass('has-success');
			}
		});
	})
</script>