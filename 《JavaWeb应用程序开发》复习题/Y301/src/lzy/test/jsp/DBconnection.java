package lzy.test.jsp;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class DBconnection {
	
	static Connection conn = null;
	// 4 3 2 1
	static String dri = "com.mysql.cj.jdbc.Driver";
	static String url = "jdbc:mysql://localhost:3306/jsptest";
	static String name = "root";
	static String pwd = "root";
	
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public Connection getConn() {
		try {
			Class.forName(dri);
			conn = DriverManager.getConnection(url, name, pwd);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
  