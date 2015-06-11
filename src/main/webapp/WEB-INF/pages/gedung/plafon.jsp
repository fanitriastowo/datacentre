<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../template/taglib.jsp"%>

<h3>Input Plafon Gedung</h3>

<form:form commandName="plafon" action="${pageContext.request.contextPath }/pages/gedung/plafon/save.html" cssClass="form-horizontal formInputPlafon">

	<c:if test="${success eq true }">
		<div class="alert alert-success">Data Berhasil Diinputkan</div>
	</c:if>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Lisplang</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="lisplangPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas Lisplang:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="lisplangPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="lisplangPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="lisplangBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan Lisplang:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="lisplangBahan" cssClass="form-control" />
					<form:errors path="lisplangBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="lisplangKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Lisplang:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="lisplangKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="lisplangKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Rangka Plafon</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="rangkaPlafonPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas Rangka Plafon:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="rangkaPlafonPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="rangkaPlafonPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="rangkaPlafonBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="rangkaPlafonBahan" cssClass="form-control" />
					<form:errors path="rangkaPlafonBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="rangkaPlafonKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="rangkaPlafonKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="rangkaPlafonKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Plafon</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="plafonPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas Plafon:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="plafonPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="plafonPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="plafonBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="plafonBahan" cssClass="form-control" />
					<form:errors path="plafonBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="plafonKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="plafonKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="plafonKondisi" />
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
		$(".formInputPlafon").validate({
			rules : {
				lisplangPanjang : {
					required : true,
					number : true
				},
				lisplangBahan : {
					required : true
				},
				lisplangKondisi : {
					required : true
				},
				rangkaPlafonPanjang : {
					required : true,
					number : true
				},
				rangkaPlafonBahan : {
					required : true
				},
				rangkaPlafonKondisi : {
					required : true
				},
				plafonPanjang : {
					required : true,
					number : true
				},
				plafonBahan : {
					required : true
				},
				plafonKondisi : {
					required : true
				}
			},
			messages : {
				lisplangPanjang : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				lisplangBahan : {
					required : "Data Harap Diisi"
				},
				lisplangKondisi : {
					required : "Data Harap Diisi"
				},
				rangkaPlafonPanjang : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				rangkaPlafonBahan : {
					required : "Data Harap Diisi"
				},
				rangkaPlafonKondisi : {
					required : "Data Harap Diisi"
				},
				plafonPanjang : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				plafonBahan : {
					required : "Data Harap Diisi"
				},
				plafonKondisi : {
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