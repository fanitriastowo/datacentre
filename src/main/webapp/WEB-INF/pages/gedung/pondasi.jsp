<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../template/taglib.jsp"%>

<h3>Input Pondasi Gedung</h3>

<form:form commandName="pondasi" action="${pageContext.request.contextPath }/pages/input/pondasi/save.html" cssClass="form-horizontal formInputPondasi">
	<c:if test="${success eq true }">
		<div class="alert alert-success">Data Berhasil Diinputkan</div>
	</c:if>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Sloof</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="sloofPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas Sloof:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="sloofPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="sloofPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="sloofBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan Pipa:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="sloofBahan" cssClass="form-control" />
					<form:errors path="sloofBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="sloofKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Pipa:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="sloofKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="sloofKondisi" />
			</div>
		</div>
	</div>

	<div class="col-md-1 col-md-offset-10 col-sm-offset-10 col-xs-offset-10">
		<div class="form-group">
			<input type="submit" class="btn btn-lg btn-primary" value="Simpan" />
		</div>
	</div>
</form:form>

<script type="text/javascript">
	$(document).ready(function() {
		$(".formInputPondasi").validate({
			rules : {
				sloofPanjang : {
					required : true,
					number : true
				},
				sloofBahan : {
					required : true
				},
				sloofKondisi : {
					required : true
				}
			},
			messages : {
				sloofPanjang : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				sloofBahan : {
					required : "Data Harap Diisi"
				},
				sloofKondisi : {
					required : "Data Harap Diisi"
				}
			},
			highlight : function(element) {
				$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
			},
			unhighlight : function(element) {
				$(element).closest('.form-group').removeClass('has-error').addClass('has-success');
			}
		})
	})
</script>