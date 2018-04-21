package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Goal;

public class GoalDAO {

	public static boolean checkAlreadyExistInGoals(String username) {
		
		Goal goal = getGoal(username);
		if (goal.getUsername() != null)
			return true;
		else
		return false;	
	}

	public static void addGoal(Goal goal) throws SQLException{
		Connection con = DBConnection.getConnection();

		try {

			String insert = "INSERT INTO goal VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement ps = con.prepareStatement(insert);

			ps.setString(1, goal.getUsername());
			ps.setString(2, goal.getCurrent_goal());
			ps.setString(3,goal.getHeight());
			ps.setString(4, goal.getWeight());
			ps.setString(5,goal.getAge());
			ps.setString(6, goal.getSex());
			ps.setString(7, goal.getBmi());
			ps.setString(8, goal.getBmr());
			ps.setString(9, goal.getProtein());
			ps.setString(10, goal.getCarbs());
			ps.setString(11, goal.getFats());
			ps.setString(12, goal.getDiet());
			
			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public static Goal getGoal(String username) {

		Goal goal = new Goal();
		try {
			Connection connection = DBConnection.getConnection();

			String select = "SELECT * FROM goal WHERE username=?";

			PreparedStatement ps = connection.prepareStatement(select);
			ps.setString(1, username);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				goal.setUsername(rs.getString("username"));
				goal.setCurrent_goal(rs.getString("current_goal"));
				goal.setHeight(rs.getString("height"));
				goal.setWeight(rs.getString("weight"));
				goal.setAge(rs.getString("age"));
				goal.setSex(rs.getString("sex"));
				goal.setBmi(rs.getString("bmi"));
				goal.setBmr(rs.getString("bmr"));
				goal.setProtein(rs.getString("protein"));
				goal.setCarbs(rs.getString("carbs"));
				goal.setFats(rs.getString("fats"));
				goal.setDiet(rs.getString("diet"));
			
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return goal;
	}

	public static void updateGoal(Goal goal)throws SQLException {
	
		Connection con = DBConnection.getConnection();

		try {

			String update = "UPDATE goal SET current_goal=?,height=?,weight=?,age=?,sex=?,bmi=?,bmr=?,protein=?,carbs=?,fats=? WHERE username=?";

			PreparedStatement ps = con.prepareStatement(update);

			ps.setString(1, goal.getCurrent_goal());
			ps.setString(2, goal.getHeight());
			ps.setString(3,goal.getWeight());
			ps.setString(4, goal.getAge());
			ps.setString(5, goal.getSex());
			ps.setString(6, goal.getBmi());
			ps.setString(7,goal.getBmr() );
			ps.setString(8, goal.getProtein());
			ps.setString(9, goal.getCarbs());
			ps.setString(10, goal.getFats());
			ps.setString(11, goal.getUsername());

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public static void addDiet(Goal goal) throws SQLException{
		
		Connection con = DBConnection.getConnection();

		try {

			String update = "UPDATE goal SET diet=? WHERE username=?";

			PreparedStatement ps = con.prepareStatement(update);

			ps.setString(1, goal.getDiet());
			ps.setString(2, goal.getUsername());

			ps.executeUpdate();

			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	
}
