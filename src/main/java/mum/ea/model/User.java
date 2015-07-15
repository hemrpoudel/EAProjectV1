package mum.ea.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;



@Entity(name="users")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@NotEmpty(message="can't be empty")
	private String username;
	@Email
	private String emailAddress;
//	@Size(min=4,max=8)
	private String password;
	@Enumerated(EnumType.STRING)
	private Role role = Role.ROLE_USER;
	
	private boolean enabled=true;
	
	public User() {

	}
	
	public User(String username, String emailAddress, String password) {
		this.username = username;
		this.emailAddress = emailAddress;
		this.password = password;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getEmailAddress() {
		return emailAddress;
	}


	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
	public Role getRole() {
		return role;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
	public enum Role{
		ROLE_USER, ROLE_ADMIN 
	}

	
	

}
