<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>
<h2>Daftar Gedung</h2>

<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>Kode Gedung</th>
				<th>Nama Gedung</th>
				<th>Nama Lain</th>
				<th>Kegunaan</th>
				<th>Tahun Berdiri</th>
				<th>Tahun Survey</th>
				<th>Luas Gedung</th>
				<th>Jenis Gedung</th>
				<th>Lokasi Gedung</th>
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
					<td><c:out value="${gedung.luasGedung }" /></td>
					<td><c:out value="${gedung.jenisGedung }" /></td>
					<td><c:out value="${gedung.lokasiGedung }" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>