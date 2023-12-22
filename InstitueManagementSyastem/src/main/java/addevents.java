

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import bean.eventbean;
import dao.eventdao;

public class addevents extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public addevents() {
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
		
		eventbean eb = new eventbean();
		eventdao ed = new eventdao();
		
		eb.setEname(request.getParameter("name"));
		eb.setEdeescription(request.getParameter("description"));
		eb.setEdate(request.getParameter("date"));
		
		int status = ed.Insertdata(eb);
		if(status >0) {
			response.sendRedirect("Admin/showevents.jsp");
		}
		else {
			pw.print("failed");
		}
		
	}

}
