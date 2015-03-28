package id.ac.ump.ppp.datacentre.entities;

import id.ac.ump.ppp.datacentre.entities.kondisi.Kondisi;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Pondasi  {

	@Id
	@GeneratedValue
	private Integer id;

	private Double sloofPanjang;

	private String sloofBahan;

	private Kondisi sloofKondisi;

	public Integer getId(){
		return id;
	}

	public void setId(Integer id){
		this.id = id;
	}

	public Double getSloofPanjang(){
		return sloofPanjang;
	}

	public void setSloofPanjang(Double sloofPanjang){
		this.sloofPanjang = sloofPanjang;
	}

	public String getSloofBahan(){
		return sloofBahan;
	}

	public void setSloofBahan(String sloofBahan){
		this.sloofBahan = sloofBahan;
	}

	public Kondisi getSloofKondisi(){
		return sloofKondisi;
	}

	public void setSloofKondisi(Kondisi sloofKondisi){
		this.sloofKondisi = sloofKondisi;
	}

}