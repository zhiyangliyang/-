package lzy.test.jsp;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JspUserDao extends DbConnection {

	public static void main(String[] args) {
//		JspUserDao jspUserDao = new JspUserDao();
//		List<JspUser> list = jspUserDao.getAll();
//		if (list!=null) {
//			for (JspUser jspUser : list) {
//				System.out.println(jspUser.toString());
//			}
//		}

	}

	public List<JspUser> getAll() {

		String sql = "select * from jspuser";
		List<JspUser> list = new ArrayList<JspUser>();

		Connection connection = this.getCon();
		try {
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				JspUser jspUser = new JspUser();
				jspUser.setId(rs.getInt(1));
				jspUser.setUsername(rs.getString(2));
				jspUser.setEmail(rs.getString(3));
				jspUser.setPassword(rs.getString(4));
				list.add(jspUser);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		close();
		return list;
	}

	public JspUser selectId(int ID) {
		JspUser jspUser = new JspUser();
		String sql = "select * from jspuser where id=?";
		Connection connection = this.getCon();
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, ID);
			rs = ps.executeQuery();
			if (rs.next()) {
				jspUser.setId(ID);
				jspUser.setUsername(rs.getString(2));
				jspUser.setEmail(rs.getString(3));
				jspUser.setPassword(rs.getString(4));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		close();
		return jspUser;
	}

	public List<JspUser> selectUsername(String key) {
		Connection connection = this.getCon();
		List<JspUser> list = new ArrayList<JspUser>();
		String Key = new StringBuffer().append("%").append(key).append("%").toString();
		String sql = "select * from jspuser where username like ?";
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, Key);
			rs = ps.executeQuery();
			while (rs.next()) {
				JspUser jspUser = new JspUser();
				jspUser.setId(rs.getInt(1));
				jspUser.setUsername(rs.getString(2));
				jspUser.setEmail(rs.getString(3));
				jspUser.setPassword(rs.getString(4));
				list.add(jspUser);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		close();
		return list;
	}
}
