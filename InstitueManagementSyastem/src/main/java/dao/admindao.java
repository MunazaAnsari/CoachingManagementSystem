package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.adminbean;
import bean.studentbean;

public class admindao {
	
	
	public static Connection connect () {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/instituemanagement" , "root", "");
//			System.out.println(con);			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con ;
	}
	
	public static boolean vlaidateadmin(adminbean ab) {
		Connection con = connect();
		boolean status = false ;
		
		try {
			PreparedStatement st = con.prepareStatement("SELECT * FROM admin WHERE name =? and pass= ? ");
			st.setString(1, ab.getName());
			st.setString(2, ab.getPass());
			
			ResultSet rs = st.executeQuery();
			status=rs.next();			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	public static List <studentbean> Show()
	{
	
			Connection con=connect();
			List<studentbean> list=new ArrayList<>();
			
			
		    try {
		    	Statement st =  con.createStatement();
				ResultSet r= st.executeQuery("select * from student where sdelete=1 and  sapprove=0");
				while(r.next())
				{
					studentbean ub=new studentbean();
					ub.setScourse(r.getString("Scourse"));
					ub.setSname(r.getString("sname"));
					ub.setSemial(r.getString("semail"));
					ub.setScontact(r.getLong("scontact"));
					ub.setSid(r.getInt("sid"));
					list.add(ub);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return  list;
		}
	
	public int aprovestudent(int id) {
		Connection con = connect();
		int status = 0 ;
		
		try {
			PreparedStatement st = con.prepareStatement("update student set sapprove=1 where sid = " +id);
						status=		st.executeUpdate()	;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	public int deletestudent(int id) {
		Connection con = connect();
		int status = 0 ;
		
		try {
			PreparedStatement st = con.prepareStatement("update student set sdelete = 0 where sid = " +id);
						status=		st.executeUpdate()	;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}
	
	public static List <studentbean> Showstudents()
	{
	
			Connection con=connect();
			List<studentbean> list=new ArrayList<>();
			
			
		    try {
		    	Statement st =  con.createStatement();
				ResultSet r= st.executeQuery("select * from student where sdelete=1 and  sapprove=1 " );
				while(r.next())
				{
					studentbean ub=new studentbean();
					ub.setScourse(r.getString("Scourse"));
					ub.setSname(r.getString("sname"));
					ub.setSemial(r.getString("semail"));
					ub.setScontact(r.getLong("scontact"));
					ub.setSid(r.getInt("sid"));
					ub.setSaddress(r.getString("saddress"));
					ub.setSdob(r.getString("sdob"));
					ub.setSfpaid(r.getInt("sfpaid"));
					ub.setSfpending( r.getInt("sftotal") - r.getInt("sfpaid")  );
					ub.setSftotal(r.getInt("sftotal"));
					ub.setSgender(r.getInt("gender"));
					ub.setSpin(r.getInt("spin"));
					list.add(ub);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return  list;
		}
	
	public  static studentbean getperson (int id ) {
		studentbean ub = new studentbean();
		Connection con =connect ();
		Statement st;
		try {
			st = con.createStatement();
			
			ub.setSid(id);
			ResultSet r = st.executeQuery("Select * from student where sid = " + id );
			while (r.next()) {
				
			
				ub.setScourse(r.getString("Scourse"));
				ub.setSname(r.getString("sname"));
				ub.setSemial(r.getString("semail"));
				ub.setScontact(r.getLong("scontact"));
				ub.setSaddress(r.getString("saddress"));
				ub.setSdob(r.getString("sdob"));
				ub.setSfpaid(r.getInt("sfpaid"));
				ub.setSfpending(r.getInt("sfpending"));
				ub.setSftotal(r.getInt("sftotal"));
				ub.setSgender(r.getInt("gender"));
				ub.setSpin(r.getInt("spin"));
				
//				System.out.println(p.getDob());
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return ub ;
		
	}
	
	

}
