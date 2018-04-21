package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;


public class DBConnection {
	

Connection connection=null;
ResourceBundle db_parm;
	
	public static Connection getConnection() throws SQLException {
		String dbUrl= System.getenv("JDBC_DATABASE_URL");
		return DriverManager.getConnection(dbUrl);
		
		
		
		/*Connection c = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			c = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/HealthPro", "root", "root");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return c;*/
	}
}