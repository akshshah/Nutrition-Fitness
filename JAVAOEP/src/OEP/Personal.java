package OEP;

public class Personal {

	private String username;
	private int height;
	private int weight;
	private int age;
	private float BMI;
	private String goal;
	
	public Personal() {
		// TODO Auto-generated constructor stub
	}
	
	public String getGoal() {
		return goal;
	}
	public void setGoal(String goal) {
		this.goal = goal;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public float getBMI() {
		return BMI;
	}
	public void setBMI(float bMI) {
		BMI = bMI;
	}
}
