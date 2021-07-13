package lzy.test.jsp;

import java.sql.SQLException;

public class JspUser {

	@Override
	public String toString() {
		return "JspUser [id=" + id + ", username=" + username + ", email=" + email + ", password=" + password + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	int id;
	String username;
	String email;
	String password;

}
