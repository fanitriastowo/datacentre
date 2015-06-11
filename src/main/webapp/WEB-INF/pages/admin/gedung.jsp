<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../template/taglib.jsp"%>
<h2>Daftar Gedung</h2>
<a class="btn btn-primary" href='<spring:url value="/master/gedung/cetak/gedung.html" />'>Cetak</a>
<br />
<br />

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
						<a href="#" class="btn btn-info">Cetak Detail</a> 
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>