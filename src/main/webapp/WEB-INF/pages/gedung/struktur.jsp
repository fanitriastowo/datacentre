<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../template/taglib.jsp"%>

<h3>Input Struktur Gedung</h3>

<form:form commandName="struktur" action="${pageContext.request.contextPath }/pages/gedung/struktur/save.html" cssClass="form-horizontal formInputStruktur">
	<c:if test="${success eq true }">
		<div class="alert alert-success">Data Berhasil Diinputkan</div>
	</c:if>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Kolom</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="kolomJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kolomJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="kolomJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="kolomBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kolomBahan" cssClass="form-control" />
					<form:errors path="kolomBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="kolomKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="kolomKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="kolomKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Ring Balok</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="ringBalokJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="ringBalokJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="ringBalokJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="ringBalokBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="ringBalokBahan" cssClass="form-control" />
					<form:errors path="ringBalokBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="ringBalokKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="ringBalokKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="ringBalokKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Balok</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="balokJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="balokJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="balokJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="balokBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="balokBahan" cssClass="form-control" />
					<form:errors path="balokBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="balokKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="balokKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="balokKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Pelat Lantai</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="pelatLantaiPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="pelatLantaiPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="pelatLantaiPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="pelatLantaiBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="pelatLantaiBahan" cssClass="form-control" />
					<form:errors path="pelatLantaiBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="pelatLantaiKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="pelatLantaiKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="pelatLantaiKondisi" />
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
		$(".formInputStruktur").validate({
			rules : {
				kolomJumlah : {
					required : true,
					number : true
				},
				kolomBahan : {
					required : true
				},
				kolomKondisi : {
					required : true
				},
				ringBalokJumlah : {
					required : true,
					number : true
				},
				ringBalokBahan : {
					required : true
				},
				ringBalokKondisi : {
					required : true
				},
				balokJumlah : {
					required : true,
					number : true
				},
				balokBahan : {
					required : true
				},
				balokKondisi : {
					required : true
				},
				pelatLantaiPanjang : {
					required : true,
					number : true
				},
				pelatLantaiBahan : {
					required : true,
				},
				pelatLantaiKondisi : {
					required : true
				}
			},
			messages : {
				kolomJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				kolomBahan : {
					required : "Data Harap Diisi"
				},
				kolomKondisi : {
					required : "Data Harap Diisi"
				},
				ringBalokJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				ringBalokBahan : {
					required : "Data Harap Diisi"
				},
				ringBalokKondisi : {
					required : "Data Harap Diisi"
				},
				balokJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				balokBahan : {
					required : "Data Harap Diisi"
				},
				balokKondisi : {
					required : "Data Harap Diisi"
				},
				pelatLantaiPanjang : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				pelatLantaiBahan : {
					required : "Data Harap Diisi",
				},
				pelatLantaiKondisi : {
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