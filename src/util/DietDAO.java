package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import diet.GiveProb;
import diet.GiveRecommendedDiet;
import bean.Goal;

public class DietDAO {

	
public static void createTableForUserDiet(Goal goal) {
		
		;
		
		try {
			Connection con = DBConnection.getConnection();
			
			String newtable = "CREATE TABLE "+goal.getUsername()+"_complex_carbs (complex_carbs varchar(50),prob varchar(50))";
			String newtable1 = "CREATE TABLE "+goal.getUsername()+"_fats (fats varchar(50),prob varchar(50))";
			String newtable2 = "CREATE TABLE "+goal.getUsername()+"_fruits (fruits varchar(50),prob varchar(50))";
			String newtable3 = "CREATE TABLE "+goal.getUsername()+"_simple_carbs (simple_carbs varchar(50),prob varchar(50))";
			String newtable4 = "CREATE TABLE "+goal.getUsername()+"_vegetables (vegetables varchar(50),prob varchar(50))";
			String newtable5 = "CREATE TABLE "+goal.getUsername()+"_"+goal.getDiet()+"("+goal.getDiet()+" varchar(50),prob varchar(50))";
		

			Statement ps =  con.createStatement();
			
			ps.executeUpdate(newtable);
			ps.executeUpdate(newtable1);
			ps.executeUpdate(newtable2);
			ps.executeUpdate(newtable3);
			ps.executeUpdate(newtable4);
			ps.executeUpdate(newtable5);
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
	}

public static void addValuesFromComplexCarbs(Goal goal) {
		
	//Connection connection = DBConnection.getConnection();
		ArrayList<String> list= new ArrayList<String>();
	
	try {
		
		Connection connection = DBConnection.getConnection();
		String select = "SELECT complexC FROM complex_carbs";

		Statement ps = connection.prepareStatement(select);

		ResultSet rs = ps.executeQuery(select);

		while(rs.next()) {

			list.add(rs.getString("complexC"));
		}
		
		String insert = "INSERT INTO "+goal.getUsername()+"_complex_carbs VALUES(?,?)";

		PreparedStatement ps1 = connection.prepareStatement(insert);
		for (String j : list) {
			ps1.setString(1,j);
			ps1.setString(2, "1");
			ps1.executeUpdate();
		}
		
		
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
}

public static void addValuesFromSimpleCarbs(Goal goal) {
	//Connection connection = DBConnection.getConnection();
	ArrayList<String> list= new ArrayList<String>();

try {
	Connection connection = DBConnection.getConnection();

	String select = "SELECT simpleC FROM simple_carbs";

	Statement ps = connection.prepareStatement(select);

	ResultSet rs = ps.executeQuery(select);

	while(rs.next()) {

		list.add(rs.getString("simpleC"));
	}
	
	String insert = "INSERT INTO "+goal.getUsername()+"_simple_carbs VALUES(?,?)";

	PreparedStatement ps1 = connection.prepareStatement(insert);
	for (String j : list) {
		ps1.setString(1,j);
		ps1.setString(2, "1");
		ps1.executeUpdate();
	}
	
} catch (Exception e) {
	e.printStackTrace();
}
	
}

public static void addValuesFromFats(Goal goal) {
	//Connection connection = DBConnection.getConnection();
	ArrayList<String> list= new ArrayList<String>();

try {
	Connection connection = DBConnection.getConnection();

	String select = "SELECT healthyF FROM fats";

	Statement ps = connection.prepareStatement(select);

	ResultSet rs = ps.executeQuery(select);

	while(rs.next()) {

		list.add(rs.getString("healthyF"));
	}
	
	String insert = "INSERT INTO "+goal.getUsername()+"_fats VALUES(?,?)";

	PreparedStatement ps1 = connection.prepareStatement(insert);
	for (String j : list) {
		ps1.setString(1,j);
		ps1.setString(2, "1");
		ps1.executeUpdate();
	}
	
	
	
	
} catch (Exception e) {
	e.printStackTrace();
}
	
}

public static void addValuesFromVegetables(Goal goal) {
	//Connection connection = DBConnection.getConnection();
	ArrayList<String> list= new ArrayList<String>();

try {
	Connection connection = DBConnection.getConnection();

	String select = "SELECT vegetables FROM vegetables";

	Statement ps = connection.prepareStatement(select);

	ResultSet rs = ps.executeQuery(select);

	while(rs.next()) {

		list.add(rs.getString("vegetables"));
	}
	
	String insert = "INSERT INTO "+goal.getUsername()+"_vegetables VALUES(?,?)";

	PreparedStatement ps1 = connection.prepareStatement(insert);
	for (String j : list) {
		ps1.setString(1,j);
		ps1.setString(2, "1");
		ps1.executeUpdate();
	}
	
	
} catch (Exception e) {
	e.printStackTrace();
}
	
}

public static void addValuesFromFruits(Goal goal) throws SQLException {
	Connection connection = DBConnection.getConnection();
	ArrayList<String> list= new ArrayList<String>();

try {
	

	String select = "SELECT fruits FROM fruits";

	Statement ps = connection.prepareStatement(select);

	ResultSet rs = ps.executeQuery(select);

	while(rs.next()) {

		list.add(rs.getString("fruits"));
	}
	
	String insert = "INSERT INTO "+goal.getUsername()+"_fruits VALUES(?,?)";

	PreparedStatement ps1 = connection.prepareStatement(insert);
	for (String j : list) {
		ps1.setString(1,j);
		ps1.setString(2, "1");
		ps1.executeUpdate();
	}
	
	
	
	
} catch (Exception e) {
	e.printStackTrace();
}
	
}

public static void addValuesFromVegP(Goal goal) throws SQLException {
	Connection connection = DBConnection.getConnection();
	ArrayList<String> list= new ArrayList<String>();

try {
	

	String select = "SELECT vegP FROM veg_protein";

	Statement ps = connection.prepareStatement(select);

	ResultSet rs = ps.executeQuery(select);

	while(rs.next()) {

		list.add(rs.getString("vegP"));
	}
	
	String insert = "INSERT INTO "+goal.getUsername()+"_"+goal.getDiet()+" VALUES(?,?)";

	PreparedStatement ps1 = connection.prepareStatement(insert);
	for (String j : list) {
		ps1.setString(1,j);
		ps1.setString(2, "1");
		ps1.executeUpdate();
	}
	
	
	
	
} catch (Exception e) {
	e.printStackTrace();
}
	
}

public static void addValuesFromNVegP(Goal goal) throws SQLException {
	Connection connection = DBConnection.getConnection();
	ArrayList<String> list= new ArrayList<String>();

try {
	

	String select = "SELECT nvegP FROM nonveg_protein";

	Statement ps = connection.prepareStatement(select);

	ResultSet rs = ps.executeQuery(select);

	while(rs.next()) {

		list.add(rs.getString("nvegP"));
	}
	
	String insert = "INSERT INTO "+goal.getUsername()+"_"+goal.getDiet()+" VALUES(?,?)";

	PreparedStatement ps1 = connection.prepareStatement(insert);
	for (String j : list) {
		ps1.setString(1,j);
		ps1.setString(2, "1");
		ps1.executeUpdate();
	}
	
	
	
	
} catch (Exception e) {
	e.printStackTrace();
}
	
}

public static Collection<? extends String> fetchProtein(Goal goal) {
	
		ArrayList<String> list1=new ArrayList<String>();
		ArrayList<String> list2=new ArrayList<String>();
		
	try {
		Connection connection = DBConnection.getConnection();

		String select = "SELECT * FROM "+goal.getUsername()+"_"+goal.getDiet()+" ";

		PreparedStatement ps = connection.prepareStatement(select);

		ResultSet rs = ps.executeQuery();

		while (rs.next()) {

			list1.add(rs.getString(1));
			list2.add(rs.getString(2));
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	
	return GiveRecommendedDiet.giveProtein(list1,list2);
}

public static Collection<? extends String> fetchSimpleCarbs(Goal goal) {
	
	ArrayList<String> list1=new ArrayList<String>();
	ArrayList<String> list2=new ArrayList<String>();
	
try {
	Connection connection = DBConnection.getConnection();

	String select = "SELECT * FROM "+goal.getUsername()+"_simple_carbs ";

	PreparedStatement ps = connection.prepareStatement(select);

	ResultSet rs = ps.executeQuery();

	while (rs.next()) {

		list1.add(rs.getString(1));
		list2.add(rs.getString(2));
	}
} catch (Exception e) {
	e.printStackTrace();
}



return GiveRecommendedDiet.giveSimpleCarbs(list1,list2);
}

public static Collection<? extends String> fetchFats(Goal goal) {
	
	ArrayList<String> list1=new ArrayList<String>();
	ArrayList<String> list2=new ArrayList<String>();
	
try {
	Connection connection = DBConnection.getConnection();

	String select = "SELECT * FROM "+goal.getUsername()+"_fats";

	PreparedStatement ps = connection.prepareStatement(select);

	ResultSet rs = ps.executeQuery();

	while (rs.next()) {

		list1.add(rs.getString(1));
		list2.add(rs.getString(2));
	}
} catch (Exception e) {
	e.printStackTrace();
}



return GiveRecommendedDiet.giveFats(list1,list2);
}

public static Collection<? extends String> fetchComplexCarbs(Goal goal) {
	
	ArrayList<String> list1=new ArrayList<String>();
	ArrayList<String> list2=new ArrayList<String>();
	
try {
	Connection connection = DBConnection.getConnection();

	String select = "SELECT * FROM "+goal.getUsername()+"_complex_carbs";

	PreparedStatement ps = connection.prepareStatement(select);

	ResultSet rs = ps.executeQuery();

	while (rs.next()) {

		list1.add(rs.getString(1));
		list2.add(rs.getString(2));
	}
} catch (Exception e) {
	e.printStackTrace();
}



return GiveRecommendedDiet.giveComplexCarbs(list1,list2);
}

public static Collection<? extends String> fetchFruits(Goal goal) {
	
	ArrayList<String> list1=new ArrayList<String>();
	ArrayList<String> list2=new ArrayList<String>();
	
try {
	Connection connection = DBConnection.getConnection();

	String select = "SELECT * FROM "+goal.getUsername()+"_fruits";

	PreparedStatement ps = connection.prepareStatement(select);

	ResultSet rs = ps.executeQuery();

	while (rs.next()) {

		list1.add(rs.getString(1));
		list2.add(rs.getString(2));
	}
} catch (Exception e) {
	e.printStackTrace();
}



return GiveRecommendedDiet.giveFruits(list1,list2);
}

public static Collection<? extends String> fetchVegetables(Goal goal) {
	
	ArrayList<String> list1=new ArrayList<String>();
	ArrayList<String> list2=new ArrayList<String>();
	
try {
	Connection connection = DBConnection.getConnection();

	String select = "SELECT * FROM "+goal.getUsername()+"_vegetables";

	PreparedStatement ps = connection.prepareStatement(select);

	ResultSet rs = ps.executeQuery();

	while (rs.next()) {

		list1.add(rs.getString(1));
		list2.add(rs.getString(2));
	}
} catch (Exception e) {
	e.printStackTrace();
}



return GiveRecommendedDiet.giveVegetables(list1,list2);
}

public static void changeProb(String val, String nextElement, Goal goal) throws SQLException {
	
	Connection con= DBConnection.getConnection();
	
	try {

		String p=DietDAO.getProb(val,nextElement,goal);
		
		double d=GiveProb.giveProb(Double.parseDouble(p));
		
		String update = "UPDATE "+goal.getUsername()+"_"+nextElement+" SET prob=? WHERE "+nextElement+"=?";

		PreparedStatement ps = con.prepareStatement(update);
		
		
		ps.setString(1,String.valueOf(d) );
		ps.setString(2, val);

		ps.executeUpdate();

	} catch (SQLException e) {
		e.printStackTrace();
	}
}

private static String getProb(String val, String nextElement, Goal goal) {
	
	String s = null;
	try {
		Connection connection = DBConnection.getConnection();

		String select = "SELECT prob FROM "+goal.getUsername()+"_"+nextElement+" WHERE "+nextElement+"=?";

		PreparedStatement ps = connection.prepareStatement(select);
		ps.setString(1, val);

		ResultSet rs = ps.executeQuery();

		if (rs.next()) {

		s=rs.getString("prob");
			
		
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return s;

	
}


}
