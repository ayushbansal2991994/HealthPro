package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import exercise.ChangeExercise;
import exercise.GiveRecommendationExercise;

import bean.Goal;

public class ExerciseDAO {

	public static void createTablesForUserExercise(Goal goal) throws SQLException {
		
Connection con = DBConnection.getConnection();
		
		try {

			String exercise = "CREATE TABLE "+goal.getUsername()+"_exercise (id varchar(50),chest varchar(50),shoulder varchar(50),tricep varchar(50),back varchar(50),bicep varchar(50),legs varchar(50),abs varchar(50),want varchar(50),dontwant varchar(50),diff varchar(50))";

			Statement ps =  con.createStatement();
			
			ps.executeUpdate(exercise);
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public static void addValuesFromExercise(Goal goal)throws SQLException {
		
		int count=0;
		
		Connection connection = DBConnection.getConnection();
		
		ArrayList<String> chest=new ArrayList<String>(); 
		ArrayList<String> shoulder=new ArrayList<String>(); 
		ArrayList<String> tricep=new ArrayList<String>(); 
		ArrayList<String> back=new ArrayList<String>(); 
		ArrayList<String> bicep=new ArrayList<String>(); 
		ArrayList<String> legs=new ArrayList<String>(); 
		ArrayList<String> abs=new ArrayList<String>(); 
		
	
	try {
		

		String select = "SELECT * FROM exercise";

		Statement ps = connection.prepareStatement(select);

		ResultSet rs = ps.executeQuery(select);

		while(rs.next()) {
		chest.add(rs.getString("chest"));	
			shoulder.add(rs.getString("shoulder"));
			tricep.add(rs.getString("tricep"));
			back.add(rs.getString("back"));
			bicep.add(rs.getString("bicep"));
			legs.add(rs.getString("legs"));
			abs.add(rs.getString("abs"));
		count++;
		}
		
		String insert = "INSERT INTO "+goal.getUsername()+"_exercise VALUES(?,?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement ps1 = connection.prepareStatement(insert);
			
		for (int i=0;i<count;i++) {
			ps1.setString(1,String.valueOf(i+1));
			ps1.setString(2, chest.get(i));
			ps1.setString(3, shoulder.get(i));
			ps1.setString(4, tricep.get(i));
			ps1.setString(5, back.get(i));
			ps1.setString(6, bicep.get(i));
			ps1.setString(7, legs.get(i));
			ps1.setString(8, abs.get(i));
			ps1.setString(9, "0");
			ps1.setString(10, "0");
			ps1.setString(11, "0");
			ps1.executeUpdate();
		}
	
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		
		
	}

	public static Collection<? extends ArrayList<String>> fetchRecommendedExerciseForUser(
			Goal goal) {
		
		ArrayList<ArrayList<String>> exercise= new ArrayList<ArrayList<String>>();
		ArrayList<String> id=new ArrayList<String>();
		ArrayList<String> chest=new ArrayList<String>();
		ArrayList<String> shoulder=new ArrayList<String>();
		ArrayList<String> tricep=new ArrayList<String>();
		ArrayList<String> back=new ArrayList<String>();
		ArrayList<String> bicep=new ArrayList<String>();
		ArrayList<String> legs=new ArrayList<String>();
		ArrayList<String> abs=new ArrayList<String>();
		ArrayList<String> want=new ArrayList<String>();
		ArrayList<String> dontwant=new ArrayList<String>();
		ArrayList<String> diff=new ArrayList<String>();
		
		
		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT * FROM "+goal.getUsername()+"_exercise";

			PreparedStatement ps = connection.prepareStatement(select);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				id.add(rs.getString("id"));
				chest.add(rs.getString("chest"));
				shoulder.add(rs.getString("shoulder"));
				tricep.add(rs.getString("tricep"));
				back.add(rs.getString("back"));
				bicep.add(rs.getString("bicep"));
				legs.add(rs.getString("legs"));
				abs.add(rs.getString("abs"));
				want.add(rs.getString("want"));
				dontwant.add(rs.getString("dontwant"));
				diff.add(rs.getString("diff"));
			}
			exercise.add(0,id);
			exercise.add(1,chest);
			exercise.add(2,shoulder);
			exercise.add(3,tricep);
			exercise.add(4,back);
			exercise.add(5,bicep);
			exercise.add(6,legs);
			exercise.add(7,abs);
			exercise.add(8,want);
			exercise.add(9,dontwant);
			exercise.add(10,diff);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	
		
		return GiveRecommendationExercise.getExercise(exercise);
		
	}

	public static void changeExercise(Goal goal, String choice,String id) throws SQLException{
		
		
		Connection con= DBConnection.getConnection();
		
		try {

			ArrayList<String> content=new ArrayList<String>();
			
			content.addAll(ExerciseDAO.getWant(id,goal));
			
			
			
			ArrayList<String> content1=new ArrayList<String>();
			content1.addAll(ChangeExercise.changeExercise(content.get(0),content.get(1),content.get(2),choice));
			
			/*for (String string : content1) {
				System.out.println(string);
			}*/
			
			
			String update = "UPDATE "+goal.getUsername()+"_exercise SET want=?,dontwant=?,diff=? WHERE id=?";

			PreparedStatement ps = con.prepareStatement(update);
			
			
			ps.setString(1,content1.get(0) );
			ps.setString(2, content1.get(1));
			ps.setString(3, content1.get(2));
			ps.setString(4, id);
			
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	private static ArrayList<String> getWant(String id, Goal goal) {
		
		ArrayList<String> content = new ArrayList<String>();
		
		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT want,dontwant,diff FROM "+goal.getUsername()+"_exercise WHERE id=?";

			PreparedStatement ps = connection.prepareStatement(select);
			ps.setString(1, id);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				content.add(0,rs.getString("want"));
				content.add(1,rs.getString("dontwant"));
				content.add(2,rs.getString("diff"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return content;
		
	}




	

}
