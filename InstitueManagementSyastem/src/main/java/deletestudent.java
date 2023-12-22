

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import bean.studentbean;
import dao.admindao;
import dao.studentdao;


public class deletestudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public deletestudent() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		admindao ud = new admindao();
		studentbean ub = new studentbean();
		int id = Integer.parseInt(request.getParameter(("sid")));
		ub.setSid(Integer.parseInt(request.getParameter(("sid"))));
		int status = ud.deletestudent(id);
		if(status >0) {
			response.sendRedirect("Admin/approvestudent.jsp");
		}
		
	
	}


//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	}

}
