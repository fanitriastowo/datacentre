<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../template/taglib.jsp"%>

<h3>Input Ruangan Gedung</h3>

<form:form commandName="ruangan" action="${pageContext.request.contextPath }/pages/input/ruangan/save.html" cssClass="form-horizontal formInputRuangan">
	<c:if test="${success eq true }">
		<div class="alert alert-success">Data Berhasil Diinputkan</div>
	</c:if>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Dinding Ruangan</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="dindingRuangPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas Dinding:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="dindingRuangPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="dindingRuangPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="dindingRuangBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan Dinding:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="dindingRuangBahan" cssClass="form-control" />
					<form:errors path="dindingRuangBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="dindingRuangKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Dinding:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="dindingRuangKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="dindingRuangKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Cat Dinding</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="catDindingPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas Cat:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="catDindingPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="catDindingPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="catDindingJenis" class="col-lg-2 col-md-2 col-sm-2 control-label">Jenis:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="catDindingJenis" cssClass="form-control" />
					<form:errors path="catDindingJenis" />
				</div>
			</div>
			<div class="form-group">
				<label for="catDindingKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="catDindingKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="catDindingKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Kusen Pintu</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="kusenPintuJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kusenPintuJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="kusenPintuJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="kusenPintuBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kusenPintuBahan" cssClass="form-control" />
					<form:errors path="kusenPintuBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="kusenPintuKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="kusenPintuKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="kusenPintuKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Daun Pintu</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="daunPintuJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="daunPintuJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="daunPintuJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="daunPintuBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="daunPintuBahan" cssClass="form-control" />
					<form:errors path="daunPintuBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="daunPintuKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="daunPintuKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="daunPintuKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Kunci Hendel</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="kunciHendelJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kunciHendelJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="kunciHendelJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="kunciHendelBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kunciHendelBahan" cssClass="form-control" />
					<form:errors path="kunciHendelBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="kunciHendelKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="kunciHendelKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="kunciHendelKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Cat Pintu</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="catPintuPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="catPintuPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="catPintuPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="catPintuJenis" class="col-lg-2 col-md-2 col-sm-2 control-label">Jenis:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="catPintuJenis" cssClass="form-control" />
					<form:errors path="catPintuJenis" />
				</div>
			</div>
			<div class="form-group">
				<label for="catPintuKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="catPintuKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="catPintuKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Kusen Jendela</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="kusenJendelaJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kusenJendelaJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="kusenJendelaJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="kusenJendelaBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kusenJendelaBahan" cssClass="form-control" />
					<form:errors path="kusenJendelaBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="kusenJendelaKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="kusenJendelaKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="kusenJendelaKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Daun Jendela</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="daunJendelaJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="daunJendelaJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="daunJendelaJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="daunJendelaBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="daunJendelaBahan" cssClass="form-control" />
					<form:errors path="daunJendelaBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="daunJendelaKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="daunJendelaKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="daunJendelaKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Kaca</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="kacaPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kacaPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="kacaPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="kacaKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="kacaKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="kacaKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Slot</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="slotJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="slotJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="slotJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="slotMerek" class="col-lg-2 col-md-2 col-sm-2 control-label">Merek:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="slotMerek" cssClass="form-control" />
					<form:errors path="slotMerek" />
				</div>
			</div>
			<div class="form-group">
				<label for="slotKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="slotKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="slotKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Cat Jendela</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="catJendelaPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="catJendelaPanjang" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="catJendelaPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="catJendelaJenis" class="col-lg-2 col-md-2 col-sm-2 control-label">Jenis:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="catJendelaJenis" cssClass="form-control" />
					<form:errors path="catJendelaJenis" />
				</div>
			</div>
			<div class="form-group">
				<label for="catJendelaKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="catJendelaKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="catJendelaKondisi" />
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
		$(".formInputRuangan").validate({
			rules : {
				dindingRuangPanjang : {
					required : true,
					number : true
				},
				dindingRuangBahan : {
					required : true
				},
				dindingRuangKondisi : {
					required : true
				},
				catDindingPanjang : {
					required : true,
					number : true
				},
				catDindingJenis : {
					required : true
				},
				catDindingKondisi : {
					required : true
				},
				kusenPintuJumlah : {
					required : true,
					number : true
				},
				kusenPintuBahan : {
					required : true
				},
				kusenPintuKondisi : {
					required : true
				},
				daunPintuJumlah : {
					required : true,
					number : true
				},
				daunPintuBahan : {
					required : true
				},
				daunPintuKondisi : {
					required : true
				},
				kunciHendelJumlah : {
					required : true,
					number : true
				},
				kunciHendelBahan : {
					required : true
				},
				kunciHendelKondisi : {
					required : true
				},
				catPintuPanjang : {
					required : true,
					number : true
				},
				catPintuJenis : {
					required : true
				},
				catPintuKondisi : {
					required : true
				},
				kusenJendelaJumlah : {
					required : true,
					number : true
				},
				kusenJendelaBahan : {
					required : true
				},
				kusenJendelaKondisi : {
					required : true
				},
				daunJendelaJumlah : {
					required : true,
					number : true
				},
				daunJendelaBahan : {
					required : true
				},
				daunJendelaKondisi : {
					required : true
				},
				kacaPanjang : {
					required : true,
					number : true
				},
				kacaKondisi : {
					required : true
				},
				slotJumlah : {
					required : true,
					number : true
				},
				slotMerek : {
					required : true
				},
				slotKondisi : {
					required : true
				},
				catJendelaPanjang : {
					required : true,
					number : true
				},
				catJendelaJenis : {
					required : true
				},
				catJendelaKondisi : {
					required : true
				}
			},
			messages : {
				dindingRuangPanjang : {
					required : "Data Harap Diisi",
					numbe : "Input Hanya Berupa Angka"
				},
				dindingRuangBahan : {
					required : "Data Harap Diisi"
				},
				dindingRuangKondisi : {
					required : "Data Harap Diisi"
				},
				catDindingPanjang : {
					required : "Data Harap Diisi",
					number : "Data Harap Diisi"
				},
				catDindingJenis : {
					required : "Data Harap Diisi"
				},
				catDindingKondisi : {
					required : "Data Harap Diisi"
				},
				kusenPintuJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				kusenPintuBahan : {
					required : "Data Harap Diisi"
				},
				kusenPintuKondisi : {
					required : "Data Harap Diisi"
				},
				daunPintuJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				daunPintuBahan : {
					required : "Data Harap Diisi"
				},
				daunPintuKondisi : {
					required : "Data Harap Diisi"
				},
				kunciHendelJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				kunciHendelBahan : {
					required : "Data Harap Diisi"
				},
				kunciHendelKondisi : {
					required : "Data Harap Diisi"
				},
				catPintuPanjang : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				catPintuJenis : {
					required : "Data Harap Diisi"
				},
				catPintuKondisi : {
					required : "Data Harap Diisi"
				},
				kusenJendelaJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				kusenJendelaBahan : {
					required : "Data Harap Diisi"
				},
				kusenJendelaKondisi : {
					required : "Data Harap Diisi"
				},
				daunJendelaJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				daunJendelaBahan : {
					required : "Data Harap Diisi"
				},
				daunJendelaKondisi : {
					required : "Data Harap Diisi"
				},
				kacaPanjang : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				kacaKondisi : {
					required : "Data Harap Diisi"
				},
				slotJumlah : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				slotMerek : {
					required : "Data Harap Diisi"
				},
				slotKondisi : {
					required : "Data Harap Diisi"
				},
				catJendelaPanjang : {
					required : "Data Harap Diisi",
					number : "Input Hanya Berupa Angka"
				},
				catJendelaJenis : {
					required : "Data Harap Diisi"
				},
				catJendelaKondisi : {
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