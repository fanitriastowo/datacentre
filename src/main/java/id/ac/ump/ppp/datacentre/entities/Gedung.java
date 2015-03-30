package id.ac.ump.ppp.datacentre.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "GEDUNG")
public class Gedung {

	@Id
	@GeneratedValue
	private Integer id;

	@Size(min = 3, message = "Minimal 3 Karakter")
	@NotBlank(message = "Id Gedung Harap Diisi")
	private String kodeGedung;

	@NotBlank(message = "Kode Gedung Harap Diisi")
	private String namaGedung;

	@Size(min = 3, message = "Minimal 3 Karakter")
	@NotBlank(message = "Nama Gedung Harap Diisi")
	private String namaLain;

	@Size(min = 3, message = "Minimal 3 Karakter")
	@NotBlank(message = "Kegunaan Gedung Harap Diisi")
	private String kegunaan;

	@Temporal(TemporalType.DATE)
	private Date tahunBerdiri;

	@Temporal(TemporalType.DATE)
	private Date tahunSurvey;

	private Double luasGedung;

	@Lob
	@Column(length = Integer.MAX_VALUE)
	@Type(type = "org.hibernate.type.StringClobType")
	@Size(min = 3, message = "Minimal 3 Karakter")
	@NotBlank(message = "Lokasi Gedung Harap Diisi")
	private String lokasiGedung;

	@OneToOne
	@JoinColumn(name = "atap_id")
	private Atap atap;

	@OneToOne
	@JoinColumn(name = "plafon_id")
	private Plafon plafon;

	@OneToOne
	@JoinColumn(name = "struktur_id")
	private Struktur struktur;

	@OneToOne
	@JoinColumn(name = "pondasi_id")
	private Pondasi pondasi;

	@OneToOne
	@JoinColumn(name = "ruangan_id")
	private Ruangan ruangan;

	@OneToOne
	@JoinColumn(name = "lantai_id")
	private Lantai lantai;

	@OneToOne
	@JoinColumn(name = "kelistrikan_id")
	private Kelistrikan kelistrikan;

	@OneToOne
	@JoinColumn(name = "air_id")
	private Air air;

	private JenisGedung jenisGedung;

	public enum JenisGedung {
		BERLANTAI_2, BERLANTAI_3, BERLANTAI_4, BERLANTAI_5, BERLANTAI_6, TIDAK_BERTINGKAT, LAIN_LAIN
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getKodeGedung() {
		return kodeGedung;
	}

	public void setKodeGedung(String kodeGedung) {
		this.kodeGedung = kodeGedung;
	}

	public String getNamaGedung() {
		return namaGedung;
	}

	public void setNamaGedung(String namaGedung) {
		this.namaGedung = namaGedung;
	}

	public String getNamaLain() {
		return namaLain;
	}

	public void setNamaLain(String namaLain) {
		this.namaLain = namaLain;
	}

	public String getKegunaan() {
		return kegunaan;
	}

	public void setKegunaan(String kegunaan) {
		this.kegunaan = kegunaan;
	}

	public Date getTahunBerdiri() {
		return tahunBerdiri;
	}

	public void setTahunBerdiri(Date tahunBerdiri) {
		this.tahunBerdiri = tahunBerdiri;
	}

	public Date getTahunSurvey() {
		return tahunSurvey;
	}

	public void setTahunSurvey(Date tahunSurvey) {
		this.tahunSurvey = tahunSurvey;
	}

	public Double getLuasGedung() {
		return luasGedung;
	}

	public void setLuasGedung(Double luasGedung) {
		this.luasGedung = luasGedung;
	}

	public JenisGedung getJenisGedung() {
		return jenisGedung;
	}

	public void setJenisGedung(JenisGedung jenisGedung) {
		this.jenisGedung = jenisGedung;
	}

	public String getLokasiGedung() {
		return lokasiGedung;
	}

	public void setLokasiGedung(String lokasiGedung) {
		this.lokasiGedung = lokasiGedung;
	}

	public Atap getAtap() {
		return atap;
	}

	public void setAtap(Atap atap) {
		this.atap = atap;
	}

	public Plafon getPlafon() {
		return plafon;
	}

	public void setPlafon(Plafon plafon) {
		this.plafon = plafon;
	}

	public Struktur getStruktur() {
		return struktur;
	}

	public void setStruktur(Struktur struktur) {
		this.struktur = struktur;
	}

	public Pondasi getPondasi() {
		return pondasi;
	}

	public void setPondasi(Pondasi pondasi) {
		this.pondasi = pondasi;
	}

	public Ruangan getRuangan() {
		return ruangan;
	}

	public void setRuangan(Ruangan ruangan) {
		this.ruangan = ruangan;
	}

	public Lantai getLantai() {
		return lantai;
	}

	public void setLantai(Lantai lantai) {
		this.lantai = lantai;
	}

	public Kelistrikan getKelistrikan() {
		return kelistrikan;
	}

	public void setKelistrikan(Kelistrikan kelistrikan) {
		this.kelistrikan = kelistrikan;
	}

	public Air getAir() {
		return air;
	}

	public void setAir(Air air) {
		this.air = air;
	}

}
