package id.ac.ump.ppp.datacentre.entities;

import id.ac.ump.ppp.datacentre.entities.enumeration.Kondisi;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Struktur {

	@Id
	@GeneratedValue
	private Integer id;

	private Integer kolomJumlah;

	private String kolomBahan;

	private Kondisi kolomKondisi;

	private Integer ringBalokJumlah;

	private String ringBalokBahan;

	private Kondisi ringBalokKondisi;

	private Integer balokJumlah;

	private String balokBahan;

	private Kondisi balokKondisi;

	private Double pelatLantaiPanjang;

	private String pelatLantaiBahan;

	private Kondisi pelatLantaiKondisi;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getKolomJumlah() {
		return kolomJumlah;
	}

	public void setKolomJumlah(Integer kolomJumlah) {
		this.kolomJumlah = kolomJumlah;
	}

	public String getKolomBahan() {
		return kolomBahan;
	}

	public void setKolomBahan(String kolomBahan) {
		this.kolomBahan = kolomBahan;
	}

	public Kondisi getKolomKondisi() {
		return kolomKondisi;
	}

	public void setKolomKondisi(Kondisi kolomKondisi) {
		this.kolomKondisi = kolomKondisi;
	}

	public Integer getRingBalokJumlah() {
		return ringBalokJumlah;
	}

	public void setRingBalokJumlah(Integer ringBalokJumlah) {
		this.ringBalokJumlah = ringBalokJumlah;
	}

	public String getRingBalokBahan() {
		return ringBalokBahan;
	}

	public void setRingBalokBahan(String ringBalokBahan) {
		this.ringBalokBahan = ringBalokBahan;
	}

	public Kondisi getRingBalokKondisi() {
		return ringBalokKondisi;
	}

	public void setRingBalokKondisi(Kondisi ringBalokKondisi) {
		this.ringBalokKondisi = ringBalokKondisi;
	}

	public Integer getBalokJumlah() {
		return balokJumlah;
	}

	public void setBalokJumlah(Integer balokJumlah) {
		this.balokJumlah = balokJumlah;
	}

	public String getBalokBahan() {
		return balokBahan;
	}

	public void setBalokBahan(String balokBahan) {
		this.balokBahan = balokBahan;
	}

	public Kondisi getBalokKondisi() {
		return balokKondisi;
	}

	public void setBalokKondisi(Kondisi balokKondisi) {
		this.balokKondisi = balokKondisi;
	}

	public Double getPelatLantaiPanjang() {
		return pelatLantaiPanjang;
	}

	public void setPelatLantaiPanjang(Double pelatLantaiPanjang) {
		this.pelatLantaiPanjang = pelatLantaiPanjang;
	}

	public String getPelatLantaiBahan() {
		return pelatLantaiBahan;
	}

	public void setPelatLantaiBahan(String pelatLantaiBahan) {
		this.pelatLantaiBahan = pelatLantaiBahan;
	}

	public Kondisi getPelatLantaiKondisi() {
		return pelatLantaiKondisi;
	}

	public void setPelatLantaiKondisi(Kondisi pelatLantaiKondisi) {
		this.pelatLantaiKondisi = pelatLantaiKondisi;
	}

}
