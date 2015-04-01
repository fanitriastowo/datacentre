package id.ac.ump.ppp.datacentre.entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

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
	@Size(min = 2, message = "Minimal 2 Karakter")
	@Pattern(regexp = "(^$|[0-9]{10})")
	private String phone;

	private boolean enabled;

	@ManyToMany
	@JoinTable
	private List<Role> roles;

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

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
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

	public void update(Integer id, String username, String password, String phone, boolean enabled, List<Role> roles) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.enabled = enabled;
		this.roles = roles;
	}

}
