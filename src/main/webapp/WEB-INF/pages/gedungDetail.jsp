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

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
	<li><a href="#atap" role="tab" data-toggle="tab">Atap</a></li>
	<li><a href="#plafon" role="tab" data-toggle="tab">Plafon</a></li>
	<li><a href="#struktur" role="tab" data-toggle="tab">Struktur</a></li>
	<li><a href="#pondasi" role="tab" data-toggle="tab">Pondasi</a></li>
	<li><a href="#ruangan" role="tab" data-toggle="tab">Ruangan</a></li>
</ul>

<div class="tab-content">
	<!-- Atap -->
	<div class="tab-pane" id="atap">
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
	</div>

	<!-- Plafon -->
	<div class="tab-pane" id="plafon">
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
									<td><c:out value="${gedungDetail.plafon.lisplangPanjang }" /> m<sup>2</sup></td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.plafon.lisplangBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.plafon.lisplangKondisi }" /></td>
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
									<td><c:out value="${gedungDetail.plafon.rangkaPlafonPanjang }" /> m<sup>2</sup></td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.plafon.rangkaPlafonBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.plafon.rangkaPlafonKondisi }" /></td>
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
									<td><c:out value="${gedungDetail.plafon.plafonPanjang }" /> m<sup>2</sup></td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.plafon.plafonBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.plafon.plafonKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Struktur -->
	<div class="tab-pane" id="struktur">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h2 class="panel-title text-center">
					<strong>Status Struktur</strong>
				</h2>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-3">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Kolom</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Jumlah:</strong></td>
									<td><c:out value="${gedungDetail.struktur.kolomJumlah }" /> Buah</td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.struktur.kolomBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.struktur.kolomKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-3">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Ring Balok</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Jumlah:</strong></td>
									<td><c:out value="${gedungDetail.struktur.ringBalokJumlah }" /> Buah</td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.struktur.ringBalokBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.struktur.ringBalokKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-3">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Balok</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Jumlah:</strong></td>
									<td><c:out value="${gedungDetail.struktur.balokJumlah }" /> Buah</td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.struktur.balokBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.struktur.balokKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-3">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Pelat Lantai</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.struktur.pelatLantaiPanjang }" /> m<sup>2</sup></td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.struktur.pelatLantaiBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.struktur.pelatLantaiKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Pondasi -->
	<div class="tab-pane" id="pondasi">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h2 class="panel-title text-center">
					<strong>Status Pondasi</strong>
				</h2>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-12">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Sloof</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.pondasi.sloofPanjang }" /> m<sup>2</sup></td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.pondasi.sloofBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.pondasi.sloofKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Ruangan -->
	<div class="tab-pane" id="ruangan">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h2 class="panel-title text-center">
					<strong>Status Ruangan</strong>
				</h2>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-3">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Dinding Ruangan</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.dindingRuangPanjang }" /> m<sup>2</sup></td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.dindingRuangBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.dindingRuangKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-3">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Cat Dinding</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.catDindingPanjang }" /> m<sup>2</sup></td>
								</tr>
								<tr>
									<td><strong>Jenis:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.catDindingJenis }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.catDindingKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-3">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Kusen Pintu</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.kusenPintuJumlah }" /> Buah</td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.kusenPintuBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.kusenPintuKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-3">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Daun Pintu</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.daunPintuJumlah }" /> Buah</td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.daunPintuBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.daunPintuKondisi }" /></td>
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
									<th class="text-center"><strong>Kunci Hendel</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.kunciHendelJumlah }" /> Buah</td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.kunciHendelBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.kunciHendelKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-3">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Cat Pintu</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.catPintuPanjang }" /> m<sup>2</sup></td>
								</tr>
								<tr>
									<td><strong>Jenis:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.catPintuJenis }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.catPintuKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-3">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Kusen Jendela</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.kusenJendelaJumlah }" /> Buah</td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.kusenJendelaBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.kusenJendelaKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-3">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Daun Jendela</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.daunJendelaJumlah }" /> Buah</td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.daunJendelaBahan }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.daunJendelaKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Kaca</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.kacaPanjang }" /> m<sup>2</sup></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.kacaKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-4">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Slot</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.slotJumlah }" /> Buah</td>
								</tr>
								<tr>
									<td><strong>Merek:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.slotMerek }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.slotKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-md-4">
						<table class="table">
							<thead>
								<tr>
									<th class="text-center"><strong>Cat Jendela</strong></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><strong>Panjang:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.catJendelaPanjang }" /> m<sup>2</sup></td>
								</tr>
								<tr>
									<td><strong>Bahan:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.catJendelaJenis }" /></td>
								</tr>
								<tr>
									<td><strong>Kondisi:</strong></td>
									<td><c:out value="${gedungDetail.ruangan.catJendelaKondisi }" /></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('.nav-tabs a:first').tab('show') // Select first tab
	});
</script>
