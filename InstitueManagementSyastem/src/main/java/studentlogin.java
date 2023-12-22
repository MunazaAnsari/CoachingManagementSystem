

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import bean.adminbean;
import bean.studentbean;
import dao.admindao;
import dao.studentdao;


public class studentlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public studentlogin() {
        super();
        // TODO Auto-generated constructor stub
    }


//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		response.setContentType("text/html"); 
		  
	        // Get the print writer object to write into the response 
	        PrintWriter out = response.getWriter(); 
	  
	        // Get the session object 
	      
		
//		admindao ad = new admindao();
     String username = request.getParameter("email");
     String password = request.getParameter("password");
     studentbean ab = new studentbean();
     ab.setSname(request.getParameter("email"));
     ab.setSpass(request.getParameter("password"));
//     System.out.println(ab.getName());
		if(studentdao.vlaidateadmin(ab)) {
         HttpSession session = request.getSession();
          session.setAttribute("username",username);
         response.sendRedirect("Student/studentdashboard.jsp?email="+username);
		}
		else {
				out.print("Incorrect Username or Password");
         response.sendRedirect("studentlogin.jsp");
		}
	}

}
