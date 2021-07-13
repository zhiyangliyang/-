package lzy.test.jsp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbConnection {

	static String dri = "com.mysql.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3305/jsptest?useSSL=false";
	static String name = "root";
	static String pwd = "root";

	static  Connection connection = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public Connection getCon() {
		try {
			Class.forName(dri);
			connection = DriverManager.getConnection(url, name, pwd);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return connection;
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (connection != null) {
				connection.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
