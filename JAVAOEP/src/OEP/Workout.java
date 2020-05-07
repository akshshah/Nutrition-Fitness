package OEP;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Workout")
public class Workout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Workout() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String submitType = request.getParameter("submit");
		String name = request.getParameter("username");
		int week = Integer.parseInt(request.getParameter("week"));
		String day = request.getParameter("day");
		DatabaseOperations dataOp = new DatabaseOperations();
		Completion com = dataOp.getStatus(name);
		System.out.println("Tasks " + com.getWorkoutTasks());
		int count = 0;
		int tasks = com.getWorkoutTasks();
		double per;
			
		if(day.equals("Monday"))
		{	
			Legs l = new Legs();
			l.setUsername(name);
			l.setWeek(week);
			l.setSquats(request.getParameter("squats"));
			l.setStepUp(request.getParameter("stepup"));
			l.setExtension(request.getParameter("extension"));
			l.setLegPress(request.getParameter("legpress"));
			l.setLegCurl(request.getParameter("curl"));
			l.setStandingCalf(request.getParameter("calf"));
			if(l.getSquats().equals("Yes")) {
				count++;
			}
			if(l.getStepUp().equals("Yes")) {
				count++;
			}
			if(l.getExtension().equals("Yes")) {
				count++;
			}
			if(l.getLegPress().equals("Yes")) {
				count++;
			}
			if(l.getLegCurl().equals("Yes")) {
				count++;
			}
			if(l.getStandingCalf().equals("Yes")) {
				count++;
			}
			int x;
			try {
				x = dataOp.legsWorkout(l, submitType);
				System.out.println(x);
			} catch (Exception e) {
				e.printStackTrace();
			}			 
		}
		else if(day.equals("Saturday"))
		{
			Cardio c = new Cardio();
			c.setUsername(name);
			c.setWeek(week);
			c.setCardio(request.getParameter("cardio"));
			c.setAbs(request.getParameter("abs"));
			if(c.getCardio().equals("Yes")) {
				count++;
			}
			if(c.getAbs().equals("Yes")) {
				count++;
			}
			try {
				int x = dataOp.cardioWorkout(c, submitType, day);
				System.out.println(x);
			} catch (Exception e) {
				e.printStackTrace();				
			}
		}
		else if((submitType.equals("Submit") && day.equals("Tuesday"))  ||  
				(submitType.equals("Done") && day.equals("Wednesday")) )
		{
			Back b = new Back();
			b.setUsername(name);
			b.setWeek(week);
			b.setPullUps(request.getParameter("pullups"));
			b.setMidRow(request.getParameter("midrow"));
			b.setHighRow(request.getParameter("highrow"));
			b.setBentOver(request.getParameter("bentover"));
			b.setShrugs(request.getParameter("shrugs"));
			b.setReverseFly(request.getParameter("reverse"));
			b.setBicepCurl(request.getParameter("bicep"));
			if(b.getPullUps().equals("Yes")) {
				count++;
			}
			if(b.getMidRow().equals("Yes")) {
				count++;
			}
			if(b.getHighRow().equals("Yes")) {
				count++;
			}
			if(b.getBentOver().equals("Yes")) {
				count++;
			}
			if(b.getShrugs().equals("Yes")) {
				count++;
			}
			if(b.getReverseFly().equals("Yes")) {
				count++;
			}
			if(b.getBicepCurl().equals("Yes")) {
				count++;
			}
			try {
				int x = dataOp.backWorkout(b, submitType);
				System.out.println(x);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if( (submitType.equals("Submit") && day.equals("Wednesday"))  ||  
				(submitType.equals("Done") && day.equals("Tuesday")) || 
				(submitType.equals("Done") && day.equals("Thursday")) )
		{
			Cardio c = new Cardio();
			c.setUsername(name);
			c.setWeek(week);
			c.setCardio(request.getParameter("cardio"));
			c.setAbs(request.getParameter("abs"));
			if(c.getCardio().equals("Yes")) {
				count++;
			}
			if(c.getAbs().equals("Yes")) {
				count++;
			}
			try {
				int x = dataOp.cardioWorkout(c, submitType, day);
				System.out.println(x);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if( (submitType.equals("Submit") && day.equals("Thursday"))  ||  
				(submitType.equals("Done") && day.equals("Friday")) )
		{
			CST c = new CST();
			c.setUsername(name);
			c.setWeek(week);
			c.setFlatPress(request.getParameter("flatpress"));
			c.setInclinePress(request.getParameter("inclinepress"));
			c.setChestPress(request.getParameter("chestpress"));
			c.setChestFly(request.getParameter("chestfly"));
			c.setHeadPress(request.getParameter("headpress"));
			c.setLateral(request.getParameter("lateral"));
			c.setFrontCable(request.getParameter("frontcable"));
			c.setTricepPush(request.getParameter("triceppush"));
			if(c.getFlatPress().equals("Yes")) {
				count++;
			}
			if(c.getInclinePress().equals("Yes")) {
				count++;
			}
			if(c.getChestPress().equals("Yes")) {
				count++;
			}
			if(c.getChestFly().equals("Yes")) {
				count++;
			}
			if(c.getHeadPress().equals("Yes")) {
				count++;
			}
			if(c.getLateral().equals("Yes")) {
				count++;
			}
			if(c.getFrontCable().equals("Yes")) {
				count++;
			}
			if(c.getTricepPush().equals("Yes")) {
				count++;
			}
			try {
				int x = dataOp.CSTWorkout(c, submitType);
				System.out.println(x);
			} catch (Exception e) {
				e.printStackTrace();
			}	
		}
		else if( submitType.equals("Submit") && day.equals("Friday")  )
		{
			Gluteus g = new Gluteus();
			g.setUsername(name);
			g.setWeek(week);
			g.setSumoSquats(request.getParameter("sumosquats"));
			g.setLunges(request.getParameter("lunges"));
			g.setStiffLeg(request.getParameter("stiffleg"));
			g.setHipTrust(request.getParameter("hipthrust"));
			g.setCurl(request.getParameter("curl"));
			g.setSeatedCalf(request.getParameter("calf"));
			if(g.getSumoSquats().equals("Yes")) {
				count++;
			}
			if(g.getLunges().equals("Yes")) {
				count++;
			}
			if(g.getStiffLeg().equals("Yes")) {
				count++;
			}
			if(g.getHipTrust().equals("Yes")) {
				count++;
			}
			if(g.getCurl().equals("Yes")) {
				count++;
			}
			if(g.getSeatedCalf().equals("Yes")) {
				count++;
			}
			try {
				int x = dataOp.gluteusWorkout(g, submitType);
				System.out.println(x);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		tasks = tasks + count;
		if(submitType.equals("Submit")) {
			per = (double)( (tasks*100.0)/124.0 );
		}else {
			per = (double)( (tasks*100.0)/108.0 );
		}
		
		per = Double.parseDouble(String.format("%.2f", per));
	
		dataOp.updateWorkoutStatus(name,tasks ,per);
		
		request.setAttribute("username", name);
		request.setAttribute("workout", per);
		request.setAttribute("nutrition", com.getPerNutrition());
		request.getRequestDispatcher("MainPage.jsp").forward(request, response);
	}

}
