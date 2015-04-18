<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../template/taglib.jsp"%>

<h3>Input Atap Gedung</h3>


<form:form commandName="atap" action="${pageContext.request.contextPath }/pages/input/atap/save.html" cssClass="form-horizontal formInputAtap">
	<c:if test="${success eq true }">
		<div class="alert alert-success">Data Berhasil Diinputkan</div>
	</c:if>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Usuk</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="usukPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Panjang Usuk:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="usukPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="usukPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="usukBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan Usuk:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="usukBahan" cssClass="form-control" />
					<form:errors path="usukBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="usukKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Usuk:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="usukKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="usukKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Gording</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="gordingPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Panjang Gording:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="gordingPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="gordingPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="gordingBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan Gording:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="gordingBahan" cssClass="form-control" />
					<form:errors path="gordingBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="gordingKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Gording:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="gordingKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="gordingKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Reng</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="rengPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas Reng:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="rengPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="rengPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="rengBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan Reng:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="rengBahan" cssClass="form-control" />
					<form:errors path="rengBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="rengKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi Reng:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="rengKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="rengKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Kuda-Kuda</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="kudaKudaPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas Kuda-kuda:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kudaKudaPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="kudaKudaPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="kudaKudaBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="kudaKudaBahan" cssClass="form-control" />
					<form:errors path="kudaKudaBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="kudaKudaKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="kudaKudaKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="kudaKudaKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Ikatan Angin</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="ikatanAnginPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="ikatanAnginPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="ikatanAnginPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="ikatanAnginBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="ikatanAnginBahan" cssClass="form-control" />
					<form:errors path="ikatanAnginBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="ikatanAnginKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="ikatanAnginKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="ikatanAnginKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Genteng</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="gentengPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="gentengPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="gentengPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="gentengBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="gentengBahan" cssClass="form-control" />
					<form:errors path="gentengBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="gentengKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="gentengKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="gentengKondisi" />
			</div>
		</div>
	</div>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Bumbungan</strong>
			</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<label for="bumbunganPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Luas:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="bumbunganPanjang" placeholder="Luas dalam meter persegi (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="bumbunganPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="bumbunganBahan" class="col-lg-2 col-md-2 col-sm-2 control-label">Bahan:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="bumbunganBahan" cssClass="form-control" />
					<form:errors path="bumbunganBahan" />
				</div>
			</div>
			<div class="form-group">
				<label for="bumbunganKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="bumbunganKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="bumbunganKondisi" />
			</div>
		</div>
	</div>
	
	<div class="col-md-1 col-md-offset-10 col-sm-offset-10 col-xs-offset-10">
		<div class="form-group">
			<input type="submit" class="btn btn-lg btn-primary" value="Simpan" />
		</div>
	</div>
</form:form>