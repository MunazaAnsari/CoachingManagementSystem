

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import bean.studentbean;
import dao.studentdao;


public class courseselection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public courseselection() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		

		studentbean ub = new studentbean();
		
		ub.setSemial(request.getParameter("email"));
		
		ub = studentdao.getperson(ub.getSemial());
		
		if(ub.getScourse().equalsIgnoreCase("FullStack Java")){
			
			response.sendRedirect("Student/javacourse.jsp?email="+ub.getSemial());
		}
		
		else if(ub.getScourse().equalsIgnoreCase("FullStack DotNet")) {
			
			response.sendRedirect("Student/dotnetcourse.jsp?email="+ub.getSemial());
			
		}
		
		else if(ub.getScourse().equalsIgnoreCase("MERN Stack")) {
			
			response.sendRedirect("Student/merncourse.jsp?email="+ub.getSemial());
			
		}
		
		
		
		
		
	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
