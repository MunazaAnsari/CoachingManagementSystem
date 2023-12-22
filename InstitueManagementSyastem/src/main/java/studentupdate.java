

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import bean.studentbean;
import dao.studentdao;


public class studentupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public studentupdate() {
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
		
		ub.setScourse(request.getParameter("course"));
		
		ub.setSid(Integer.parseInt(request.getParameter("sid")));
		ub.setSaddress(request.getParameter("address"));
		ub.setSdob(request.getParameter("dob"));
		ub.setSfpaid(Integer.parseInt(request.getParameter("sfpaid")));
		ub.setSfpending(Integer.parseInt(request.getParameter("sftotal")) - Integer.parseInt(request.getParameter("sfpaid"))  );
		ub.setSftotal(Integer.parseInt(request.getParameter("sftotal")));
//		ub.setSgender(Integer.parseInt(request.getParameter("gender")));
		ub.setSpin(Integer.parseInt(request.getParameter("pincode")));
		
		int status = ud.updatestudent(ub);
		if (status >0) {
			
	response.sendRedirect("Admin/showstudents.jsp");
			
		}
		else {
			
			pw.print(" Failed to  Update Data ");

		
	}
		
	}

}
