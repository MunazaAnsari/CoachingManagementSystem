

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


import bean.studentbean;
import dao.studentdao;

@WebServlet("/studentregister")
public class studentregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public studentregister() {
        super();
        // TODO Auto-generated constructor stub
    }


//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		studentdao ud = new studentdao();
		studentbean ub = new studentbean();
		
		ub.setSname(request.getParameter("name"));
		ub.setSemial(request.getParameter("email"));
//		System.out.println(ub.getSname());
		ub.setScontact(Long.parseLong(request.getParameter("contact")));
		ub.setSpass(request.getParameter("pass"));
		ub.setScourse(request.getParameter("course"));
//		System.out.println(ub.getSname());
		int status = ud.Insertdata(ub);
		if(status >=1) {
			
			response.sendRedirect("index.jsp");
			
		}
		else {
			System.out.println("failed");
			pw.print("failed to register");
//			response.sendRedirect("register.jsp");
		
	}
	}

}
