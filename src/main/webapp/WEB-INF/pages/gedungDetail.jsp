<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>

<!-- Identitas -->
<div class="panel panel-success">
	<div class="panel-heading">
		<h2 class="panel-title text-center">
			<strong>Identitas <c:out value="${gedungDetail.namaLain}" /></strong>
		</h2>
	</div>
	<div class="panel-body">

		<div class="col-md-6">
			<table class="table">
				<tbody>
					<tr>
						<td><strong>Kode Gedung:</strong></td>
						<td><c:out value="${gedungDetail.namaGedung }" /></td>
					</tr>
					<tr>
						<td><strong>Nama Gedung:</strong></td>
						<td><c:out value="${gedungDetail.namaLain }" /></td>
					</tr>
					<tr>
						<td><strong>Tahun Berdiri:</strong></td>
						<td><c:out value="${gedungDetail.tahunBerdiri }" /></td>
					</tr>
					<tr>
						<td><strong>Tahun Survey:</strong></td>
						<td><c:out value="${gedungDetail.tahunSurvey }" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-md-6">
			<table class="table">
				<tbody>
					<tr>
						<td><strong>Jenis Gedung:</strong></td>
						<td><c:out value="${gedungDetail.jenisGedung }" /></td>
					</tr>
					<tr>
						<td><strong>Kegunaan Gedung:</strong></td>
						<td><c:out value="${gedungDetail.kegunaan }" /></td>
					</tr>
					<tr>
						<td><strong>Luas Gedung:</strong></td>
						<td><c:out value="${gedungDetail.luasGedung }" /> m<sup>2</sup></td>
					</tr>
					<tr>
						<td><strong>Lokasi Gedung:</strong></td>
						<td><c:out value="${gedungDetail.lokasiGedung }" /></td>
					</tr>
				</tbody>
			</table>
		</div>

	</div>
</div>

<!-- Atap -->
<div class="panel panel-success">
	<div class="panel-heading">
		<h2 class="panel-title text-center">
			<strong>Status Atap</strong>
		</h2>
	</div>
	<div class="panel-body">
		<div class="row">
			<div class="col-md-4">
				<table class="table">
					<thead>
						<tr>
							<th class="text-center"><strong>Usuk</strong></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Panjang:</strong></td>
							<td><c:out value="${gedungDetail.atap.usukPanjang }" /> m<sup>2</sup></td>
						</tr>
						<tr>
							<td><strong>Bahan:</strong></td>
							<td><c:out value="${gedungDetail.atap.usukBahan }" /></td>
						</tr>
						<tr>
							<td><strong>Kondisi:</strong></td>
							<td><c:out value="${gedungDetail.atap.usukKondisi }" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-4">
				<table class="table">
					<thead>
						<tr>
							<th class="text-center"><strong>Gording</strong></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Panjang:</strong></td>
							<td><c:out value="${gedungDetail.atap.gordingPanjang }" /> m<sup>2</sup></td>
						</tr>
						<tr>
							<td><strong>Bahan:</strong></td>
							<td><c:out value="${gedungDetail.atap.gordingBahan }" /></td>
						</tr>
						<tr>
							<td><strong>Kondisi:</strong></td>
							<td><c:out value="${gedungDetail.atap.gordingKondisi }" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-4">
				<table class="table">
					<thead>
						<tr>
							<th class="text-center"><strong>Reng</strong></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Panjang:</strong></td>
							<td><c:out value="${gedungDetail.atap.rengPanjang }" /> m<sup>2</sup></td>
						</tr>
						<tr>
							<td><strong>Bahan:</strong></td>
							<td><c:out value="${gedungDetail.atap.rengBahan }" /></td>
						</tr>
						<tr>
							<td><strong>Kondisi:</strong></td>
							<td><c:out value="${gedungDetail.atap.rengKondisi }" /></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<table class="table">
					<thead>
						<tr>
							<th class="text-center"><strong>Kuda-kuda</strong></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Panjang:</strong></td>
							<td><c:out value="${gedungDetail.atap.kudaKudaPanjang }" /> m<sup>2</sup></td>
						</tr>
						<tr>
							<td><strong>Bahan:</strong></td>
							<td><c:out value="${gedungDetail.atap.kudaKudaBahan }" /></td>
						</tr>
						<tr>
							<td><strong>Kondisi:</strong></td>
							<td><c:out value="${gedungDetail.atap.kudaKudaKondisi }" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-3">
				<table class="table">
					<thead>
						<tr>
							<th class="text-center"><strong>Ikatan Angin</strong></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Panjang:</strong></td>
							<td><c:out value="${gedungDetail.atap.ikatanAnginPanjang }" /> m<sup>2</sup></td>
						</tr>
						<tr>
							<td><strong>Bahan:</strong></td>
							<td><c:out value="${gedungDetail.atap.ikatanAnginBahan }" /></td>
						</tr>
						<tr>
							<td><strong>Kondisi:</strong></td>
							<td><c:out value="${gedungDetail.atap.ikatanAnginKondisi }" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-3">
				<table class="table">
					<thead>
						<tr>
							<th class="text-center"><strong>Genteng</strong></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Panjang:</strong></td>
							<td><c:out value="${gedungDetail.atap.gentengPanjang }" /> m<sup>2</sup></td>
						</tr>
						<tr>
							<td><strong>Bahan:</strong></td>
							<td><c:out value="${gedungDetail.atap.gentengBahan }" /></td>
						</tr>
						<tr>
							<td><strong>Kondisi:</strong></td>
							<td><c:out value="${gedungDetail.atap.gentengKondisi }" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-3">
				<table class="table">
					<thead>
						<tr>
							<th class="text-center"><strong>Bumbungan</strong></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Panjang:</strong></td>
							<td><c:out value="${gedungDetail.atap.bumbunganPanjang}" /> m<sup>2</sup></td>
						</tr>
						<tr>
							<td><strong>Bahan:</strong></td>
							<td><c:out value="${gedungDetail.atap.bumbunganBahan }" /></td>
						</tr>
						<tr>
							<td><strong>Kondisi:</strong></td>
							<td><c:out value="${gedungDetail.atap.bumbunganKondisi }" /></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<!-- Plafon -->
