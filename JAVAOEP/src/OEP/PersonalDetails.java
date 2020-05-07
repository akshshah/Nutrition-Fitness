package OEP;


import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/PersonalDetails")
public class PersonalDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	static Connection con = null;
    
    public PersonalDetails() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			con = DatabaseConnection.initializeDatabase();
			Statement st = con.createStatement();
			String q_select = "Select * from personal";
			ResultSet rs = st.executeQuery(q_select);
			
			while(rs.next()) {
				System.out.println("Name " + rs.getString(1) + " weight " + rs.getInt(3) + " height " + rs.getInt(2) + " age " + rs.getInt(4) );
			}
			
			if(request.getParameter("height").equals("") || request.getParameter("weight").equals("") || 
					request.getParameter("age").equals("")) {
				
				request.setAttribute("emptyMessage", "Please enter all of the fields!! ");
				request.getRequestDispatcher("Welcome2.jsp").forward(request, response);
			}else {
			
				int height = Integer.parseInt(request.getParameter("height"));
				int weight = Integer.parseInt(request.getParameter("weight"));
				int age = Integer.parseInt(request.getParameter("age"));
				Personal person = new Personal();
				System.out.println("User2 " + request.getParameter("user"));
				person.setUsername(request.getParameter("user"));
				person.setHeight(height);
				person.setWeight(weight);
				person.setAge(age);
				float height_meter = (float)height/100;
				float bmi = weight/(height_meter * height_meter);
				System.out.println("bmi " + bmi);
				person.setBMI(bmi);
				
				request.setAttribute("person", person);
				request.getRequestDispatcher("Information.jsp").forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}


}
