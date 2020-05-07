package OEP;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseConnection {
	
	public static Connection initializeDatabase() throws Exception {
		
	  	final String url = "jdbc:mysql://localhost:3306/logindb?" + "autoReconnect=true&useSSL=false";
		final String username = "root";
		final String password = "123akshshah";

		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(url,username,password);
		
		return connection;
		
	}
	public static Connection getMuscleWorkoutDatabase() throws Exception {
		
	  	final String url = "jdbc:mysql://localhost:3306/muscleworkout?" + "autoReconnect=true&useSSL=false";
		final String username = "root";
		final String password = "123akshshah";

		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(url,username,password);
		
		return connection;
		
	}
	public static Connection getFatWorkoutDatabase() throws Exception {
		
	  	final String url = "jdbc:mysql://localhost:3306/fatworkout?" + "autoReconnect=true&useSSL=false";
		final String username = "root";
		final String password = "123akshshah";

		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(url,username,password);
		
		return connection;
		
	}
	
	public static Connection getNutritionDatabase() throws Exception {
		
	  	final String url = "jdbc:mysql://localhost:3306/nutritiondb?" + "autoReconnect=true&useSSL=false";
		final String username = "root";
		final String password = "123akshshah";

		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(url,username,password);
		
		return connection;
		
	}
}
