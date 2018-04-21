package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Account;
import bean.Goal;


public class UserDAO {

	static public void addAccount(Account account) throws SQLException{

		Connection con = DBConnection.getConnection();

		try {

			String insert = "INSERT INTO users VALUES(?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement ps = con.prepareStatement(insert);

			ps.setString(1, account.getFirstName());
			ps.setString(2, account.getLastName());
			ps.setString(3, account.getEmail());
			ps.setString(4, account.getDob());
			ps.setString(5, account.getUsername());
			ps.setString(6, account.getPassword());
			ps.setString(7, account.getPhone());
			ps.setString(8, account.getRecoveryEmail());
			ps.setString(9, account.getSecurityQues1());
			ps.setString(10, account.getSecurityQues2());

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static Account doAuthenticate(String username, String password) {

		Account account = getAccount(username);

		if (account.getUsername() != null && password.equals(account.getPassword())) {

			return account;

		} else {
			return null;
		}
		
	}
	
	
	public static Account getAccount(String username) {

		Account account = new Account();
		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT * FROM users WHERE username=?";

			PreparedStatement ps = connection.prepareStatement(select);
			ps.setString(1, username);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				account.setUsername(rs.getString("username"));
				account.setDob(rs.getString("dob"));
				account.setEmail(rs.getString("email"));
				account.setFirstName(rs.getString("fName"));
				account.setLastName(rs.getString("lName"));
				account.setPhone(rs.getString("phone"));
				account.setRecoveryEmail(rs.getString("recoveryEmail"));
				account.setPassword(rs.getString("password"));
				account.setSecurityQues1(rs.getString("secQ1"));
				account.setSecurityQues2(rs.getString("secQ2"));
				connection.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return account;
	}

	public static boolean checkAlreadyExist(String username) {
		
		Account account = getAccount(username);
		if (account.getUsername() != null)
			return true;
		else
		return false;
	}
	
	public static boolean checkDetailsForForgotPassword(Account account) {

			boolean val=false;
		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT * FROM users WHERE email=? AND dob=? AND username=? AND phone=? AND recoveryEmail=? AND secQ1=? AND secQ2=?";

			PreparedStatement ps = connection.prepareStatement(select);
			ps.setString(1, account.getEmail());
			ps.setString(2, account.getDob());
			ps.setString(3, account.getUsername());
			ps.setString(4, account.getPhone());
			ps.setString(5, account.getRecoveryEmail());
			ps.setString(6, account.getSecurityQues1());
			ps.setString(7, account.getSecurityQues2());

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
			
				
				val=true;

			} 
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return val;
	}
	
	
	
	
	
	public static void changePassword(String username, String password) {

		try {
			Connection connection = DBConnection.getConnection();

			String update = "UPDATE users SET password=? WHERE username=?";

			PreparedStatement ps = connection.prepareStatement(update);
			ps.setString(1, password);
			ps.setString(2, username);

			ps.executeUpdate();
			connection.close();
			

		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	public static void editProfile(Account account, String username) throws SQLException{
		
		Connection con = DBConnection.getConnection();

		try {

			String update = "UPDATE users SET fName=?,lName=?,email=?,dob=?,phone=?,recoveryEmail=? WHERE username=?";

			PreparedStatement ps = con.prepareStatement(update);

			ps.setString(1, account.getFirstName());
			ps.setString(2, account.getLastName());
			ps.setString(3, account.getEmail());
			ps.setString(4, account.getDob());
			ps.setString(5, account.getPhone());
			ps.setString(6, account.getRecoveryEmail());
			ps.setString(7, username);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public static void deleteUserTables(String username, Goal goal) {
		
		try {
			Connection connection = DBConnection.getConnection();

			String update = "DROP TABLE IF EXISTS "+username+"_complex_carbs,"+username+"_exercise,"
			+username+"_fats,"+username+"_fruits,"+username+"_simple_carbs,"
			+username+"_"+goal.getDiet()+","+username+"_vegetables";

			PreparedStatement ps = connection.prepareStatement(update);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void deleteGoal(String username) {
		
		try {
			Connection connection = DBConnection.getConnection();

			String update = "DELETE FROM goal WHERE username=?";

			PreparedStatement ps = connection.prepareStatement(update);
			ps.setString(1, username);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void deleteAccount(String username) {
		
		try {
			Connection connection = DBConnection.getConnection();

			String update = "DELETE FROM users WHERE username=?";

			PreparedStatement ps = connection.prepareStatement(update);
			ps.setString(1, username);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
}
