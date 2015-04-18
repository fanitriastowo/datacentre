<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../template/taglib.jsp"%>

<h3>Input Kondisi Air Gedung</h3>

<form:form commandName="air" action="${pageContext.request.contextPath }/pages/input/air/save.html" cssClass="form-horizontal formInputAir">
	<c:if test="${success eq true }">
		<div class="alert alert-success">Data Berhasil Diinputkan</div>
	</c:if>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Instalasi Pipa Air Bersih</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="instalasiPipaAirBersihPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Panjang Pipa:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="instalasiPipaAirBersihPanjang" placeholder="Panjang dalam meter (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="instalasiPipaAirBersihPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="instalasiPipaAirBersihBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan Pipa:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="instalasiPipaAirBersihBahan" cssClass="form-control" />
					<form:errors path="instalasiPipaAirBersihBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="instalasiPipaAirBersihKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Pipa:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="instalasiPipaAirBersihKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="instalasiPipaAirBersihKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Tanki Air</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="tankiAirVolume" class="col-lg-2 col-md-2 col-sm-2 control-label">Volume:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="tankiAirVolume" placeholder="Volume dalam meter kubik (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="tankiAirVolume" />
				</div>
			</div>
			<div class="form-group">
				<label for="tankiAirKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Tanki:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="tankiAirKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="tankiAirKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Pompa</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="pompaJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="pompaJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="pompaJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="pompaKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Pompa:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="pompaKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="pompaKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Kran</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="kranJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kranJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="kranJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="kranMerek" class="col-lg-2 col-md-2 col-sm-2 control-label">Merek:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kranMerek" cssClass="form-control" />
					<form:errors path="kranMerek" />
				</div>
			</div>
			<div class="form-group">
				<label for="kranKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Kran:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="kranKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="kranKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Groundtank</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="groundtankJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="groundtankJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="groundtankJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="groundtankMerek" class="col-lg-2 col-md-2 col-sm-2 control-label">Merek:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="groundtankMerek" cssClass="form-control" />
					<form:errors path="groundtankMerek" />
				</div>
			</div>
			<div class="form-group">
				<label for="groundtankKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Groundtank:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="groundtankKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="groundtankKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Instalasi Air Kotor</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="instalasiAirKotorPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Panjang Instalasi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="instalasiAirKotorPanjang" placeholder="Panjang dalam meter (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="instalasiAirKotorPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="instalasiAirKotorBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="instalasiAirKotorBahan" cssClass="form-control" />
					<form:errors path="instalasiAirKotorBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="instalasiAirKotorKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Instalasi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="instalasiAirKotorKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="instalasiAirKotorKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Drainase</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="drainaseJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="drainaseJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="drainaseJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="drainaseBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="drainaseBahan" cssClass="form-control" />
					<form:errors path="drainaseBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="drainaseKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Drainase:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="drainaseKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="drainaseKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Water Closed</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="waterClosedJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="waterClosedJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="waterClosedJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="waterClosedMerek" class="col-lg-2 col-md-2 col-sm-2 control-label">Merek:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="waterClosedMerek" cssClass="form-control" />
					<form:errors path="waterClosedMerek" />
				</div>
			</div>
			<div class="form-group">
				<label for="waterClosedKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="waterClosedKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="waterClosedKondisi" />
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
		$(".formInputAir").validate({
			rules : {
				instalasiPipaAirBersihPanjang : {
					required : true,
					number : true
				},
				instalasiPipaAirBersihBahan : {
					required : true
				},
				tankiAirVolume : {
					required : true,
					number : true
				},
				pompaJumlah : {
					required : true,
					number : true
				},
				kranJumlah : {
					required : true,
					number : true
				},
				kranMerek : {
					required : true
				},
				groundtankJumlah : {
					required : true,
					number : true
				},
				groundtankMerek : {
					required : true
				},
				instalasiAirKotorPanjang : {
					required : true,
					number : true
				},
				instalasiAirKotorBahan : {
					required : true
				},
				drainaseJumlah : {
					required : true,
					number : true
				},
				drainaseBahan : {
					required : true
				},
				waterClosedJumlah : {
					required : true,
					number : true
				},
				waterClosedMerek : {
					required : true
				}
			},
			messages : {
				instalasiPipaAirBersihPanjang : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				instalasiPipaAirBersihBahan : {
					required : "Data Harap Diisi"
				},
				tankiAirVolume : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				pompaJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				kranJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				kranMerek : {
					required : "Data Harap Diisi"
				},
				groundtankJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				groundtankMerek : {
					required : "Data Harap Diisi"
				},
				instalasiAirKotorPanjang : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				instalasiAirKotorBahan : {
					required : "Data Harap Diisi"
				},
				drainaseJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				drainaseBahan : {
					required : "Data Harap Diisi"
				},
				waterClosedJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				waterClosedMerek : {
					required : "Data Harap Diisi"
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