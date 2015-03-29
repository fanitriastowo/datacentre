package id.ac.ump.ppp.datacentre.entities;

import id.ac.ump.ppp.datacentre.entities.kondisi.Kondisi;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RUANGAN")
public class Ruangan {

	@Id
	@GeneratedValue
	private Integer id;

	private Double dindingRuangPanjang;

	private String dindingRuangBahan;

	private Kondisi dindingRuangKondisi;

	private Double catDindingPanjang;

	private String catDindingJenis;

	private Kondisi catDindingKondisi;

	private Integer kusenPintuJumlah;

	private String kusenPintuBahan;

	private Kondisi kusenPintuKondisi;

	private Integer daunPintuJumlah;

	private String daunPintuBahan;

	private Kondisi daunPintuKondisi;

	private Integer kunciHendelJumlah;

	private String kunciHendelBahan;

	private Kondisi kunciHendelKondisi;

	private Double catPintuPanjang;

	private String catPintuJenis;

	private Kondisi catPintuKondisi;

	private Integer kusenJendelaJumlah;

	private String kusenJendelaBahan;

	private Kondisi kusenJendelaKondisi;

	private Integer daunJendelaJumlah;

	private String daunJendelaBahan;

	private Kondisi daunJendelaKondisi;

	private Double kacaPanjang;

	private Kondisi kacaKondisi;

	private Integer slotJumlah;

	private String slotMerek;

	private Kondisi slotKondisi;

	private Double catJendelaPanjang;

	private String catJendelaJenis;

	private Kondisi catJendelaKondisi;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getDindingRuangPanjang() {
		return dindingRuangPanjang;
	}

	public void setDindingRuangPanjang(Double dindingRuangPanjang) {
		this.dindingRuangPanjang = dindingRuangPanjang;
	}

	public String getDindingRuangBahan() {
		return dindingRuangBahan;
	}

	public void setDindingRuangBahan(String dindingRuangBahan) {
		this.dindingRuangBahan = dindingRuangBahan;
	}

	public Kondisi getDindingRuangKondisi() {
		return dindingRuangKondisi;
	}

	public void setDindingRuangKondisi(Kondisi dindingRuangKondisi) {
		this.dindingRuangKondisi = dindingRuangKondisi;
	}

	public Double getCatDindingPanjang() {
		return catDindingPanjang;
	}

	public void setCatDindingPanjang(Double catDindingPanjang) {
		this.catDindingPanjang = catDindingPanjang;
	}

	public String getCatDindingJenis() {
		return catDindingJenis;
	}

	public void setCatDindingJenis(String catDindingJenis) {
		this.catDindingJenis = catDindingJenis;
	}

	public Kondisi getCatDindingKondisi() {
		return catDindingKondisi;
	}

	public void setCatDindingKondisi(Kondisi catDindingKondisi) {
		this.catDindingKondisi = catDindingKondisi;
	}

	public Integer getKusenPintuJumlah() {
		return kusenPintuJumlah;
	}

	public void setKusenPintuJumlah(Integer kusenPintuJumlah) {
		this.kusenPintuJumlah = kusenPintuJumlah;
	}

	public String getKusenPintuBahan() {
		return kusenPintuBahan;
	}

	public void setKusenPintuBahan(String kusenPintuBahan) {
		this.kusenPintuBahan = kusenPintuBahan;
	}

	public Kondisi getKusenPintuKondisi() {
		return kusenPintuKondisi;
	}

	public void setKusenPintuKondisi(Kondisi kusenPintuKondisi) {
		this.kusenPintuKondisi = kusenPintuKondisi;
	}

	public Integer getDaunPintuJumlah() {
		return daunPintuJumlah;
	}

	public void setDaunPintuJumlah(Integer daunPintuJumlah) {
		this.daunPintuJumlah = daunPintuJumlah;
	}

	public String getDaunPintuBahan() {
		return daunPintuBahan;
	}

	public void setDaunPintuBahan(String daunPintuBahan) {
		this.daunPintuBahan = daunPintuBahan;
	}

	public Kondisi getDaunPintuKondisi() {
		return daunPintuKondisi;
	}

	public void setDaunPintuKondisi(Kondisi daunPintuKondisi) {
		this.daunPintuKondisi = daunPintuKondisi;
	}

	public Integer getKunciHendelJumlah() {
		return kunciHendelJumlah;
	}

