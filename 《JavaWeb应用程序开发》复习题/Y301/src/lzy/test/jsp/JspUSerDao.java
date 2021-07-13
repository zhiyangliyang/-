package lzy.test.jsp;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;


public class JspUSerDao extends DBconnection {
	
	public static void main(String[] args) {
		JspUser user =new JspUser();
		user.setUsername("123456");
		user.setPassword("123456");
		new JspUSerDao().login(user);
	}
	
	public Boolean login(JspUser jspuser) {
		String sql = "select * from jspuser where username=? and password=?";

		Connection conn = getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, jspuser.getUsername());
			ps.setString(2, jspuser.getPassword());
			rs = ps.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return false;
	}
}
