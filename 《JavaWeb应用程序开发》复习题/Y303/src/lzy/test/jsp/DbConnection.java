package lzy.test.jsp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbConnection {
	
	String dri = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3305/jsptest?useSSL=false";
	String name = "root";
	String pwd = "root";
	
	Connection connection = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	int rstnumber ;
	
	public Connection Conn() {
		try {
			Class.forName(dri);
			connection = DriverManager.getConnection(url, name, pwd);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	public void close() {
		try {
			if(rs!=null) {
				rs.close();
			}
			if (ps!= null) {
				ps.close();
			}
			if (connection!= null) {
				connection.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
