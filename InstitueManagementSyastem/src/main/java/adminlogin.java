

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import bean.adminbean;
import dao.admindao;

@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public adminlogin() {
        super();
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
        String username = request.getParameter("name");
        String password = request.getParameter("pass");
        adminbean ab = new adminbean();
        ab.setName(request.getParameter("name"));
        ab.setPass(request.getParameter("pass"));
//        System.out.println(ab.getName());
		if(admindao.vlaidateadmin(ab)) {
            HttpSession session = request.getSession();
             session.setAttribute("username",username);
            response.sendRedirect("Admin/admindashboard.jsp");
		}
		else {
				out.print("Incorrect Username or Password");
            response.sendRedirect("adminlogin.jsp");
		}
	}

}
