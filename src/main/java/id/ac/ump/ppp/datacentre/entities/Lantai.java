package id.ac.ump.ppp.datacentre.entities;

import id.ac.ump.ppp.datacentre.entities.enumeration.Kondisi;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "LANTAI")
public class Lantai {

	@Id
	@GeneratedValue
	private Integer id;

	private Double keramikPanjang;

	private String keramikBahan;

	private Kondisi keramikKondisi;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getKeramikPanjang() {
		return keramikPanjang;
	}

	public void setKeramikPanjang(Double keramikPanjang) {
		this.keramikPanjang = keramikPanjang;
	}

	public String getKeramikBahan() {
		return keramikBahan;
	}

	public void setKeramikBahan(String keramikBahan) {
		this.keramikBahan = keramikBahan;
	}

	public Kondisi getKeramikKondisi() {
		return keramikKondisi;
	}

	public void setKeramikKondisi(Kondisi keramikKondisi) {
		this.keramikKondisi = keramikKondisi;
	}
}
