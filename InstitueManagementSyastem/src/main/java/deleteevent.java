

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import bean.eventbean;
import dao.eventdao;


public class deleteevent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public deleteevent() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		eventdao ed = new eventdao();
		int Status = ed.deleteevent(Integer.parseInt(request.getParameter("id")));
		
		if (Status>0) {
			response.sendRedirect("Admin/showevents.jsp");
		}
		
	}

//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//	
//		
//	}

}
