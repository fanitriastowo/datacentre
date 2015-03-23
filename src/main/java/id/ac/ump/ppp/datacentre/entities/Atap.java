package id.ac.ump.ppp.datacentre.entities;

import id.ac.ump.ppp.datacentre.entities.kondisi.Kondisi;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ATAP")
public class Atap {

	@Id
	@GeneratedValue
	private Integer id;

	private Double usukPanjang;

	private String usukBahan;

	private Kondisi usukKondisi;

	private Double gordingPanjang;

	private String gordingBahan;

	private Kondisi gordingKondisi;

	private Double rengPanjang;

	private String rengBahan;

	private Kondisi rengKondisi;

	private Double kudaKudaPanjang;

	private String kudaKudaBahan;

	private Kondisi kudaKudaKondisi;

	private Double ikatanAnginPanjang;

	private String ikatanAnginBahan;

	private Kondisi ikatanAnginKondisi;

	private Double gentengPanjang;

	private String gentengBahan;

	private Kondisi gentengKondisi;

	private Double bumbunganPanjang;

	private String bumbunganBahan;

	private Kondisi bumbunganKondisi;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getUsukPanjang() {
		return usukPanjang;
	}

	public void setUsukPanjang(Double usukPanjang) {
		this.usukPanjang = usukPanjang;
	}

	public String getUsukBahan() {
		return usukBahan;
	}

	public void setUsukBahan(String usukBahan) {
		this.usukBahan = usukBahan;
	}

	public Kondisi getUsukKondisi() {
		return usukKondisi;
	}

	public void setUsukKondisi(Kondisi usukKondisi) {
		this.usukKondisi = usukKondisi;
	}

	public Double getGordingPanjang() {
		return gordingPanjang;
	}

	public void setGordingPanjang(Double gordingPanjang) {
		this.gordingPanjang = gordingPanjang;
	}

	public String getGordingBahan() {
		return gordingBahan;
	}

	public void setGordingBahan(String gordingBahan) {
		this.gordingBahan = gordingBahan;
	}

	public Kondisi getGordingKondisi() {
		return gordingKondisi;
	}

	public void setGordingKondisi(Kondisi gordingKondisi) {
		this.gordingKondisi = gordingKondisi;
	}

	public Double getRengPanjang() {
		return rengPanjang;
	}

	public void setRengPanjang(Double rengPanjang) {
		this.rengPanjang = rengPanjang;
	}

	public String getRengBahan() {
		return rengBahan;
	}

	public void setRengBahan(String rengBahan) {
		this.rengBahan = rengBahan;
	}

	public Kondisi getRengKondisi() {
		return rengKondisi;
	}

	public void setRengKondisi(Kondisi rengKondisi) {
		this.rengKondisi = rengKondisi;
	}

	public Double getKudaKudaPanjang() {
		return kudaKudaPanjang;
	}

	public void setKudaKudaPanjang(Double kudaKudaPanjang) {
		this.kudaKudaPanjang = kudaKudaPanjang;
	}

	public String getKudaKudaBahan() {
		return kudaKudaBahan;
	}

	public void setKudaKudaBahan(String kudaKudaBahan) {
		this.kudaKudaBahan = kudaKudaBahan;
	}

	public Kondisi getKudaKudaKondisi() {
		return kudaKudaKondisi;
	}

	public void setKudaKudaKondisi(Kondisi kudaKudaKondisi) {
		this.kudaKudaKondisi = kudaKudaKondisi;
	}

	public Double getIkatanAnginPanjang() {
		return ikatanAnginPanjang;
	}

	public void setIkatanAnginPanjang(Double ikatanAnginPanjang) {
		this.ikatanAnginPanjang = ikatanAnginPanjang;
	}

	public String getIkatanAnginBahan() {
		return ikatanAnginBahan;
	}

	public void setIkatanAnginBahan(String ikatanAnginBahan) {
		this.ikatanAnginBahan = ikatanAnginBahan;
	}

	public Kondisi getIkatanAnginKondisi() {
		return ikatanAnginKondisi;
	}

	public void setIkatanAnginKondisi(Kondisi ikatanAnginKondisi) {
		this.ikatanAnginKondisi = ikatanAnginKondisi;
	}

	public Double getGentengPanjang() {
		return gentengPanjang;
	}

	public void setGentengPanjang(Double gentengPanjang) {
		this.gentengPanjang = gentengPanjang;
	}

	public String getGentengBahan() {
		return gentengBahan;
	}

	public void setGentengBahan(String gentengBahan) {
		this.gentengBahan = gentengBahan;
	}

	public Kondisi getGentengKondisi() {
		return gentengKondisi;
	}

	public void setGentengKondisi(Kondisi gentengKondisi) {
		this.gentengKondisi = gentengKondisi;
	}

	public Double getBumbunganPanjang() {
		return bumbunganPanjang;
	}

	public void setBumbunganPanjang(Double bumbunganPanjang) {
		this.bumbunganPanjang = bumbunganPanjang;
	}

	public String getBumbunganBahan() {
		return bumbunganBahan;
	}

	public void setBumbunganBahan(String bumbunganBahan) {
		this.bumbunganBahan = bumbunganBahan;
	}

	public Kondisi getBumbunganKondisi() {
		return bumbunganKondisi;
	}

	public void setBumbunganKondisi(Kondisi bumbunganKondisi) {
		this.bumbunganKondisi = bumbunganKondisi;
	}

}
