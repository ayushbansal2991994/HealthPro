package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Exercise;
import bean.Supplement;


public class AdminDAO {

	public static boolean checkAlreadyExistComplexCarb(String complexC) {
		
		boolean val=false;

		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT * FROM complex_carbs WHERE complexC=?";

			PreparedStatement ps = connection.prepareStatement(select);
			ps.setString(1, complexC);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				val=true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return val;
	}

	public static void addComplexC(String complexC, String complexCVal) throws SQLException {

		Connection con = DBConnection.getConnection();

		try {

			String insert = "INSERT INTO complex_carbs VALUES(?,?)";

			PreparedStatement ps = con.prepareStatement(insert);

			ps.setString(1, complexC);
			ps.setString(2, complexCVal);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static boolean checkAlreadyExistFruits(String fruits) {
		
		
		boolean val=false;

		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT * FROM fruits WHERE fruits=?";

			PreparedStatement ps = connection.prepareStatement(select);
			ps.setString(1, fruits);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				val=true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return val;
		
	}

	public static void addFruits(String fruits) throws SQLException {
		
		Connection con = DBConnection.getConnection();

		try {

			String insert = "INSERT INTO fruits VALUES(?)";

			PreparedStatement ps = con.prepareStatement(insert);

			ps.setString(1, fruits);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static boolean checkAlreadyExistFats(String healthyF) {
		boolean val=false;

		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT * FROM fats WHERE healthyF=?";

			PreparedStatement ps = connection.prepareStatement(select);
			ps.setString(1, healthyF);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				val=true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return val;
	}

	public static void addFats(String healthyF, String healthyFVal) throws SQLException {
		
		Connection con = DBConnection.getConnection();

		try {

			String insert = "INSERT INTO fats VALUES(?,?)";

			PreparedStatement ps = con.prepareStatement(insert);

			ps.setString(1,healthyF );
			ps.setString(2, healthyFVal);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static boolean checkAlreadyExistNonVegProtein(String nvegP) {
		boolean val=false;

		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT * FROM nonveg_protein WHERE nvegP=?";

			PreparedStatement ps = connection.prepareStatement(select);
			ps.setString(1, nvegP);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				val=true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return val;
	}

	public static void addNonVegProtein(String nvegP, String nvegPVal) throws SQLException {
		Connection con = DBConnection.getConnection();

		try {

			String insert = "INSERT INTO nonveg_protein VALUES(?,?)";

			PreparedStatement ps = con.prepareStatement(insert);

			ps.setString(1,nvegP );
			ps.setString(2, nvegPVal);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public static boolean checkAlreadyExistSimpleCarb(String simpleC) {
		boolean val=false;

		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT * FROM simple_carbs WHERE simpleC=?";

			PreparedStatement ps = connection.prepareStatement(select);
			ps.setString(1, simpleC);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				val=true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return val;
	}

	public static void addSimpleC(String simpleC, String simpleCVal) throws SQLException {
		Connection con = DBConnection.getConnection();

		try {

			String insert = "INSERT INTO simple_carbs VALUES(?,?)";

			PreparedStatement ps = con.prepareStatement(insert);

			ps.setString(1, simpleC);
			ps.setString(2, simpleCVal);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		
	}

	
	public static boolean checkAlreadyExistVegetable(String vegetables) {
		boolean val=false;

		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT * FROM vegetables WHERE vegetables=?";

			PreparedStatement ps = connection.prepareStatement(select);
			ps.setString(1, vegetables);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				val=true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return val;
	}

	public static void addVegetables(String vegetables) throws SQLException {
		
		Connection con = DBConnection.getConnection();

		try {

			String insert = "INSERT INTO vegetables VALUES(?)";

			PreparedStatement ps = con.prepareStatement(insert);

			ps.setString(1, vegetables);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	
	public static boolean checkAlreadyExistVegProtein(String vegP) {
		boolean val=false;
		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT * FROM veg_protein WHERE vegP=?";

			PreparedStatement ps = connection.prepareStatement(select);
			ps.setString(1, vegP);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				val=true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return val;
	}

	public static void addVegProtein(String vegP, String vegPVal) throws SQLException {
		Connection con = DBConnection.getConnection();

		try {

			String insert = "INSERT INTO veg_protein VALUES(?,?)";

			PreparedStatement ps = con.prepareStatement(insert);

			ps.setString(1,vegP );
			ps.setString(2, vegPVal);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public static void updateComplexC(String complexC, String complexCVal) throws SQLException {
		
		Connection con = DBConnection.getConnection();

		try {

			String update = "UPDATE complex_carbs SET complexCVal=? WHERE complexC=?";

			PreparedStatement ps = con.prepareStatement(update);

			ps.setString(1, complexCVal);
			ps.setString(2, complexC);
			
			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public static void editFats(String healthyF, String healthyFVal) throws SQLException {
		Connection con = DBConnection.getConnection();

		try {

			String update = "UPDATE fats SET healthyFVal=? WHERE healthyF=?";

			PreparedStatement ps = con.prepareStatement(update);

			ps.setString(1, healthyFVal);
			ps.setString(2, healthyF);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public static void editNonVegProtein(String nvegP, String nvegPVal) throws SQLException {
		Connection con = DBConnection.getConnection();

		try {

			String update = "UPDATE nonveg_protein SET nvegPVal=? WHERE nvegP=?";

			PreparedStatement ps = con.prepareStatement(update);

			ps.setString(1, nvegPVal);
			ps.setString(2, nvegP);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public static void editSimpleC(String simpleC, String simpleCVal) throws SQLException {
		Connection con = DBConnection.getConnection();

		try {

			String update = "UPDATE simple_carbs SET simpleCVal=? WHERE simpleC=?";

			PreparedStatement ps = con.prepareStatement(update);

			ps.setString(1, simpleCVal);
			ps.setString(2, simpleC);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void editVegProtein(String vegP, String vegPVal) throws SQLException {
		Connection con = DBConnection.getConnection();

		try {

			String update = "UPDATE veg_protein SET vegPVal=? WHERE vegP=?";

			PreparedStatement ps = con.prepareStatement(update);

			ps.setString(1, vegPVal);
			ps.setString(2, vegP);

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public static void deleteComplexCarb(String complexC) {
		try {
			Connection connection = DBConnection.getConnection();

			String update = "DELETE FROM complex_carbs WHERE complexC=?";

			PreparedStatement ps = connection.prepareStatement(update);
			ps.setString(1, complexC);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void deleteFruits(String fruits) {
		try {
			Connection connection = DBConnection.getConnection();

			String update = "DELETE FROM fruits WHERE fruits=?";

			PreparedStatement ps = connection.prepareStatement(update);
			ps.setString(1, fruits);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void deleteHealthyFats(String healthyF) {
		try {
			Connection connection = DBConnection.getConnection();

			String update = "DELETE FROM fats WHERE healthyF=?";

			PreparedStatement ps = connection.prepareStatement(update);
			ps.setString(1, healthyF);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void deleteNonVegProtein(String nvegP) {
		try {
			Connection connection = DBConnection.getConnection();

			String update = "DELETE FROM nonveg_protein WHERE nvegP=?";

			PreparedStatement ps = connection.prepareStatement(update);
			ps.setString(1, nvegP);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void deleteSimpleCarbs(String simpleC) {
		try {
			Connection connection = DBConnection.getConnection();

			String update = "DELETE FROM simple_carbs WHERE simpleC=?";

			PreparedStatement ps = connection.prepareStatement(update);
			ps.setString(1, simpleC);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void deleteVegetable(String vegetables) {
		try {
			Connection connection = DBConnection.getConnection();

			String update = "DELETE FROM vegetables WHERE vegetables=?";

			PreparedStatement ps = connection.prepareStatement(update);
			ps.setString(1, vegetables);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void deleteVegProtein(String vegP) {
		try {
			Connection connection = DBConnection.getConnection();

			String update = "DELETE FROM veg_protein WHERE vegP=?";

			PreparedStatement ps = connection.prepareStatement(update);
			ps.setString(1, vegP);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public static void addExercise(Exercise exercise) {
		
		
		
		try {
			
			Connection con = DBConnection.getConnection();

			String insert = "INSERT INTO exercise VALUES(?,?,?,?,?,?,?)";

			PreparedStatement ps = con.prepareStatement(insert);

			ps.setString(1, exercise.getChest());
			ps.setString(2, exercise.getShoulder());
			ps.setString(3,exercise.getTricep() );
			ps.setString(4,exercise.getBack() );
			ps.setString(5,exercise.getBicep());
			ps.setString(6,exercise.getLegs() );
			ps.setString(7, exercise.getAbs());
			

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public static void addSupplement(Supplement supp) {

	
		
		try {
			Connection con = DBConnection.getConnection();
			String insert = "INSERT INTO supplement VALUES(?,?,?)";

			PreparedStatement ps = con.prepareStatement(insert);

			ps.setString(1, supp.getFat_loss());
			ps.setString(2, supp.getMaintain());
			ps.setString(3,supp.getGain_weight() );
			

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	

	
	
}
