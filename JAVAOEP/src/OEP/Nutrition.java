package OEP;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Nutrition")
public class Nutrition extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Nutrition() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name = request.getParameter("username");
		String day = request.getParameter("day");
		System.out.println(day);
		int week = Integer.parseInt(request.getParameter("week"));
		DatabaseOperations dataOp = new DatabaseOperations();
		Completion com = dataOp.getStatus(name);
		System.out.println("Tasks " + com.getNutritionTasks());
		int count = 0;
		int tasks = com.getNutritionTasks();
		double per;
		
		Meal m = new Meal();
		m.setUsername(name);
		m.setWeek(week);
		m.setDay(day);
		m.setBreakfast(request.getParameter("breakfast"));
		m.setLunch(request.getParameter("lunch"));
		m.setSnack(request.getParameter("snack"));
		m.setDinner(request.getParameter("dinner"));
		m.setPostWorkout(request.getParameter("post"));
		
		if(m.getBreakfast().equals("Yes")) {
			count++;
		}
		if(m.getLunch().equals("Yes")) {
			count++;
		}
		if(m.getSnack().equals("Yes")) {
			count++;
		}
		if(m.getDinner().equals("Yes")) {
			count++;
		}
		if(m.getPostWorkout().equals("Yes")) {
			count++;
		}
		
		int x = dataOp.insertMeal(m);
		System.out.println(x);
		
		tasks = tasks + count;
		per = (double)( (tasks*100.0)/120.0 );
		per = Double.parseDouble(String.format("%.2f", per));
		
		dataOp.updateNutritionStatus(name, tasks, per);
		
		request.setAttribute("username", name);
		request.setAttribute("nutrition", per);
		request.setAttribute("workout", com.getPerWorkout());
		request.getRequestDispatcher("MainPage.jsp").forward(request, response);
	}

}