	public void setKunciHendelJumlah(Integer kunciHendelJumlah) {
		this.kunciHendelJumlah = kunciHendelJumlah;
	}

	public String getKunciHendelBahan() {
		return kunciHendelBahan;
	}

	public void setKunciHendelBahan(String kunciHendelBahan) {
		this.kunciHendelBahan = kunciHendelBahan;
	}

	public Kondisi getKunciHendelKondisi() {
		return kunciHendelKondisi;
	}

	public void setKunciHendelKondisi(Kondisi kunciHendelKondisi) {
		this.kunciHendelKondisi = kunciHendelKondisi;
	}

	public Double getCatPintuPanjang() {
		return catPintuPanjang;
	}

	public void setCatPintuPanjang(Double catPintuPanjang) {
		this.catPintuPanjang = catPintuPanjang;
	}

	public String getCatPintuJenis() {
		return catPintuJenis;
	}

	public void setCatPintuJenis(String catPintuJenis) {
		this.catPintuJenis = catPintuJenis;
	}

	public Kondisi getCatPintuKondisi() {
		return catPintuKondisi;
	}

	public void setCatPintuKondisi(Kondisi catPintuKondisi) {
		this.catPintuKondisi = catPintuKondisi;
	}

	public Integer getKusenJendelaJumlah() {
		return kusenJendelaJumlah;
	}

	public void setKusenJendelaJumlah(Integer kusenJendelaJumlah) {
		this.kusenJendelaJumlah = kusenJendelaJumlah;
	}

	public String getKusenJendelaBahan() {
		return kusenJendelaBahan;
	}

	public void setKusenJendelaBahan(String kusenJendelaBahan) {
		this.kusenJendelaBahan = kusenJendelaBahan;
	}

	public Kondisi getKusenJendelaKondisi() {
		return kusenJendelaKondisi;
	}

	public void setKusenJendelaKondisi(Kondisi kusenJendelaKondisi) {
		this.kusenJendelaKondisi = kusenJendelaKondisi;
	}

	public Integer getDaunJendelaJumlah() {
		return daunJendelaJumlah;
	}

	public void setDaunJendelaJumlah(Integer daunJendelaJumlah) {
		this.daunJendelaJumlah = daunJendelaJumlah;
	}

	public String getDaunJendelaBahan() {
		return daunJendelaBahan;
	}

	public void setDaunJendelaBahan(String daunJendelaBahan) {
		this.daunJendelaBahan = daunJendelaBahan;
	}

	public Kondisi getDaunJendelaKondisi() {
		return daunJendelaKondisi;
	}

	public void setDaunJendelaKondisi(Kondisi daunJendelaKondisi) {
		this.daunJendelaKondisi = daunJendelaKondisi;
	}

	public Double getKacaPanjang() {
		return kacaPanjang;
	}

	public void setKacaPanjang(Double kacaPanjang) {
		this.kacaPanjang = kacaPanjang;
	}

	public Kondisi getKacaKondisi() {
		return kacaKondisi;
	}

	public void setKacaKondisi(Kondisi kacaKondisi) {
		this.kacaKondisi = kacaKondisi;
	}

	public Integer getSlotJumlah() {
		return slotJumlah;
	}

	public void setSlotJumlah(Integer slotJumlah) {
		this.slotJumlah = slotJumlah;
	}

	public String getSlotMerek() {
		return slotMerek;
	}

	public void setSlotMerek(String slotMerek) {
		this.slotMerek = slotMerek;
	}

	public Kondisi getSlotKondisi() {
		return slotKondisi;
	}

	public void setSlotKondisi(Kondisi slotKondisi) {
		this.slotKondisi = slotKondisi;
	}

	public Double getCatJendelaPanjang() {
		return catJendelaPanjang;
	}

	public void setCatJendelaPanjang(Double catJendelaPanjang) {
		this.catJendelaPanjang = catJendelaPanjang;
	}

	public String getCatJendelaJenis() {
		return catJendelaJenis;
	}

	public void setCatJendelaJenis(String catJendelaJenis) {
		this.catJendelaJenis = catJendelaJenis;
	}

	public Kondisi getCatJendelaKondisi() {
		return catJendelaKondisi;
	}

	public void setCatJendelaKondisi(Kondisi catJendelaKondisi) {
		this.catJendelaKondisi = catJendelaKondisi;
	}

}