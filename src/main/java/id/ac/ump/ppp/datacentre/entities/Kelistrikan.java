package id.ac.ump.ppp.datacentre.entities;

import id.ac.ump.ppp.datacentre.entities.kondisi.Kondisi;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "KELISTRIKAN")
public class Kelistrikan {

	@Id
	@GeneratedValue
	private Integer id;

	private Double instalasiKabelPanjang;

	private String instalasiKabelJenis;

	private Kondisi instalasiKabelKondisi;

	private Integer lampuJumlah;

	private Integer lampuJumlahBaik;

	private Integer lampuJumlahRusak;

	private Integer stopKontakJumlah;

	private Integer stopKontakJumlahBaik;

	private Integer stopKontakJumlahRusak;

	private Integer saklarJumlah;

	private Integer saklarJumlahBaik;

	private Integer saklarJumlahRusak;

	private Kondisi instalasiListrikKondisi;

	private Double instalasiKabelLANPanjang;

	private Kondisi instalasiKabelLANKondisi;

	private Integer switchJumlah;

	private Integer switchJumlahBaik;

	private Integer switchJumlahRusak;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getInstalasiKabelPanjang() {
		return instalasiKabelPanjang;
	}

	public void setInstalasiKabelPanjang(Double instalasiKabelPanjang) {
		this.instalasiKabelPanjang = instalasiKabelPanjang;
	}

	public String getInstalasiKabelJenis() {
		return instalasiKabelJenis;
	}

	public void setInstalasiKabelJenis(String instalasiKabelJenis) {
		this.instalasiKabelJenis = instalasiKabelJenis;
	}

	public Kondisi getInstalasiKabelKondisi() {
		return instalasiKabelKondisi;
	}

	public void setInstalasiKabelKondisi(Kondisi instalasiKabelKondisi) {
		this.instalasiKabelKondisi = instalasiKabelKondisi;
	}

	public Integer getLampuJumlah() {
		return lampuJumlah;
	}

	public void setLampuJumlah(Integer lampuJumlah) {
		this.lampuJumlah = lampuJumlah;
	}

	public Integer getLampuJumlahBaik() {
		return lampuJumlahBaik;
	}

	public void setLampuJumlahBaik(Integer lampuJumlahBaik) {
		this.lampuJumlahBaik = lampuJumlahBaik;
	}

	public Integer getLampuJumlahRusak() {
		return lampuJumlahRusak;
	}

	public void setLampuJumlahRusak(Integer lampuJumlahRusak) {
		this.lampuJumlahRusak = lampuJumlahRusak;
	}

	public Integer getStopKontakJumlah() {
		return stopKontakJumlah;
	}

	public void setStopKontakJumlah(Integer stopKontakJumlah) {
		this.stopKontakJumlah = stopKontakJumlah;
	}

	public Integer getStopKontakJumlahBaik() {
		return stopKontakJumlahBaik;
	}

	public void setStopKontakJumlahBaik(Integer stopKontakJumlahBaik) {
		this.stopKontakJumlahBaik = stopKontakJumlahBaik;
	}

	public Integer getStopKontakJumlahRusak() {
		return stopKontakJumlahRusak;
	}

	public void setStopKontakJumlahRusak(Integer stopKontakJumlahRusak) {
		this.stopKontakJumlahRusak = stopKontakJumlahRusak;
	}

	public Integer getSaklarJumlah() {
		return saklarJumlah;
	}

	public void setSaklarJumlah(Integer saklarJumlah) {
		this.saklarJumlah = saklarJumlah;
	}

	public Integer getSaklarJumlahBaik() {
		return saklarJumlahBaik;
	}

	public void setSaklarJumlahBaik(Integer saklarJumlahBaik) {
		this.saklarJumlahBaik = saklarJumlahBaik;
	}

	public Integer getSaklarJumlahRusak() {
		return saklarJumlahRusak;
	}

	public void setSaklarJumlahRusak(Integer saklarJumlahRusak) {
		this.saklarJumlahRusak = saklarJumlahRusak;
	}

	public Kondisi getInstalasiListrikKondisi() {
		return instalasiListrikKondisi;
	}

	public void setInstalasiListrikKondisi(Kondisi instalasiListrikKondisi) {
		this.instalasiListrikKondisi = instalasiListrikKondisi;
	}

	public Double getInstalasiKabelLANPanjang() {
		return instalasiKabelLANPanjang;
	}

	public void setInstalasiKabelLANPanjang(Double instalasiKabelLANPanjang) {
		this.instalasiKabelLANPanjang = instalasiKabelLANPanjang;
	}

	public Kondisi getInstalasiKabelLANKondisi() {
		return instalasiKabelLANKondisi;
	}

	public void setInstalasiKabelLANKondisi(Kondisi instalasiKabelLANKondisi) {
		this.instalasiKabelLANKondisi = instalasiKabelLANKondisi;
	}

	public Integer getSwitchJumlah() {
		return switchJumlah;
	}

	public void setSwitchJumlah(Integer switchJumlah) {
		this.switchJumlah = switchJumlah;
	}

	public Integer getSwitchJumlahBaik() {
		return switchJumlahBaik;
	}

	public void setSwitchJumlahBaik(Integer switchJumlahBaik) {
		this.switchJumlahBaik = switchJumlahBaik;
	}

	public Integer getSwitchJumlahRusak() {
		return switchJumlahRusak;
	}

	public void setSwitchJumlahRusak(Integer switchJumlahRusak) {
		this.switchJumlahRusak = switchJumlahRusak;
	}
}
