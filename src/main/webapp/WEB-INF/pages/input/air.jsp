<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../template/taglib.jsp"%>

<h3>Input Kondisi Air Gedung</h3>

<form:form commandName="air" action="${pageContext.request.contextPath }/pages/input/air/save.html" cssClass="form-horizontal formInputGedung">
	<c:if test="${success eq true }">
		<div class="alert alert-success">Data Berhasil Diinputkan</div>
	</c:if>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Input Kondisi Air Gedung</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="form-group">
					<label for="instalasiPipaAirBersihPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Pipa Air Bersih:</label>
					<div class="col-lg-9 col-md-9 col-sm-9">
						<form:input path="instalasiPipaAirBersihPanjang" cssClass="form-control" />
						<form:errors path="instalasiPipaAirBersihPanjang" />
					</div>
				</div>
				<div class="col-md-3">
					
				</div>
				<div class="col-md-3">
					
				</div>
				<div class="col-md-3">
					
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					
				</div>
				<div class="col-md-3">
					
				</div>
				<div class="col-md-3">
					
				</div>
				<div class="col-md-3">
					
				</div>
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
		$('.formInputGedung').validate({
			rules : {
				kodeGedung : {
					required : true,
					minlength : 3
				},
				namaGedung : {
					required : true,
				},
				namaLain : {
					required : true,
					minlength : 3
				},
				kegunaan : {
					required : true,
					minlength : 3
				},
				tahunBerdiri : {
					required : true
				},
				tahunSurvey : {
					required : true
				},
				luasGedung : {
					required : true
				},
				lokasiGedung : {
					required : true,
					minlength : 3
				}

			},
			messages : {
				kodeGedung : {
					required : "Id Gedung Harap Diisi",
					minlength : "Minimal 3 Karakter"
				},
				namaGedung : {
					required : "Kode Gedung Harap Diisi",
				},
				namaLain : {
					required : "Nama Gedung Harap Diisi",
					minlength : "Minimal 3 Karakter"
				},
				kegunaan : {
					required : "Kegunaan Gedung Harap Diisi",
					minlength : "Minimal 3 Karakter"
				},
				tahunBerdiri : {
					required : "Tahun Berdiri Harap Diisi"
				},
				tahunSurvey : {
					required : "Tahun Survey Harap Diisi"
				},
				luasGedung : {
					required : "Luas Gedung Harap Diisi"
				},
				lokasiGedung : {
					required : "Lokasi Gedung Harap Diisi",
					minlength : "Minimal 3 Karakter"
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