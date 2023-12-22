

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.contactdao;
import dao.eventdao;

public class viewenquiery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public viewenquiery() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		contactdao ed = new contactdao();
		int Status = ed.viewd(Integer.parseInt(request.getParameter("id")));
		
		if (Status>0) {
			response.sendRedirect("Admin/showenquiery.jsp");
		}
	}


//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		
//		
//	}

}
