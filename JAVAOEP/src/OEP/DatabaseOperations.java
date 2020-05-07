package OEP;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DatabaseOperations {
	
	public DatabaseOperations() {
		// TODO Auto-generated constructor stub
	}

	public int insertUser(User u){
		int status = 0;
		try{
			Connection con = DatabaseConnection.initializeDatabase();
			PreparedStatement ps = con.prepareStatement("Insert into user values(?,?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			status = ps.executeUpdate();
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public User getUser(String name, String pass) {
		User user = new User();
		try{
			Connection con = DatabaseConnection.initializeDatabase();
			PreparedStatement ps = con.prepareStatement("Select * from user where Username=? and Password=?");
			ps.setString(1, name);
			ps.setString(2, pass);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				user.setUsername(rs.getString(1));
				user.setPassword(rs.getString(2));
				user.setEmail(rs.getString(3));
			}
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		return user;
	}
	
	public int insertPersonalInfo(Personal p) {
		int status = 0;
		try {
			Connection con = DatabaseConnection.initializeDatabase();
			
			PreparedStatement ps = con.prepareStatement("Insert into personal values(?,?,?,?,?,?)");
			ps.setString(1, p.getUsername());
			ps.setInt(2, p.getHeight());
			ps.setInt(3, p.getWeight());
			ps.setInt(4, p.getAge());
			ps.setFloat(5, p.getBMI());
			ps.setString(6, p.getGoal());
			status = ps.executeUpdate();
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public Personal getPersonalData(String username) {
		Personal p = new Personal();
		int flag = 0;
		try {
			Connection con = DatabaseConnection.initializeDatabase();
			PreparedStatement ps = con.prepareStatement("Select * from personal where username=? ");
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				p.setUsername(rs.getString(1));
				p.setHeight(rs.getInt(2));
				p.setWeight(rs.getInt(3));
				p.setAge(rs.getInt(4));
				p.setBMI(rs.getFloat(5));
				p.setGoal(rs.getString(6));
				flag = 1;
			}
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		if(flag == 1) {
			return p;
		}else {
			return null;
		}
	}
	
	public int legsWorkout(Legs l,String type) throws Exception{
		int status = 0;
		Connection con = null;
		if(type.equals("Submit")) {
			con = DatabaseConnection.getMuscleWorkoutDatabase();		
		}else {
			con = DatabaseConnection.getFatWorkoutDatabase();
		}
			
		PreparedStatement ps = con.prepareStatement("Insert into monday values(?,?,?,?,?,?,?,?)");
			ps.setString(1, l.getUsername());
			ps.setInt(2, l.getWeek());
			ps.setString(3, l.getSquats());
			ps.setString(4, l.getStepUp());
			ps.setString(5, l.getLegPress());
			ps.setString(6, l.getExtension());
			ps.setString(7, l.getLegCurl());
			ps.setString(8, l.getStandingCalf());
			status = ps.executeUpdate();
			con.close();
		
		return status;
	}

	public int cardioWorkout(Cardio c,String type,String day) throws Exception{
		int status = 0;
		Connection con = null;
		PreparedStatement ps = null;
		if(type.equals("Submit")) {
			con = DatabaseConnection.getMuscleWorkoutDatabase();		
		}else {
			con = DatabaseConnection.getFatWorkoutDatabase();
		}
		
		if(day.equals("Saturday")) {
			ps = con.prepareStatement("Insert into saturday values(?,?,?,?)");
		}
		else if(day.equals("Thursday")) {
			ps = con.prepareStatement("Insert into thursday values(?,?,?,?)");
		}
		else if(day.equals("Tuesday")) {
			ps = con.prepareStatement("Insert into tuesday values(?,?,?,?)");
		}
		else if(day.equals("Wednesday")) {
			ps = con.prepareStatement("Insert into wednesday values(?,?,?,?)");
		}
			ps.setString(1, c.getUsername());
			ps.setInt(2, c.getWeek());
			ps.setString(3, c.getCardio());
			ps.setString(4, c.getAbs());
			status = ps.executeUpdate();
			con.close();
		
		return status;
	}
	
	public int backWorkout(Back b,String type) throws Exception{
		int status = 0;
		Connection con = null;
		PreparedStatement ps = null;
		if(type.equals("Submit")) {
			con = DatabaseConnection.getMuscleWorkoutDatabase();	
			ps = con.prepareStatement("Insert into tuesday values(?,?,?,?,?,?,?,?,?)");
		}else {
			con = DatabaseConnection.getFatWorkoutDatabase();
			ps = con.prepareStatement("Insert into wednesday values(?,?,?,?,?,?,?,?,?)");
		}
			ps.setString(1, b.getUsername());
			ps.setInt(2, b.getWeek());
			ps.setString(3, b.getPullUps());
			ps.setString(4, b.getMidRow());
			ps.setString(5, b.getHighRow());
			ps.setString(6, b.getBentOver());
			ps.setString(7, b.getShrugs());
			ps.setString(8, b.getReverseFly());
			ps.setString(9, b.getBicepCurl());
			status = ps.executeUpdate();
			con.close();
		
		return status;
	}
	
	public int CSTWorkout(CST c,String type) throws Exception{
		int status = 0;
		Connection con = null;
		PreparedStatement ps = null;
		if(type.equals("Submit")) {
			con = DatabaseConnection.getMuscleWorkoutDatabase();	
			ps = con.prepareStatement("Insert into thursday values(?,?,?,?,?,?,?,?,?,?)");
		}else {
			con = DatabaseConnection.getFatWorkoutDatabase();
			ps = con.prepareStatement("Insert into friday values(?,?,?,?,?,?,?,?,?,?)");
		}
			ps.setString(1, c.getUsername());
			ps.setInt(2, c.getWeek());
			ps.setString(3, c.getFlatPress());
			ps.setString(4, c.getInclinePress());
			ps.setString(5, c.getChestPress());
			ps.setString(6, c.getChestFly());
			ps.setString(7, c.getHeadPress());
			ps.setString(8, c.getLateral());
			ps.setString(9, c.getFrontCable());
			ps.setString(10, c.getTricepPush());
			status = ps.executeUpdate();
			con.close();
		
		return status;
	}
	
	public int gluteusWorkout(Gluteus g,String type) throws Exception{
		int status = 0;
		Connection con = null;
		PreparedStatement ps = null;
		if(type.equals("Submit")) {
			con = DatabaseConnection.getMuscleWorkoutDatabase();	
			ps = con.prepareStatement("Insert into friday values(?,?,?,?,?,?,?,?)");
		}
			ps.setString(1, g.getUsername());
			ps.setInt(2, g.getWeek());
			ps.setString(3, g.getSumoSquats());
			ps.setString(4, g.getLunges());
			ps.setString(5, g.getStiffLeg());
			ps.setString(6, g.getHipTrust());
			ps.setString(7, g.getCurl());
			ps.setString(8, g.getSeatedCalf());
			
			status = ps.executeUpdate();
			con.close();
		
		return status;
	}
	
	public int insertStatus(Completion com){
		int status = 0;
		try{
			Connection con = DatabaseConnection.initializeDatabase();
			PreparedStatement ps = con.prepareStatement("Insert into status values(?,?,?,?,?)");
			ps.setString(1, com.getUsername());
			ps.setDouble(2, com.getPerNutrition());
			ps.setDouble(3, com.getPerWorkout());
			ps.setInt(4, com.getNutritionTasks());
			ps.setInt(5, com.getWorkoutTasks());
			status = ps.executeUpdate();
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public Completion getStatus(String name) {
		Completion com = new Completion();
		try{
			Connection con = DatabaseConnection.initializeDatabase();
			PreparedStatement ps = con.prepareStatement("Select * from status where Username=?");
			ps.setString(1, name);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				com.setUsername(rs.getString(1));
				com.setPerNutrition(rs.getDouble(2));
				com.setPerWorkout(rs.getDouble(3));
				com.setNutritionTasks(rs.getInt(4));
				com.setWorkoutTasks(rs.getInt(5));
			}
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		return com;
	}
	
	public int updateWorkoutStatus(String name,int tasks ,double per){
		int status = 0;
		try{
			Connection con = DatabaseConnection.initializeDatabase();
			PreparedStatement ps = con.prepareStatement("Update status set Workout = ?, WTasks = ?  where username = ?");
			ps.setDouble(1, per);
			ps.setInt(2, tasks);
			ps.setString(3, name);
			status = ps.executeUpdate();
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public int insertMeal(Meal m){
		int status = 0;
		try{
			Connection con = DatabaseConnection.getNutritionDatabase();
			PreparedStatement ps = con.prepareStatement("Insert into nutrition values(?,?,?,?,?,?,?,?)");
			ps.setString(1, m.getUsername());
			ps.setInt(2, m.getWeek());
			ps.setString(3, m.getDay());
			ps.setString(4, m.getBreakfast());
			ps.setString(5, m.getLunch());
			ps.setString(6, m.getSnack());
			ps.setString(7, m.getDinner());
			ps.setString(8, m.getPostWorkout());
			status = ps.executeUpdate();
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public int updateNutritionStatus(String name,int tasks ,double per){
		int status = 0;
		try{
			Connection con = DatabaseConnection.initializeDatabase();
			PreparedStatement ps = con.prepareStatement("Update status set Nutrition = ?, NTasks = ?  where username = ?");
			ps.setDouble(1, per);
			ps.setInt(2, tasks);
			ps.setString(3, name);
			status = ps.executeUpdate();
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}

}
