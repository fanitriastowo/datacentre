package id.ac.ump.ppp.datacentre.entities;

import id.ac.ump.ppp.datacentre.entities.kondisi.Kondisi;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "AIR")
public class Air {

	@Id
	@GeneratedValue
	private Integer id;

	private Double instalasiPipaAirBersihPanjang;

	private String instalasiPipaAirBersihBahan;

	private Kondisi instalasiPipaAirBersihKondisi;

	private Double tankiAirVolume;

	private Kondisi tankiAirKondisi;

	private Integer pompaJumlah;

	private Kondisi pompaKondisi;

	private Integer kranJumlah;

	private String kranMerek;

	private Kondisi kranKondisi;

	private Integer groundtankJumlah;

	private String groundtankMerek;

	private Kondisi groundtankKondisi;

	private Double instalasiAirKotorPanjang;

	private String instalasiAirKotorBahan;

	private Kondisi instalasiAirKotorKondisi;

	private Integer drainaseJumlah;

	private String drainaseBahan;

	private Kondisi drainaseKondisi;

	private Integer waterClosedJumlah;

	private String waterClosedMerek;

	private Kondisi waterClosedKondisi;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getInstalasiPipaAirBersihPanjang() {
		return instalasiPipaAirBersihPanjang;
	}

	public void setInstalasiPipaAirBersihPanjang(Double instalasiPipaAirBersihPanjang) {
		this.instalasiPipaAirBersihPanjang = instalasiPipaAirBersihPanjang;
	}

	public String getInstalasiPipaAirBersihBahan() {
		return instalasiPipaAirBersihBahan;
	}

	public void setInstalasiPipaAirBersihBahan(String instalasiPipaAirBersihBahan) {
		this.instalasiPipaAirBersihBahan = instalasiPipaAirBersihBahan;
	}

	public Kondisi getInstalasiPipaAirBersihKondisi() {
		return instalasiPipaAirBersihKondisi;
	}

	public void setInstalasiPipaAirBersihKondisi(Kondisi instalasiPipaAirBersihKondisi) {
		this.instalasiPipaAirBersihKondisi = instalasiPipaAirBersihKondisi;
	}

	public Double getTankiAirVolume() {
		return tankiAirVolume;
	}

	public void setTankiAirVolume(Double tankiAirVolume) {
		this.tankiAirVolume = tankiAirVolume;
	}

	public Kondisi getTankiAirKondisi() {
		return tankiAirKondisi;
	}

	public void setTankiAirKondisi(Kondisi tankiAirKondisi) {
		this.tankiAirKondisi = tankiAirKondisi;
	}

	public Integer getPompaJumlah() {
		return pompaJumlah;
	}

	public void setPompaJumlah(Integer pompaJumlah) {
		this.pompaJumlah = pompaJumlah;
	}

	public Kondisi getPompaKondisi() {
		return pompaKondisi;
	}

	public void setPompaKondisi(Kondisi pompaKondisi) {
		this.pompaKondisi = pompaKondisi;
	}

	public Integer getKranJumlah() {
		return kranJumlah;
	}

	public void setKranJumlah(Integer kranJumlah) {
		this.kranJumlah = kranJumlah;
	}

	public String getKranMerek() {
		return kranMerek;
	}

	public void setKranMerek(String kranMerek) {
		this.kranMerek = kranMerek;
	}

	public Kondisi getKranKondisi() {
		return kranKondisi;
	}

	public void setKranKondisi(Kondisi kranKondisi) {
		this.kranKondisi = kranKondisi;
	}

	public Integer getGroundtankJumlah() {
		return groundtankJumlah;
	}

	public void setGroundtankJumlah(Integer groundtankJumlah) {
		this.groundtankJumlah = groundtankJumlah;
	}

	public String getGroundtankMerek() {
		return groundtankMerek;
	}

	public void setGroundtankMerek(String groundtankMerek) {
		this.groundtankMerek = groundtankMerek;
	}

	public Kondisi getGroundtankKondisi() {
		return groundtankKondisi;
	}

	public void setGroundtankKondisi(Kondisi groundtankKondisi) {
		this.groundtankKondisi = groundtankKondisi;
	}

	public Double getInstalasiAirKotorPanjang() {
		return instalasiAirKotorPanjang;
	}

	public void setInstalasiAirKotorPanjang(Double instalasiAirKotorPanjang) {
		this.instalasiAirKotorPanjang = instalasiAirKotorPanjang;
	}

	public String getInstalasiAirKotorBahan() {
		return instalasiAirKotorBahan;
	}

	public void setInstalasiAirKotorBahan(String instalasiAirKotorBahan) {
		this.instalasiAirKotorBahan = instalasiAirKotorBahan;
	}

	public Kondisi getInstalasiAirKotorKondisi() {
		return instalasiAirKotorKondisi;
	}

	public void setInstalasiAirKotorKondisi(Kondisi instalasiAirKotorKondisi) {
		this.instalasiAirKotorKondisi = instalasiAirKotorKondisi;
	}

	public Integer getDrainaseJumlah() {
		return drainaseJumlah;
	}

	public void setDrainaseJumlah(Integer drainaseJumlah) {
		this.drainaseJumlah = drainaseJumlah;
	}

	public String getDrainaseBahan() {
		return drainaseBahan;
	}

	public void setDrainaseBahan(String drainaseBahan) {
		this.drainaseBahan = drainaseBahan;
	}

	public Kondisi getDrainaseKondisi() {
		return drainaseKondisi;
	}

	public void setDrainaseKondisi(Kondisi drainaseKondisi) {
		this.drainaseKondisi = drainaseKondisi;
	}

	public Integer getWaterClosedJumlah() {
		return waterClosedJumlah;
	}

	public void setWaterClosedJumlah(Integer waterClosedJumlah) {
		this.waterClosedJumlah = waterClosedJumlah;
	}

	public String getWaterClosedMerek() {
		return waterClosedMerek;
	}

	public void setWaterClosedMerek(String waterClosedMerek) {
		this.waterClosedMerek = waterClosedMerek;
	}

	public Kondisi getWaterClosedKondisi() {
		return waterClosedKondisi;
	}

	public void setWaterClosedKondisi(Kondisi waterClosedKondisi) {
		this.waterClosedKondisi = waterClosedKondisi;
	}
}
