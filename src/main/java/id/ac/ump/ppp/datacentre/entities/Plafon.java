package id.ac.ump.ppp.datacentre.entities;

import id.ac.ump.ppp.datacentre.entities.enumeration.Kondisi;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Plafon {

	@Id
	@GeneratedValue
	private Integer id;

	private Double lisplangPanjang;

	private String lisplangBahan;

	private Kondisi lisplangKondisi;

	private Double rangkaPlafonPanjang;

	private String rangkaPlafonBahan;

	private Kondisi rangkaPlafonKondisi;

	private Double plafonPanjang;

	private String plafonBahan;

	private Kondisi plafonKondisi;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getLisplangPanjang() {
		return lisplangPanjang;
	}

	public void setLisplangPanjang(Double lisplangPanjang) {
		this.lisplangPanjang = lisplangPanjang;
	}

	public String getLisplangBahan() {
		return lisplangBahan;
	}

	public void setLisplangBahan(String lisplangBahan) {
		this.lisplangBahan = lisplangBahan;
	}

	public Kondisi getLisplangKondisi() {
		return lisplangKondisi;
	}

	public void setLisplangKondisi(Kondisi lisplangKondisi) {
		this.lisplangKondisi = lisplangKondisi;
	}

	public Double getRangkaPlafonPanjang() {
		return rangkaPlafonPanjang;
	}

	public void setRangkaPlafonPanjang(Double rangkaPlafonPanjang) {
		this.rangkaPlafonPanjang = rangkaPlafonPanjang;
	}

	public String getRangkaPlafonBahan() {
		return rangkaPlafonBahan;
	}

	public void setRangkaPlafonBahan(String rangkaPlafonBahan) {
		this.rangkaPlafonBahan = rangkaPlafonBahan;
	}

	public Kondisi getRangkaPlafonKondisi() {
		return rangkaPlafonKondisi;
	}

	public void setRangkaPlafonKondisi(Kondisi rangkaPlafonKondisi) {
		this.rangkaPlafonKondisi = rangkaPlafonKondisi;
	}

	public Double getPlafonPanjang() {
		return plafonPanjang;
	}

	public void setPlafonPanjang(Double plafonPanjang) {
		this.plafonPanjang = plafonPanjang;
	}

	public String getPlafonBahan() {
		return plafonBahan;
	}

	public void setPlafonBahan(String plafonBahan) {
		this.plafonBahan = plafonBahan;
	}

	public Kondisi getPlafonKondisi() {
		return plafonKondisi;
	}

	public void setPlafonKondisi(Kondisi plafonKondisi) {
		this.plafonKondisi = plafonKondisi;
	}

}
