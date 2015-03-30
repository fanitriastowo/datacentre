<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>
<h2>Daftar Gedung</h2>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal">Tambah Gedung</button>
<br />
<br />

<!-- Add Modal -->
<form:form commandName="gedung" action="${pageContext.request.contextPath }/master/gedung/save.html" method="post" cssClass="form-horizontal addModalForm">
	<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="modalLabel">Tambah Data Gedung</h4>
				</div>
				<div class="modal-body">

					<div class="form-group">
						<label for="kodeGedung" class="col-sm-2 control-label">Id Gedung:</label>
						<div class="col-sm-10">
							<form:input path="kodeGedung" cssClass="form-control" />
							<form:errors path="kodeGedung" />
						</div>
					</div>

					<div class="form-group">
						<label for="namaGedung" class="col-sm-2 control-label">Nama Gedung:</label>
						<div class="col-sm-10">
							<form:input path="namaGedung" cssClass="form-control" />
							<form:errors path="namaGedung" />
						</div>
					</div>

					<div class="form-group">
						<label for="namaLain" class="col-sm-2 control-label">Nama Lain:</label>
						<div class="col-sm-10">
							<form:input path="namaLain" cssClass="form-control" />
							<form:errors path="namaLain" />
						</div>
					</div>

					<div class="form-group">
						<label for="kegunaan" class="col-sm-2 control-label">Kegunaan:</label>
						<div class="col-sm-10">
							<form:input path="kegunaan" cssClass="form-control" />
							<form:errors path="kegunaan" />
						</div>
					</div>

					<div class="form-group">
						<label for="tahunBerdiri" class="col-sm-2 control-label">Tahun Berdiri:</label>
						<div class="col-sm-10">
							<div class='input-group date' id='tahunBerdiri'>
								<form:input path="tahunBerdiri" cssClass="form-control" data-date-format="YYYY/MM/DD" />
								<span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span>
								</span>
								<form:errors path="tahunBerdiri" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="tahunSurvey" class="col-sm-2 control-label">Tahun Survey:</label>
						<div class="col-sm-10">
							<div class='input-group date' id='tahunSurvey'>
								<form:input path="tahunSurvey" cssClass="form-control" data-date-format="YYYY/MM/DD" />
								<span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span>
								</span>
								<form:errors path="tahunSurvey" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="luasGedung" class="col-sm-2 control-label">Luas Gedung:</label>
						<div class="col-sm-10">
							<form:input path="luasGedung" cssClass="form-control" />
							<form:errors path="luasGedung" />
						</div>
					</div>

					<div class="form-group">
						<label for="jenisGedung" class="col-sm-2 control-label">Jenis Gedung:</label>
						<div class="col-sm-10">
							<form:select path="jenisGedung" cssClass="form-control">
								<form:option value="TIDAK_BERTINGKAT">Tidak Bertingkat</form:option>
								<form:option value="BERLANTAI_2">Berlantai 2</form:option>
								<form:option value="BERLANTAI_3">Berlantai 3</form:option>
								<form:option value="BERLANTAI_4">Berlantai 4</form:option>
								<form:option value="BERLANTAI_5">Berlantai 5</form:option>
								<form:option value="BERLANTAI_6">Berlantai 6</form:option>
								<form:option value="LAIN_LAIN">Lain-Lain</form:option>
							</form:select>
							<form:errors path="jenisGedung" />
						</div>
					</div>

					<div class="form-group">
						<label for="lokasiGedung" class="col-sm-2 control-label">Lokasi Gedung:</label>
						<div class="col-sm-10">
							<form:textarea path="lokasiGedung" cssClass="form-control" rows="3" />
							<form:errors path="lokasiGedung" />
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
					<button type="submit" class="btn btn-primary">Simpan</button>
				</div>
			</div>
		</div>
	</div>
</form:form>

<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>ID</th>
				<th>Kode Gedung</th>
				<th>Nama Gedung</th>
				<th>Kegunaan</th>
				<th>Tahun Berdiri</th>
				<th>Tahun Survey</th>
				<th>Jenis Gedung</th>
				<th>Operation</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${gedungList }" var="gedung">
				<tr>
					<td><c:out value="${gedung.kodeGedung }" /></td>
					<td><c:out value="${gedung.namaGedung }" /></td>
					<td><c:out value="${gedung.namaLain }" /></td>
					<td><c:out value="${gedung.kegunaan }" /></td>
					<td><c:out value="${gedung.tahunBerdiri }" /></td>
					<td><c:out value="${gedung.tahunSurvey }" /></td>
					<td><c:out value="${gedung.jenisGedung }" /></td>
					<td><a href='<spring:url value="/master/gedung/detail/${gedung.id }.html" />' class="btn btn-info">Detail</a> <a href='<spring:url value="/master/gedung/update/${gedung.id }.html" />'
						class="btn btn-success" data-toggle="modal" data-target="#updateModal">Update</a> <a href='<spring:url value="/master/gedung/delete/${gedung.id }.html" />' class="btn btn-danger triggerRemove">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<!-- Modal Remove -->
<div class="modal fade" id="modalRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Tutup</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Hapus Data Gedung</h4>
			</div>
			<div class="modal-body">
				<strong>Apakah Anda yakin akan menghapus? </strong>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
				<a href="" class="btn btn-danger btnRemove">Hapus</a>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('.triggerRemove').click(function(e) {
			e.preventDefault();
			$('#modalRemove .btnRemove').attr("href", $(this).attr("href"));
			$('#modalRemove').modal();
		});

		$('.addModalForm').validate({
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

	$(function() {
		$('#tahunBerdiri').datetimepicker({
			locale : 'id'
		});
		$('#tahunSurvey').datetimepicker({
			locale : 'id'
		});
	});
</script>