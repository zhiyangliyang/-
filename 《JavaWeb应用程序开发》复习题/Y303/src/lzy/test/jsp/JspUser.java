package lzy.test.jsp;

public class JspUser {
	
	@Override
	public String toString() {
		return "JspUser [id=" + id + ", username=" + username + ", Email=" + Email + ", password=" + password + "]";
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
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	int id;
	String username;
	String Email;
	String password;
}
