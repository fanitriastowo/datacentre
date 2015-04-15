<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>
<h2>Daftar Gedung</h2>

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
					<td>
						<a href='<spring:url value="/master/gedung/detail/${gedung.id }.html" />' class="btn btn-info">Detail</a> 
						<%-- <a href='<spring:url value="/master/gedung/update/${gedung.id }.html" />' class="btn btn-success" data-toggle="modal" data-target="#updateModal">Update</a> --%> 
						<%-- <a href='<spring:url value="/master/gedung/delete/${gedung.id }.html" />' class="btn btn-danger triggerRemove">Delete</a> --%>
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
	})
</script>