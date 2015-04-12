package id.ac.ump.ppp.datacentre.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;

@Entity
@Table(name = "USER")
public class User {

	@Id
	@GeneratedValue
	private Integer id;

	@NotBlank(message = "Username Harap Diisi")
	@Size(min = 2, message = "Minimal 2 Karakter")
	private String username;

	@NotBlank(message = "Password Harap Diisi")
	private String password;

	@NotBlank(message = "Telephone Harap Diisi")
	@Size(min = 2, max = 15, message = "Minimal 2 Karakter dan Maksimal 15 Karakter")
	@NumberFormat(style = Style.NUMBER)
	private String phone;

	private boolean enabled;

	@ManyToOne
	@JoinColumn(name = "role_id")
	private Role role;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public void update(Integer id, String username, String password, String phone, boolean enabled, Role role) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.enabled = enabled;
		this.role = role;
	}

}
