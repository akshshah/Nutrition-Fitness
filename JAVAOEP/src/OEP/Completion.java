package OEP;

public class Completion {

	private String username;
	private int workoutTasks;
	private int nutritionTasks;
	private double perWorkout;
	private double perNutrition;
	
	public Completion() {
		// TODO Auto-generated constructor stub
	}
	
	public Completion(String username, int workoutTasks, int nutritionTasks, double perWorkout, double perNutrition) {
		super();
		this.username = username;
		this.workoutTasks = workoutTasks;
		this.nutritionTasks = nutritionTasks;
		this.perWorkout = perWorkout;
		this.perNutrition = perNutrition;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getWorkoutTasks() {
		return workoutTasks;
	}
	public void setWorkoutTasks(int workoutTasks) {
		this.workoutTasks = workoutTasks;
	}
	public int getNutritionTasks() {
		return nutritionTasks;
	}
	public void setNutritionTasks(int nutritionTasks) {
		this.nutritionTasks = nutritionTasks;
	}
	public double getPerWorkout() {
		return perWorkout;
	}
	public void setPerWorkout(double perWorkout) {
		this.perWorkout = perWorkout;
	}
	public double getPerNutrition() {
		return perNutrition;
	}
	public void setPerNutrition(double perNutrition) {
		this.perNutrition = perNutrition;
	}
	
	
}
