package mobilemart.model;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Role {
	@Id
	private String username;
	private String rolename;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRolename() {
		return rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
}
