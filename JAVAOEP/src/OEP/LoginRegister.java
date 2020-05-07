package OEP;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	static Connection con = null;
	
    public LoginRegister() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			
			con = DatabaseConnection.initializeDatabase();
			
			Statement st = con.createStatement();
			String q_select = "Select * from user";
			ResultSet rs = st.executeQuery(q_select);
			while(rs.next()) {
				System.out.println("Name " + rs.getString(1) + "Pass " + rs.getString(2) + "Email " + rs.getString(3) );
			}
			
			String uname = request.getParameter("username");
			String pass = request.getParameter("password");
			String submitType = request.getParameter("submit");
			HttpSession session = request.getSession(true);
			
			DatabaseOperations dbop = new DatabaseOperations(); 
			User user =  dbop.getUser(uname, pass);
			
			/*if(submitType.equals("Login") && (user != null) && (user.getUsername()!=null)) {
				request.setAttribute("message", user.getUsername());
				request.getRequestDispatcher("Welcome.jsp").forward(request, response);*/
			
			if( submitType.equals("Login") && (uname != "") && (pass != "") ) {
				
				String strQuery= "select * from user where username='"+uname+"' and  password='"+pass+"'";
					  st = con.createStatement();
					 ResultSet rs2 = st.executeQuery(strQuery);
				int count=0;
				while(rs2.next()) {
					session.setAttribute("username", rs2.getString(1));
					count++;
				}
				if(count>0) {
					Personal p1 = dbop.getPersonalData(uname);
					Completion com = dbop.getStatus(uname);
					System.out.println("P1 " + p1);
					if(p1 != null) {
						System.out.println("com " + com.getPerWorkout());
						request.setAttribute("username", p1.getUsername());
						request.setAttribute("workout", com.getPerWorkout());
						request.setAttribute("nutrition", com.getPerNutrition());
						request.getRequestDispatcher("MainPage.jsp").forward(request,response);
					}else {
						response.sendRedirect("Welcome2.jsp");
					}
				}else {
					request.setAttribute("message", "User does not exist , please register");
					request.getRequestDispatcher("Login.jsp").forward(request, response);
				}
				
			}else if(submitType.equals("Register")){
				
				if( uname.equals("")  || pass.equals("") ) {
					request.setAttribute("emptyMessage", "Please fill all of the fields!! ");
					request.getRequestDispatcher("Register.jsp").forward(request, response);
				}else {
					if(request.getParameter("password").equals(request.getParameter("password2"))) {
						user.setUsername(uname);
						user.setEmail(request.getParameter("email"));
						user.setPassword(pass);
						int x = dbop.insertUser(user);
						System.out.println(x);
						request.setAttribute("successMessage", "Registration Successful! , Do Login.");
						request.getRequestDispatcher("Login.jsp").forward(request, response);
					}else {
						request.setAttribute("passMessage", "Passwords do not match!! ");
						request.getRequestDispatcher("Register.jsp").forward(request, response);
					}
				}
				
			}else {
				request.setAttribute("message", "User does not exist , please register");
				request.getRequestDispatcher("Login.jsp").forward(request, response);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	
}