<div class="panel panel-success">
	<div class="panel-heading">
		<h2 class="panel-title text-center">
			<strong>Status Plafon</strong>
		</h2>
	</div>
	<div class="panel-body">
		<div class="row">
			<div class="col-md-4">
				<table class="table">
					<thead>
						<tr>
							<th class="text-center"><strong>Lisplang</strong></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Panjang:</strong></td>
							<td><c:out value="${gedungDetail.atap.usukPanjang }" /> m<sup>2</sup></td>
						</tr>
						<tr>
							<td><strong>Bahan:</strong></td>
							<td><c:out value="${gedungDetail.atap.usukBahan }" /></td>
						</tr>
						<tr>
							<td><strong>Kondisi:</strong></td>
							<td><c:out value="${gedungDetail.atap.usukKondisi }" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-4">
				<table class="table">
					<thead>
						<tr>
							<th class="text-center"><strong>Rangka Plafon</strong></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Panjang:</strong></td>
							<td><c:out value="${gedungDetail.atap.gordingPanjang }" /> m<sup>2</sup></td>
						</tr>
						<tr>
							<td><strong>Bahan:</strong></td>
							<td><c:out value="${gedungDetail.atap.gordingBahan }" /></td>
						</tr>
						<tr>
							<td><strong>Kondisi:</strong></td>
							<td><c:out value="${gedungDetail.atap.gordingKondisi }" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-4">
				<table class="table">
					<thead>
						<tr>
							<th class="text-center"><strong>Plafon</strong></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><strong>Panjang:</strong></td>
							<td><c:out value="${gedungDetail.atap.rengPanjang }" /> m<sup>2</sup></td>
						</tr>
						<tr>
							<td><strong>Bahan:</strong></td>
							<td><c:out value="${gedungDetail.atap.rengBahan }" /></td>
						</tr>
						<tr>
							<td><strong>Kondisi:</strong></td>
							<td><c:out value="${gedungDetail.atap.rengKondisi }" /></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>