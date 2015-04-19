<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../template/taglib.jsp"%>

<h3>Input Kelistrikan Gedung</h3>

<form:form commandName="kelistrikan" action="${pageContext.request.contextPath }/pages/input/kelistrikan/save.html" cssClass="form-horizontal formInputKelistrikan">
    <c:if test="${success eq true }">
		<div class="alert alert-success">Data Berhasil Diinputkan</div>
	</c:if>
    
    <div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Instalasi Kabel</strong>
			</h2>
		</div>
        <div class="panel-body">
			<div class="form-group">
				<label for="instalasiKabelPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Panjang Instalasi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="instalasiKabelPanjang" placeholder="Panjang dalam meter (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="instalasiKabelPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="instalasiKabelJenis" class="col-lg-2 col-md-2 col-sm-2 control-label">Jenis Kabel:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="instalasiKabelJenis" cssClass="form-control" />
					<form:errors path="instalasiKabelJenis" />
				</div>
			</div>
			<div class="form-group">
				<label for="instalasiKabelKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="instalasiKabelKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="instalasiKabelKondisi" />
			</div>
		</div>
    </div>
    
    <div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Lampu</strong>
			</h2>
		</div>
        <div class="panel-body">
			<div class="form-group">
				<label for="lampuJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah Lampu:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="lampuJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="lampuJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="lampuJumlahBaik" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah Kondisi Baik:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="lampuJumlahBaik" cssClass="form-control" />
					<form:errors path="lampuJumlahBaik" />
				</div>
			</div>
			<div class="form-group">
				<label for="lampuJumlahRusak" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah Kondisi Rusak:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="lampuJumlahRusak" cssClass="form-control" />
					<form:errors path="lampuJumlahRusak" />
				</div>
			</div>
		</div>
    </div>
    
    <div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Stop Kontak</strong>
			</h2>
		</div>
        <div class="panel-body">
			<div class="form-group">
				<label for="stopKontakJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="stopKontakJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="stopKontakJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="stopKontakJumlahBaik" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah Kondisi Baik:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="stopKontakJumlahBaik" cssClass="form-control" />
					<form:errors path="stopKontakJumlahBaik" />
				</div>
			</div>
			<div class="form-group">
				<label for="stopKontakJumlahRusak" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah Kondisi Rusak:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="stopKontakJumlahRusak" cssClass="form-control" />
					<form:errors path="stopKontakJumlahRusak" />
				</div>
			</div>
		</div>
    </div>
    
    <div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Saklar</strong>
			</h2>
		</div>
        <div class="panel-body">
			<div class="form-group">
				<label for="saklarJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="saklarJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="saklarJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="saklarJumlahBaik" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah Kondisi Baik:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="saklarJumlahBaik" cssClass="form-control" />
					<form:errors path="saklarJumlahBaik" />
				</div>
			</div>
			<div class="form-group">
				<label for="saklarJumlahRusak" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah Kondisi Rusak:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="saklarJumlahRusak" cssClass="form-control" />
					<form:errors path="saklarJumlahRusak" />
				</div>
			</div>
		</div>
    </div>

    <div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Instalasi Listrik</strong>
			</h2>
		</div>
        <div class="panel-body">
			<div class="form-group">
				<label for="instalasiListrikKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="instalasiListrikKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="instalasiListrikKondisi" />
			</div>
		</div>
    </div>
    
    <div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Instalasi LAN</strong>
			</h2>
		</div>
        <div class="panel-body">
			<div class="form-group">
				<label for="instalasiKabelLANPanjang" class="col-lg-2 col-md-2 col-sm-2 control-label">Panjang Instalasi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="instalasiKabelLANPanjang" placeholder="Panjang dalam meter (input tanpa satuan)" cssClass="form-control" />
					<form:errors path="instalasiKabelLANPanjang" />
				</div>
			</div>
			<div class="form-group">
				<label for="instalasiKabelLANKondisi" class="col-lg-2 col-md-2 col-sm-2 control-label">Kondisi:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:select path="instalasiKabelLANKondisi" cssClass="form-control">
						<form:option value="BAIK">BAIK</form:option>
						<form:option value="RUSAK_RINGAN">RUSAK RINGAN</form:option>
						<form:option value="RUSAK_SEDANG">RUSAK SEDANG</form:option>
						<form:option value="RUSAK_BERAT">RUSAK BERAT</form:option>
					</form:select>
				</div>
				<form:errors path="instalasiKabelLANKondisi" />
			</div>
		</div>
    </div>
    
    <div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title text-center">
				<strong>Switch</strong>
			</h2>
		</div>
        <div class="panel-body">
			<div class="form-group">
				<label for="switchJumlah" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="switchJumlah" placeholder="(input tanpa satuan)" cssClass="form-control" />
					<form:errors path="switchJumlah" />
				</div>
			</div>
			<div class="form-group">
				<label for="switchJumlahBaik" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah Kondisi Baik:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="switchJumlahBaik" cssClass="form-control" />
					<form:errors path="switchJumlahBaik" />
				</div>
			</div>
			<div class="form-group">
				<label for="switchJumlahRusak" class="col-lg-2 col-md-2 col-sm-2 control-label">Jumlah Kondisi Rusak:</label>
				<div class="col-lg-9 col-md-9 col-sm-9">
					<form:input path="switchJumlahRusak" cssClass="form-control" />
					<form:errors path="switchJumlahRusak" />
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