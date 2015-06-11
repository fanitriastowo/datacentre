<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../template/taglib.jsp"%>

<h3>Input Lantai Gedung</h3>

<form:form commandName="lantai" action="${pageContext.request.contextPath }/pages/gedung/lantai/save.html" cssClass="form-horizontal formInputLantai">
	<c:if test="${success eq true }">
		<div class="alert alert-success">Data Berhasil Diinputkan</div>
	</c:if>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Keramik</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="keramikPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Panjang Keramik:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="keramikPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="keramikPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="keramikBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan Keramik:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="keramikBahan" cssClass="form-control" />
					<form:errors path="keramikBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="keramikKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Keramik:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="keramikKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="keramikKondisi" />
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
		$(".formInputLantai").validate({
			rules : {
				keramikPanjang : {
					required : true,
					number : true
				},
				keramikBahan : {
					required : true
				},
				keramikKondisi : {
					required : true
				}
			},
			messages : {
				keramikPanjang : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				keramikBahan : {
					required : "Data Harap Diisi"
				},
				keramikKondisi : {
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