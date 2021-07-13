package lzy.test.jsp;

import java.sql.Connection;
import java.sql.SQLException;

public class TestUserDao extends DbConnection{
	
	public Boolean check(JspUser jspUser) {
		String sql = "select * from jspuser where username=? and email=? and password=?";
		Connection connection = Conn();
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(2, jspUser.getEmail());
			ps.setString(3, jspUser.getPassword());
			ps.setString(1, jspUser.getUsername());
			rs = ps.executeQuery();
			System.out.println(jspUser.getEmail()+jspUser.getPassword()+jspUser.getUsername());
			if(rs.next()) {
				System.out.println("已有账户");
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("没有账户");
		return true;
	}
	
	public String setin(JspUser jspUser) {
		String sql = "insert into jspuser (username,email,password) values(?,?,?)";
		Connection connection = Conn();
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, jspUser.getUsername());
			ps.setString(2, jspUser.getEmail());
			ps.setString(3, jspUser.getPassword());
			rstnumber = ps.executeUpdate();
			System.out.println(String.valueOf(rstnumber));
			if (rstnumber == 1) {
				return "注册成功";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "注册失败";
	}
}
