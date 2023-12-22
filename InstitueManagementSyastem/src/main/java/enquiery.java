

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import bean.contactbean;
import bean.studentbean;
import dao.contactdao;
import dao.studentdao;


public class enquiery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public enquiery() {
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
		
		contactdao ud = new contactdao();
		contactbean ub = new contactbean();
		
		ub.setName(request.getParameter("name"));
		ub.setEmail(request.getParameter("email"));
//		System.out.println(ub.getSname());
		ub.setContact(Long.parseLong(request.getParameter("contact")));
		ub.setSubject(request.getParameter("subject"));
		ub.setDescripton(request.getParameter("description"));
//		System.out.println(ub.getSname());
		int status = ud.Insertdata(ub);
		if(status >=1) {
			
			response.sendRedirect("index.jsp");
			
		}
		else {
			System.out.println("failed");
			pw.print("failed to register");
		
		
	}
	}

}
